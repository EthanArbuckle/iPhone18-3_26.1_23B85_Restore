void sub_276D79C64(uint64_t a1, void *a2)
{
  v15 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v6 = v3;
  if (v3 && objc_msgSend_isAnchored(v3, v4, v5) && (objc_msgSend_isHTMLWrap(v6, v7, v8) & 1) == 0 && (objc_msgSend_containsObject_(*(a1 + 32), v9, *(a1 + 32)) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = objc_msgSend_drawable(v6, v10, v11);
    objc_msgSend_addObject_(v12, v14, v13);
  }
}

void sub_276D79D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276D79D50(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  objc_msgSend_autosizeFlags(*(a1 + 888), v4, v5);
  sub_276D7B338(a1);
  sub_276D75BA0(a1, (a1 + 80));
  v6 = sub_276DD2960(a1 + 80);
  v9 = *(objc_msgSend_lineFragmentArray(v6, v7, v8) + 8);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = sub_276DD2960(a1 + 80);
  objc_msgSend_contentBlockBottom(v10, v11, v12);

  v13 = *(a1 + 264);
  v14 = sub_276DD2960(a1 + 80);
  *(a1 + 265) = ((objc_msgSend_layoutResultFlags(v14, v15, v16) >> 8) & 1) != v13;

  operator new();
}

void sub_276D7A7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (STACK[0x408])
  {
    sub_276D5EEA0(STACK[0x408]);
  }

  if (STACK[0x418])
  {
    sub_276D5EEA0(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_276D7AA0C(uint64_t a1)
{
  v2 = sub_276DD2960(a1 + 80);
  v5 = objc_msgSend_range(v2, v3, v4);
  v7 = v6;

  result = objc_msgSend_characterCount(*(a1 + 8), v8, v9);
  if (v5 + v7 < result)
  {

    return sub_276D87910(a1, v11, v12);
  }

  return result;
}

id sub_276D7AA9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (!objc_msgSend_isDrawable(v3, v4, v5) || objc_msgSend_isAnchored(v6, v7, v8))
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSDLayout *TSWPLayoutChore::layoutForInlineAttachment(TSWPDrawableAttachment *__strong, BOOL) const");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 725, 0, "!attachment.isDrawable || attachment.isAnchored");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    v18 = objc_msgSend_drawable(v6, v7, v9);
    if (v18)
    {
      v19 = objc_msgSend_layoutForInlineDrawable_(*(a1 + 888), v17, v18);
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "TSDLayout *TSWPLayoutChore::layoutForInlineAttachment(TSWPDrawableAttachment *__strong, BOOL) const");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v30, 727, 0, "%{public}@ attachment has no drawable", v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      v19 = 0;
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSDLayout *TSWPLayoutChore::layoutForInlineAttachment(TSWPDrawableAttachment *__strong, BOOL) const");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 723, 0, "invalid nil value for '%{public}s'", "attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    v19 = 0;
  }

  return v19;
}

id sub_276D7AD14(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_drawable(v3, v4, v5);

    if (v7)
    {
      goto LABEL_6;
    }

    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "TSDLayout *TSWPLayoutChore::validatedLayoutForAnchoredAttachment(TSWPDrawableAttachment *__strong) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 740, 0, "invalid nil value for '%{public}s'", "attachment.drawable");
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSDLayout *TSWPLayoutChore::validatedLayoutForAnchoredAttachment(TSWPDrawableAttachment *__strong) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v17, v11, v13, 738, 0, "invalid nil value for '%{public}s'", "attachment");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
LABEL_6:
  v20 = *(a1 + 888);
  v21 = objc_msgSend_drawable(v6, v8, v9);
  v23 = objc_msgSend_validatedLayoutForAnchoredDrawable_(v20, v22, v21);

  objc_msgSend_isHTMLWrap(v6, v24, v25);

  return v23;
}

id sub_276D7AEE8(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_msgSend_locale(*(a1 + 16), v2, v3);
  }

  else
  {
    v5 = objc_msgSend_context(*(a1 + 8), v2, v3);
    v8 = objc_msgSend_documentObject(v5, v6, v7);
    v4 = objc_msgSend_typesettingLocale(v8, v9, v10);
  }

  return v4;
}

void sub_276D7AF98(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, void *a5)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = a5;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_willLayoutIntoTarget(v15, v9, v10);
  }

  sub_276D78260(a1, a2, a3, a4, v15, &v18, &v17 + 1, &v17, &v16);
  objc_msgSend_setNeedsDisplay(v15, v11, v12);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_didLayoutIntoTarget(v15, v13, v14);
  }
}

id sub_276D7B078(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 256);
  v5 = *(a1 + 888);
  if (v4)
  {
    v6 = objc_msgSend_columns(v5, a2, a3);
    v8 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, *(a1 + 256) - 1);
  }

  else
  {
    v8 = objc_msgSend_previousTargetLastColumn(v5, a2, a3);
  }

  return v8;
}

void sub_276D7B0FC(uint64_t a1, const char *a2)
{
  v3 = a1 + 80;
  v36 = objc_msgSend_columnMetricsForCharIndex_outRange_(*(a1 + 888), a2, *(a1 + 80), a1 + 192);
  if (!v36)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSWPLayoutChore::pSetUpStateForColumnMetrics()");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 6117, 0, "invalid nil value for '%{public}s'", "newColumnMetrics");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = sub_276DD2970(v3);

  v13 = v36;
  if (v36)
  {
    v14 = v36 == v12;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    sub_276DD2978(v3, v36);
    *(a1 + 272) = 0;
    v15 = sub_276DD2970(v3);

    if (v15)
    {
      objc_msgSend_adjustedInsetsForTarget_(v36, v16, *(a1 + 888));
      *(a1 + 208) = v18;
      *(a1 + 216) = v19;
      *(a1 + 224) = v20;
      *(a1 + 232) = v21;
      v22 = sub_276DD2970(v3);
      *(a1 + 248) = objc_msgSend_columnCount(v22, v23, v24);

      v25 = sub_276DD2970(v3);
      *(a1 + 264) = objc_msgSend_shrinkTextToFit(v25, v26, v27);

      v28 = sub_276DD2970(v3);
      v29 = objc_opt_respondsToSelector();

      v13 = v36;
      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }

      v30 = sub_276DD2970(v3);
      objc_msgSend_textScaleFactor(v30, v31, v32);
      *(a1 + 272) = v33;
    }

    else
    {
      v34 = *(MEMORY[0x277D81428] + 16);
      *(a1 + 208) = *MEMORY[0x277D81428];
      *(a1 + 224) = v34;
      v35 = objc_msgSend_characterCount(*(a1 + 8), v16, v17);
      *(a1 + 192) = 0;
      *(a1 + 200) = v35;
      *(a1 + 248) = 1;
      *(a1 + 264) = 0;
    }

    v13 = v36;
  }

LABEL_12:
  *(a1 + 256) = 0;
}

void sub_276D7B338(uint64_t a1)
{
  if (*(a1 + 56) > 2u)
  {
    v2 = sub_276DD2960(a1 + 80);

    if (v2)
    {
      v6 = sub_276DD2960(a1 + 80);
      objc_msgSend_frameBounds(v6, v3, v4);
      *(a1 + 416) = v5;
    }

    else
    {
      *(a1 + 416) = 0;
    }
  }

  else
  {
    *(a1 + 416) = 0xFFF0000000000000;
  }
}

void sub_276D7B3E4()
{
  v0 = MEMORY[0x28223BE20]();
  v1;
  objc_msgSend_wpKind(*(v0 + 8), v2, v3);
  operator new();
}

void sub_276D7F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  v77 = *(v75 - 168);
  if (v77)
  {
    sub_276D5EEA0(v77);
  }

  _Unwind_Resume(a1);
}

void sub_276D7FC90(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v13 = objc_msgSend_lineFragmentArray(v7, v11, v12);
  v16 = objc_msgSend_storage(v7, v14, v15);
  if (objc_opt_respondsToSelector())
  {
    v213 = objc_msgSend_adornParagraphsForPageView(v10, v17, v18);
  }

  else
  {
    v213 = 0;
  }

  v19 = objc_msgSend_range(v7, v17, v18);
  objc_msgSend_wpBounds(v7, v20, v21);
  v215 = v24;
  v216 = v23;
  v25 = *(MEMORY[0x277CBF3A0] + 8);
  v26 = *(MEMORY[0x277CBF3A0] + 24);
  v226 = *MEMORY[0x277CBF3A0];
  v227 = *(MEMORY[0x277CBF3A0] + 16);
  if (v16)
  {
    objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v16, v22, v19, v9);
  }

  else
  {
    memset(&v248, 0, sizeof(v248));
  }

  v240 = *MEMORY[0x277D81490];
  v238 = *(MEMORY[0x277D81490] + 8);
  memset(v247, 0, 41);
  rect_8 = v16;
  if (TSWPParagraphEnumerator::isFirstParagraph(&v248) || (v213 & 1) == 0)
  {
    v29 = 0;
  }

  else
  {
    TSWPParagraphEnumerator::previous(&v248, &v246);
    sub_276D81CF4(v243, &v246);
    v247[0] = v243[0];
    v247[1] = v243[1];
    v30 = v244;
    v244 = 0;
    v31 = *&v247[2];
    *&v247[2] = v30;

    BYTE8(v247[2]) = v245;
    v29 = TSWPParagraphEnumerator::paragraphStyle(&v246, 0);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v246);
  }

  v214 = objc_msgSend_scaleTextPercent(v7, v27, v28) / 100.0;
  v210 = v10;
  v211 = v9;
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_textScaleFactor(v8, v32, v33);
    v35 = v214;
    if (v34 != 0.0)
    {
      v35 = v34;
    }

    v214 = v35;
  }

  v36 = **v13;
  v229 = (*v13)[1];
  if (v36 == v229)
  {
    v198 = 0;
    v38 = 0;
    BYTE4(v217) = 0;
    v237 = 0;
    v199 = 0;
    v219 = 0.0;
    v220 = 0.0;
    v222 = 0.0;
    rect_16 = v226;
    rect_24 = v227;
    v235 = v25;
    v236 = v26;
    goto LABEL_168;
  }

  v212 = v19;
  v209 = v8;
  v221 = v7;
  v37 = 0;
  v237 = 0;
  v217 = 0;
  v38 = 0;
  v223 = 0;
  v235 = v25;
  v236 = v26;
  rect_16 = v226;
  rect_24 = v227;
  v39 = 0.0;
  v40 = 0.0;
  v219 = 0.0;
  v220 = 0.0;
  v222 = 0.0;
  v224 = 1.0;
  v218 = 0.0;
  v41 = MEMORY[0x277D81490];
  do
  {
    v42 = *v36;
    if (*(*v36 + 24) < 0)
    {
      v42 = v41;
    }

    v44 = *v42;
    v43 = v42[1];
    v45 = rect_8;
    v48 = v44 < v240 || v44 - v240 >= v238;
    v228 = v43;
    v239 = v45;
    if (!v48)
    {
      v54 = v45;
LABEL_31:
      v55 = v38;
LABEL_99:

      v38 = v55;
      goto LABEL_100;
    }

    if (v43)
    {
      v49 = 1;
    }

    else
    {
      v49 = v44 == 0;
    }

    if (v49 || v44 != objc_msgSend_length(v45, v46, v47))
    {

LABEL_33:
      v56 = TSWPParagraphEnumerator::paragraphTextRange(&v248, v53);
      if (v44 >= &v57[v56] && !TSWPParagraphEnumerator::isLastParagraph(&v248))
      {
        TSWPParagraphEnumerator::operator++(&v248, v57);
        if (v44 != TSWPParagraphEnumerator::paragraphTextRange(&v248, v58))
        {
          v59 = MEMORY[0x277D81150];
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *__strong, NSObject<TSWPColumnMetrics> *__strong, __strong id<TSWPStyleProvider>, __strong id<TSWPLayoutTarget>)");
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 1461, 0, "paragraph enumerator is out of sync with line fragments");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
        }
      }

      v240 = TSWPParagraphEnumerator::paragraphTextRange(&v248, v57);
      v238 = v66;
      v67 = TSWPParagraphEnumerator::paragraphStyle(&v248, 0);
      v68 = v67;
      if (v67 == v29)
      {
        if (*(&v247[1] + 1) != 15 && (BYTE8(v247[1]) & 3) != 0)
        {
          if (v237)
          {
            v249.origin.x = v226;
            v249.size.width = v227;
            v249.origin.y = v25;
            v249.size.height = v26;
            if (CGRectIsEmpty(v249))
            {
              v85 = MEMORY[0x277D81150];
              v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *__strong, NSObject<TSWPColumnMetrics> *__strong, __strong id<TSWPStyleProvider>, __strong id<TSWPLayoutTarget>)");
              v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v89, v86, v88, 1574, 0, "Expected non-empty border rect");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91);
              v41 = MEMORY[0x277D81490];
            }

            if ((BYTE8(v247[1]) & 2) != 0)
            {
              v92 = v222 + v26;
            }

            else
            {
              v92 = v26;
            }

            sub_276D81E94(v221, 2, v247, v38, 0, 0, v226, v25, v227, v92, v220);
            v237 = 0;
            v25 = *(MEMORY[0x277CBF3A0] + 8);
            v54 = v68;
            v55 = v38;
            v26 = *(MEMORY[0x277CBF3A0] + 24);
            v226 = *MEMORY[0x277CBF3A0];
            v227 = *(MEMORY[0x277CBF3A0] + 16);
            goto LABEL_99;
          }

          v237 = 0;
        }

        v54 = v67;
        goto LABEL_31;
      }

      v54 = v67;

      sub_276D81CF4(&v246, &v248);
      v241 = objc_msgSend_tswpNonNullValueForProperty_(v54, v69, 94);
      LOBYTE(v29) = v37;
      objc_opt_class();
      v71 = objc_msgSend_valueForProperty_(v54, v70, 85);
      v72 = TSUCheckedDynamicCast();

      if (v72)
      {
        objc_msgSend_amount(v72, v73, v74);
        v76 = v75;
        v81 = objc_msgSend_mode(v72, v77, v78);
        v82 = v214 * v76;
        if (!v81)
        {
          v82 = v76;
        }

        v224 = v82;
        objc_msgSend_baselineRule(v72, v79, v80);
        v218 = v83;
      }

      else
      {
        v81 = 0;
        v218 = 0.0;
        v224 = 0.0;
      }

      objc_msgSend_floatValueForProperty_(v54, v93, 88);
      v95 = v94;
      v98 = objc_msgSend_scaleTextPercent(v221, v96, v97);
      v99 = sub_276D81D5C(v247, &v246);
      v223 = v81;
      if (v99)
      {
        if ((BYTE8(v247[1]) & 2) != 0)
        {
          v100 = v236;
          if (v37)
          {
            v100 = v222 + v236;
          }

          v236 = v100;
          if (v237)
          {
            v26 = v222 + v26;
          }

LABEL_66:
          if (v29)
          {
            v250.origin.x = rect_16;
            v250.size.width = rect_24;
            v250.origin.y = v235;
            v250.size.height = v236;
            if (CGRectIsEmpty(v250))
            {
              v103 = MEMORY[0x277D81150];
              v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *__strong, NSObject<TSWPColumnMetrics> *__strong, __strong id<TSWPStyleProvider>, __strong id<TSWPLayoutTarget>)");
              v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v107, v104, v106, 1511, 0, "Expected non-empty fill rect");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
            }

            v110 = BYTE4(v217);
            if (!(BYTE4(v217) & 1 | ((v237 & 1) == 0)))
            {
              v251.origin.x = rect_16;
              v251.size.width = rect_24;
              v251.origin.y = v235;
              v251.size.height = v236;
              MinY = CGRectGetMinY(v251);
              v252.origin.x = v226;
              v252.size.width = v227;
              v252.origin.y = v25;
              v252.size.height = v26;
              v110 = MinY != CGRectGetMinY(v252);
            }

            if (v99)
            {
              v112 = v236;
            }

            else
            {
              v112 = v219 + v236;
            }

            sub_276D81E94(v221, 1, v247, v38, v110 & 1, v237 & ~v99 & 1, rect_16, v235, rect_24, v112, v220);
            rect_16 = *MEMORY[0x277CBF3A0];
            rect_24 = *(MEMORY[0x277CBF3A0] + 16);
            v235 = *(MEMORY[0x277CBF3A0] + 8);
            v236 = *(MEMORY[0x277CBF3A0] + 24);
          }

          if (v99)
          {
            if (v237)
            {
              v253.origin.x = v226;
              v253.size.width = v227;
              v253.origin.y = v25;
              v253.size.height = v26;
              if (CGRectIsEmpty(v253))
              {
                v114 = MEMORY[0x277D81150];
                v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *__strong, NSObject<TSWPColumnMetrics> *__strong, __strong id<TSWPStyleProvider>, __strong id<TSWPLayoutTarget>)");
                v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v118, v115, v117, 1524, 0, "Expected non-empty border rect");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120);
              }

              sub_276D81E94(v221, 2, v247, v38, BYTE4(v217) & 1, 0, v226, v25, v227, v26, v220);
              v29 = 0;
              v237 = 0;
              v25 = *(MEMORY[0x277CBF3A0] + 8);
              v26 = *(MEMORY[0x277CBF3A0] + 24);
              v226 = *MEMORY[0x277CBF3A0];
              v227 = *(MEMORY[0x277CBF3A0] + 16);
            }

            else
            {
              v29 = 0;
              v237 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_82;
        }
      }

      else if (*v247 == *&v246.var0 && *(v247 + 1) == *&v246.var1)
      {
        v193 = v38;
        v194 = v241;
        if (v193 | v194)
        {
          v196 = v194;
          recta = v193;
          isEqual = objc_msgSend_isEqual_(v193, v195, v194);

          v29 = v37;
          if ((isEqual & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v29 = v37;
        }

LABEL_82:
        LOBYTE(v217) = sub_276D81D5C(v247, &v246);
        v247[0] = *&v246.var0;
        v247[1] = *&v246.var2;
        objc_storeStrong(&v247[2], v246.var4);
        BYTE8(v247[2]) = v246.var5;
        v55 = v241;

        v121 = v247[0];
        v254.origin.x = sub_276D698EC(*v36, 1);
        Width = CGRectGetWidth(v254);
        v255.origin.x = sub_276D69474(*v36);
        v124 = Width + CGRectGetWidth(v255);
        if (v124 < v215 - *&v121 - *(&v121 + 1))
        {
          v124 = v215 - *&v121 - *(&v121 + 1);
        }

        if (v215 - *&v121 >= v124)
        {
          v40 = v124;
        }

        else
        {
          v40 = v215 - *&v121;
        }

        v39 = v216 + *&v121;
        v222 = 0.0;
        if (*&v247[2] && *(&v247[1] + 1))
        {
          v125 = *&v247[2];
          objc_msgSend_width(v125, v126, v127);
          v129 = v128 * 0.5;

          v130 = v129 + *&v247[1];
          v222 = v129 + *&v247[1];
          if ((BYTE8(v247[1]) & 0xC) != 0)
          {
            v131 = v40 + v130;
            if ((BYTE8(v247[1]) & 4) != 0)
            {
              v39 = v216 + *&v121 - v130;
            }

            else
            {
              v131 = v40;
              v39 = v216 + *&v121;
            }

            if ((BYTE8(v247[1]) & 8) != 0)
            {
              v40 = v130 + v131;
            }

            else
            {
              v40 = v131;
            }
          }

          else
          {
            v39 = v216 + *&v121;
          }
        }

        v37 = v29;
        objc_msgSend_floatValueForProperty_(v54, v123, 99);
        v219 = (v95 * v98) / 100.0;
        v220 = v40 * v132;

        v29 = v54;
        v41 = MEMORY[0x277D81490];
        goto LABEL_99;
      }

LABEL_61:
      if (*(&v247[1] + 1) != 15 && (BYTE8(v247[1]) & 2) != 0)
      {
        v101 = v236;
        if (v29)
        {
          v101 = v222 + v236;
        }

        v236 = v101;
      }

      goto LABEL_66;
    }

    v51 = objc_msgSend_characterAtIndex_(v239, v50, v44 - 1);
    v52 = IsParagraphBreakingCharacter(v51);

    if (v52)
    {
      goto LABEL_33;
    }

LABEL_100:
    v242 = v25;
    if (*(&v247[1] + 1))
    {
      v133 = *&v247[2] == 0;
    }

    else
    {
      v133 = 1;
    }

    if (!v133 || v38 != 0)
    {
      v135 = v40;
      rect = v39;
      v136 = *v36;
      v137 = *(*v36 + 112);
      v138 = *(*v36 + 136);
      v139 = *(*v36 + 152);
      v140 = *(*v36 + 120) + *(*v36 + 144);
      v141 = v138 + v140;
      v142 = 0.0;
      if (v223 <= 1)
      {
        if (v223)
        {
          if (v223 == 1 && v224 > v141)
          {
            v142 = v224 - v141;
          }
        }

        else
        {
          v150 = (v224 + -1.0) * v141;
          if (v224 > 1.0)
          {
            v142 = v150;
          }

          else
          {
            v142 = 0.0;
          }
        }
      }

      else
      {
        switch(v223)
        {
          case 2:
            v142 = (1.0 - v218) * (v224 - v141);
            break;
          case 4:
            v142 = v224;
            break;
          case 5:
            v143 = MEMORY[0x277D81150];
            v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "CGFloat p_extraSpacingForMode(TSWPLineSpacingMode, CGFloat, CGFloat, CGFloat)", v141);
            v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v143, v147, v144, v146, 1166, 0, "Unexpected line spacing mode %ld", 5);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149);
            v136 = *v36;
            break;
        }
      }

      v225 = v26;
      v151 = v135;
      v152 = CGRectGetMinY(*(v136 + 40));
      v153 = *(*v36 + 32);
      v154 = v142 + v139 + v138 + v153;
      v155 = v154 - v152;
      v156 = v152;
      v157 = v154 - v152;
      if (v44 == v240)
      {
        v156 = v152;
        v157 = v154 - v152;
        if (BYTE8(v247[1]))
        {
          if (v140 < v137)
          {
            v140 = v137;
          }

          v156 = v152;
          v157 = v154 - v152;
          if ((v237 & 1) == 0)
          {
            v256.origin.x = rect;
            v256.origin.y = v152;
            v256.size.width = v151;
            v256.size.height = v155;
            v156 = v153 - v140 - v222;
            v157 = CGRectGetMaxY(v256) - v156;
          }
        }
      }

      if (v38)
      {
        v39 = rect;
        v257.origin.x = rect;
        v257.origin.y = v152;
        v257.size.width = v151;
        v257.size.height = v155;
        v25 = v156;
        v40 = v151;
        if (CGRectIsEmpty(v257))
        {
          v159 = MEMORY[0x277D81150];
          v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *__strong, NSObject<TSWPColumnMetrics> *__strong, __strong id<TSWPStyleProvider>, __strong id<TSWPLayoutTarget>)");
          v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v163, v160, v162, 1608, 0, "didn't expect empty line rect");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165);
        }

        if (v37)
        {
          v258.origin.x = rect_16;
          v258.size.width = rect_24;
          v258.origin.y = v235;
          v258.size.height = v236;
          MinX = CGRectGetMinX(v258);
          v259.origin.x = rect;
          v259.origin.y = v152;
          v259.size.width = v151;
          v259.size.height = v155;
          v167 = CGRectGetMinX(v259);
          if (v167 >= MinX)
          {
            v167 = MinX;
          }

          rect_16 = v167;
          v169 = rect_24;
          v168 = v235;
          v170 = v236;
          MaxX = CGRectGetMaxX(*&v167);
          v260.origin.x = rect;
          v260.origin.y = v152;
          v260.size.width = v151;
          v260.size.height = v155;
          v172 = CGRectGetMaxX(v260);
          v261.origin.x = rect;
          v261.origin.y = v152;
          v261.size.width = v40;
          v261.size.height = v155;
          MaxY = CGRectGetMaxY(v261);
          if (MaxX >= v172)
          {
            v174 = MaxX;
          }

          else
          {
            v174 = v172;
          }

          rect_24 = v174 - rect_16;
          v236 = MaxY - v235;
          v37 = 1;
        }

        else
        {
          v37 = 1;
          rect_16 = rect;
          rect_24 = v151;
          v235 = v25;
          v236 = v157;
        }
      }

      else
      {
        v25 = v156;
        v39 = rect;
        v40 = v151;
      }

      if (!*&v247[2] || !*(&v247[1] + 1))
      {
        v25 = v242;
        v26 = v225;
        goto LABEL_161;
      }

      v262.origin.x = v39;
      v262.origin.y = v152;
      v262.size.width = v40;
      v262.size.height = v155;
      if (CGRectIsEmpty(v262))
      {
        v176 = MEMORY[0x277D81150];
        v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, "static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *__strong, NSObject<TSWPColumnMetrics> *__strong, __strong id<TSWPStyleProvider>, __strong id<TSWPLayoutTarget>)");
        v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v180, v177, v179, 1622, 0, "didn't expect empty line rect");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v181, v182);
      }

      if ((v237 & 1) == 0)
      {
        if (v213)
        {
          v192 = (v212 != 0) & (v217 ^ 1);
          goto LABEL_156;
        }

        if (v44 == v212)
        {
          v192 = objc_msgSend_paragraphStartAtCharIndex_(v239, v175, v212) != v212;
LABEL_156:
          BYTE4(v217) = v192;
        }

        else
        {
          BYTE4(v217) = 0;
        }

        v237 = 1;
        v226 = v39;
        v227 = v40;
        v26 = v157;
        goto LABEL_161;
      }

      v263.origin.x = v226;
      v263.size.width = v227;
      v263.origin.y = v242;
      v263.size.height = v225;
      v183 = CGRectGetMinX(v263);
      v264.origin.x = v39;
      v264.origin.y = v152;
      v264.size.width = v40;
      v264.size.height = v155;
      v184 = CGRectGetMinX(v264);
      if (v184 >= v183)
      {
        v184 = v183;
      }

      v226 = v184;
      v185 = v242;
      v186 = v227;
      v187 = v225;
      v188 = CGRectGetMaxX(*&v184);
      v265.origin.x = v39;
      v265.origin.y = v152;
      v265.size.width = v40;
      v265.size.height = v155;
      v189 = CGRectGetMaxX(v265);
      v266.origin.x = v39;
      v266.origin.y = v152;
      v266.size.width = v40;
      v266.size.height = v155;
      v190 = CGRectGetMaxY(v266);
      if (v188 >= v189)
      {
        v191 = v188;
      }

      else
      {
        v191 = v189;
      }

      v227 = v191 - v226;
      v25 = v242;
      v26 = v190 - v242;
      v237 = 1;
    }

LABEL_161:
    v36 += 2;
  }

  while (v36 != v229);
  v198 = v44 + v228 == v238 + v240;
  v7 = v221;
  v8 = v209;
  v199 = v37;
LABEL_168:
  v200 = v199;
  if (v199 & 1) != 0 || (v237)
  {
    if (TSWPParagraphEnumerator::isLastParagraph(&v248))
    {
      v202 = 1;
    }

    else
    {
      v203 = TSWPParagraphEnumerator::operator++(&v248, v201);
      sub_276D81CF4(&v246, v203);
      v202 = sub_276D81D5C(v247, &v246);
    }

    if (v213)
    {
      v204 = v202;
    }

    else
    {
      v204 = v198;
    }

    if (v38 != 0 && (v200 & 1) != 0)
    {
      v267.origin.x = rect_16;
      v267.size.width = rect_24;
      v267.origin.y = v235;
      v267.size.height = v236;
      if (!CGRectIsEmpty(v267))
      {
        v268.origin.x = rect_16;
        v268.size.width = rect_24;
        v268.origin.y = v235;
        v268.size.height = v236;
        if (!CGRectIsNull(v268))
        {
          v269.origin.x = rect_16;
          v269.size.width = rect_24;
          v269.origin.y = v235;
          v269.size.height = v236;
          if (!CGRectIsInfinite(v269))
          {
            if (v198)
            {
              v205 = v219 + v236;
              if (v202)
              {
                v205 = v236;
              }

              if ((BYTE8(v247[1]) & 2) != 0)
              {
                v205 = v222 + v205;
              }

              v236 = v205;
            }

            v206 = BYTE4(v217);
            if (!(BYTE4(v217) & 1 | ((v237 & 1) == 0)))
            {
              v270.origin.x = rect_16;
              v270.size.width = rect_24;
              v270.origin.y = v235;
              v270.size.height = v236;
              v207 = CGRectGetMinY(v270);
              v271.origin.x = v226;
              v271.size.width = v227;
              v271.origin.y = v25;
              v271.size.height = v26;
              v206 = v207 != CGRectGetMinY(v271);
            }

            sub_276D81E94(v7, 1, v247, v38, v206 & 1, v204 ^ 1, rect_16, v235, rect_24, v236, v220);
          }
        }
      }
    }

    if (v237)
    {
      v272.origin.x = v226;
      v272.size.width = v227;
      v272.origin.y = v25;
      v272.size.height = v26;
      if (!CGRectIsEmpty(v272))
      {
        v273.origin.x = v226;
        v273.size.width = v227;
        v273.origin.y = v25;
        v273.size.height = v26;
        if (!CGRectIsNull(v273))
        {
          v274.origin.x = v226;
          v274.size.width = v227;
          v274.origin.y = v25;
          v274.size.height = v26;
          if (!CGRectIsInfinite(v274))
          {
            if (v198)
            {
              v208 = v219 + v26;
              if (v202)
              {
                v208 = v26;
              }

              if ((BYTE8(v247[1]) & 2) != 0)
              {
                v26 = v222 + v208;
              }

              else
              {
                v26 = v208;
              }
            }

            sub_276D81E94(v7, 2, v247, v38, BYTE4(v217) & 1, v204 ^ 1, v226, v25, v227, v26, v220);
          }
        }
      }
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v248);
}

void sub_276D80E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, TSWPParagraphEnumerator *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator((v67 - 240));

  _Unwind_Resume(a1);
}

void sub_276D81034(void *a1, void *a2, void *a3, void *a4)
{
  v36 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_lineFragmentArray(v36, v10, v11);
  v14 = **v12;
  v15 = (*v12)[1];
  if (v14 == v15)
  {
    v17 = 0;
    goto LABEL_19;
  }

  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = MEMORY[0x277CBF398];
  v20 = *MEMORY[0x277CBF398];
  v19 = *(MEMORY[0x277CBF398] + 8);
  v22 = *(MEMORY[0x277CBF398] + 16);
  v21 = *(MEMORY[0x277CBF398] + 24);
  do
  {
    v23 = *(*v14 + 24);
    if ((v23 & 0x80000) != 0)
    {
      objc_msgSend_changeBarRectForLineFragment_layoutTarget_(v36, v13, *v14, v9);
      x = v24;
      y = v26;
      width = v28;
      height = v30;
      v32 = sub_276D84618(*v14);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      *(*v14 + 72) = CGRectUnion(*(*v14 + 72), v40);
      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }

      isEqual = objc_msgSend_isEqual_(v32, v33, v17);
      if (x == v20)
      {
        v35 = isEqual;
      }

      else
      {
        v35 = 0;
      }

      if (v35 != 1)
      {
        sub_276D84680(v36, v7, v17, v9, v20, v19, v22, v21);
LABEL_13:
        v32 = v32;

        v17 = v32;
        goto LABEL_14;
      }

      v38.origin.x = v20;
      v38.origin.y = v19;
      v38.size.width = v22;
      v38.size.height = v21;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v39 = CGRectUnion(v38, v41);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
    }

    else
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_276D84680(v36, v7, v17, v9, v20, v19, v22, v21);
      x = *v18;
      y = v18[1];
      v32 = v17;
      width = v18[2];
      height = v18[3];
      v17 = 0;
    }

LABEL_14:

    v20 = x;
    v19 = y;
    v22 = width;
    v21 = height;
LABEL_15:
    v16 = (v23 >> 19) & 1;
    v14 += 2;
  }

  while (v14 != v15);
  if ((v23 & 0x80000) != 0)
  {
    sub_276D84680(v36, v7, v17, v9, v20, v19, v22, v21);
  }

LABEL_19:
}

void sub_276D812E0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v13 = objc_msgSend_lineFragmentArray(v7, v11, v12);
  for (i = **v13; i != (*v13)[1]; i += 2)
  {
    if ((*(*i + 27) & 0x60) != 0)
    {
      v15 = objc_alloc_init(TSWPCharacterAdornmentState);
      if (objc_opt_respondsToSelector())
      {
        v18 = objc_msgSend_canvas(v10, v16, v17);
        objc_msgSend_isCanvasInteractive(v18, v19, v20);
      }

      if (objc_msgSend_autosizeFlags(v10, v16, v17))
      {
        objc_msgSend_frameBounds(v7, v21, v22);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        if (v7)
        {
          goto LABEL_9;
        }

LABEL_11:
        memset(&v56, 0, sizeof(v56));
      }

      else
      {
        objc_msgSend_position(v10, v21, v22);
        objc_msgSend_currentSize(v10, v33, v34);
        TSURectWithOriginAndSize();
        v26 = v35;
        v28 = v36;
        v30 = v37;
        v32 = v38;
        if (!v7)
        {
          goto LABEL_11;
        }

LABEL_9:
        objc_msgSend_transformToWP(v7, v23, v24);
      }

      v57.origin.x = v26;
      v57.origin.y = v28;
      v57.size.width = v30;
      v57.size.height = v32;
      v58 = CGRectApplyAffineTransform(v57, &v56);
      x = v58.origin.x;
      y = v58.origin.y;
      width = v58.size.width;
      height = v58.size.height;
      v45 = *v13;
      v46 = **v13;
      v47 = v45[1];
      while (v46 != v47)
      {
        v48 = *v46;
        if (*(*v46 + 28))
        {
          sub_276D82FAC(v48, v15, v7, x, y, width, height);
        }

        else
        {
          v49 = sub_276D648E0(v48);
          sub_276D8328C(v49, 0, *v46, v15, v7, x, y, width, height);
          v50 = sub_276D648E8(*v46);
          sub_276D8328C(v50, 1, *v46, v15, v7, x, y, width, height);
          v51 = sub_276D6491C(*v46);
          sub_276D8328C(v51, 2, *v46, v15, v7, x, y, width, height);
        }

        v46 += 2;
      }

      v52 = objc_msgSend_currentAdornmentFill(v15, v39, v40);

      if (v52)
      {
        sub_276D82C5C(v15, v7);
      }

      v55 = objc_msgSend_currentAdornmentStroke(v15, v53, v54, *&v56.a, *&v56.c, *&v56.tx);

      if (v55)
      {
        sub_276D82EF4(v15, v7);
      }

      break;
    }
  }
}

double sub_276D81604(uint64_t a1, uint64_t ***a2, uint64_t ***a3, void *a4, char a5, double a6)
{
  v10 = a4;
  v11 = *MEMORY[0x277CBF398];
  v12 = *(MEMORY[0x277CBF398] + 8);
  v13 = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v15 = **a3;
  v16 = (*a3)[1];
  v18 = **a2;
  v17 = (*a2)[1];
  isEmpty = objc_msgSend_isEmpty(*(a1 + 904), v19, v20);
  v91 = a2;
  v87 = a1;
  v21 = *(a1 + 904);
  v93 = a3;
  v22 = sub_276D6FC80(*a3);
  v26 = objc_msgSend_inclusiveDirtyRangesIntersecting_(v21, v23, v22, v23);
  if (!v26)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "CGRect TSWPLayoutChore::pCompareLineFragments(const line_fragment_array_ptr &, const line_fragment_array_ptr &, TSWPColumn *__strong, CGFloat, TSWPLayoutFlags)");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 6496, 0, "invalid nil value for '%{public}s'", "pertinentDirtyRanges");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v34 = objc_msgSend_superRange(v26, v24, v25);
  range2 = v35;
  v36 = v34;
  IsNull = objc_msgSend_delta(v26, v35, v37);
  v88 = IsNull;
  while (1)
  {
    while (v15 != v16)
    {
      v39 = *v15;
      if (v18 == v17)
      {
        if (v39)
        {
          LODWORD(v45) = (*(v39 + 24) >> 3) & 1;
LABEL_22:
          v51 = sub_276D8AA38(v11, v12, v13, height, *(v39 + 72), *(v39 + 80), *(v39 + 88), *(v39 + 96), IsNull, v10, 1, v45);
LABEL_23:
          v11 = v51;
          v12 = v52;
          v13 = v53;
          height = v54;
          v15 += 2;
        }
      }

      else
      {
        v40 = *v18;
        if (v39)
        {
          v46 = *(v39 + 24);
          v45 = (v46 >> 3) & 1;
          if (!v40)
          {
            goto LABEL_22;
          }

          v47 = *(v40 + 48);
          v48 = *(v39 + 48);
          if (v47 < v48)
          {
            goto LABEL_24;
          }

          if (v47 > v48)
          {
            goto LABEL_21;
          }

          v49 = *(v40 + 40);
          v50 = *(v39 + 40);
          if (v49 < v50)
          {
LABEL_24:
            v41 = sub_276D8AA38(v11, v12, v13, height, *(v40 + 72), *(v40 + 80), *(v40 + 88), *(v40 + 96), IsNull, v10, 1, (v46 >> 3) & 1);
            goto LABEL_12;
          }

          if (v49 > v50)
          {
LABEL_21:
            v51 = sub_276D8AA38(v11, v12, v13, height, *(v39 + 72), *(v39 + 80), *(v39 + 88), *(v39 + 96), IsNull, v10, 1, (v46 >> 3) & 1);
            goto LABEL_23;
          }

          if ((a5 & 0x40) != 0)
          {
            location = sub_276D6BD64(*v15, *v18, 0);
            if (location)
            {
              goto LABEL_40;
            }

            goto LABEL_42;
          }

          v55 = (v46 & 0x8000000000000000) != 0;
          v56 = MEMORY[0x277D81490];
          if (!v55)
          {
            v56 = *v15;
          }

          v85 = *v56;
          if (isEmpty)
          {
            goto LABEL_32;
          }

          v57 = v85.location + v85.length;
          if (v85.location + v85.length >= v36 || v57 > *(v87 + 64))
          {
            if (v57 <= v36 + range2)
            {
              goto LABEL_40;
            }

LABEL_32:
            if (sub_276D6BD64(v39, v40, v88))
            {
              goto LABEL_40;
            }

            v94.location = v36;
            v94.length = range2;
            v59 = NSIntersectionRange(v85, v94);
            location = v59.location;
            if (v59.length)
            {
              v60 = sub_276D8AA38(v11, v12, v13, height, *(v39 + 72), *(v39 + 80), *(v39 + 88), *(v39 + 96), v59.location, v10, 1, v45);
LABEL_41:
              v11 = v60;
              v12 = v61;
              v13 = v62;
              height = v63;
              goto LABEL_42;
            }

            goto LABEL_42;
          }

          location = sub_276D6BD64(v39, v40, 0);
          if (location || !*(v40 + 8) && !*(v39 + 8) && v36 == 0x7FFFFFFFFFFFFFFFLL && !range2)
          {
LABEL_40:
            v95 = CGRectUnion(*(v40 + 72), *(v39 + 72));
            v60 = sub_276D8AA38(v11, v12, v13, height, v95.origin.x, v95.origin.y, v95.size.width, v95.size.height, v64, v10, 1, v45);
            goto LABEL_41;
          }

LABEL_42:
          v96.origin.x = sub_276D8C2E8(location, v40, v39, **v93, v16, v10, v45);
          r2 = v96.size.height;
          x = v96.origin.x;
          y = v96.origin.y;
          width = v96.size.width;
          IsNull = CGRectIsNull(v96);
          v68 = r2;
          if ((IsNull & 1) == 0)
          {
            v97.origin.x = v11;
            v97.origin.y = v12;
            v97.size.width = v13;
            v97.size.height = height;
            v69 = x;
            v70 = y;
            v71 = width;
            v98 = CGRectUnion(v97, *(&v68 - 3));
            v11 = v98.origin.x;
            v12 = v98.origin.y;
            v13 = v98.size.width;
            height = v98.size.height;
          }

          v15 += 2;
LABEL_13:
          v18 += 2;
        }

        else if (v40)
        {
          goto LABEL_11;
        }
      }
    }

    if (v18 == v17)
    {
      break;
    }

    v40 = *v18;
    if (*v18)
    {
LABEL_11:
      v41 = sub_276D8AA38(v11, v12, v13, height, *(v40 + 72), *(v40 + 80), *(v40 + 88), *(v40 + 96), IsNull, v10, 1, 0);
LABEL_12:
      v11 = v41;
      v12 = v42;
      v13 = v43;
      height = v44;
      goto LABEL_13;
    }
  }

  if (!sub_276D6F7D8(*v91) || !sub_276D6F7D8(*v93))
  {
    objc_msgSend_wpBounds(v10, v72, v73);
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v82 = objc_msgSend_contentBlockBottom(v10, v80, v81);
    if (v83 <= a6)
    {
      v83 = a6;
    }

    if (v83 - v77 != 0.0)
    {
      v11 = sub_276D8AA38(v11, v12, v13, height, v75, v77, v79, v83 - v77, v82, v10, 1, 0);
    }
  }

  return v11;
}

uint64_t sub_276D81CF4(uint64_t a1, TSWPParagraphEnumerator *this)
{
  v4 = TSWPParagraphEnumerator::paragraphStyle(this, 0);
  sub_276D861E8(a1, this, v4);

  return a1;
}

uint64_t sub_276D81D5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v4 = *(a1 + 24)) != 0)
  {
    v5 = *(a2 + 32);
    if (v5)
    {
      v6 = *(a2 + 24) == v4;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && (v4 != 15 ? (v7 = (*(a1 + 24) & 3) == 0) : (v7 = 1), v7 && *(a2 + 16) == *(a1 + 16) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a2 + 40) == *(a1 + 40)))
    {
      return sub_276D81E1C(v3, v5) ^ 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return *(a2 + 32) && *(a2 + 24) != 0;
  }
}

uint64_t sub_276D81E1C(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_276D81E94(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  v154[8] = *MEMORY[0x277D85DE8];
  v21 = a1;
  v22 = a4;
  v155.origin.x = a7;
  v155.origin.y = a8;
  v155.size.width = a9;
  v155.size.height = a10;
  if (CGRectIsEmpty(v155))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void addBorderAdornments(TSWPColumn *__strong, TSWPAdornmentRectType, CGRect, const TSWPBorderState &, CGFloat, __strong id, BOOL, BOOL)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1379, 0, "Expected non-empty border rect");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  v156.origin.x = a7;
  v156.origin.y = a8;
  v156.size.width = a9;
  v156.size.height = a10;
  if (!CGRectIsEmpty(v156))
  {
    v31 = *(a3 + 24);
    if (*(a3 + 40) == 1 && v31 == 15)
    {
      v32 = *(a3 + 16);
      if (v32 != 0.0)
      {
        v33 = *(a3 + 32);
        v34 = v22;
        v36 = v33;
        if (a5)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v32;
        }

        if (a6)
        {
          objc_msgSend_bezierPathWithRoundedRect_upperRightRadius_lowerRightRadius_lowerLeftRadius_upperLeftRadius_useLegacyCorners_keepNoOpElements_(MEMORY[0x277D81160], v35, 0, 0, a7, a8, a9, a10, v37, 0.0, 0.0, v37);
        }

        else
        {
          objc_msgSend_bezierPathWithRoundedRect_upperRightRadius_lowerRightRadius_lowerLeftRadius_upperLeftRadius_useLegacyCorners_keepNoOpElements_(MEMORY[0x277D81160], v35, 0, 0, a7, a8, a9, a10, v37, v32, v32, v37);
        }
        v38 = ;
        v41 = v38;
        if ((a5 | a6) == 1 && a2 == 2 && v38)
        {
          v147 = v21;
          v42 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v39, v40);
          v43 = *(MEMORY[0x277CBF348] + 8);
          v48 = objc_msgSend_elementCount(v41, v44, v45);
          if (v48 >= 1)
          {
            v49 = 0;
            while (1)
            {
              v50 = objc_msgSend_elementAtIndex_associatedPoints_(v41, v46, v49, &v149);
              if (!v50)
              {
                goto LABEL_33;
              }

              if (v50 != 1)
              {
                if (v50 == 2)
                {
                  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v42, v46, v47, v152[1], v153, v149, v150, v151, v152[0]);
                  v43 = v153;
                }

                goto LABEL_36;
              }

              v51 = v150;
              if (v43 != v150)
              {
LABEL_34:
                objc_msgSend_lineToPoint_(v42, v46, v47, v149, v150);
                goto LABEL_35;
              }

              if (!a5)
              {
                break;
              }

              v157.origin.x = a7;
              v157.origin.y = a8;
              v157.size.width = a9;
              v157.size.height = a10;
              MinY = CGRectGetMinY(v157);
              if (v51 != MinY && a6 != 0)
              {
                v51 = v150;
LABEL_31:
                v158.origin.x = a7;
                v158.origin.y = a8;
                v158.size.width = a9;
                v158.size.height = a10;
                MinY = CGRectGetMaxY(v158);
              }

              if (v51 != MinY)
              {
                goto LABEL_34;
              }

LABEL_33:
              objc_msgSend_moveToPoint_(v42, v46, v47, v149, v150);
LABEL_35:
              v43 = v150;
LABEL_36:
              if (v48 == ++v49)
              {
                goto LABEL_37;
              }
            }

            if (!a6)
            {
              goto LABEL_34;
            }

            goto LABEL_31;
          }

LABEL_37:
          if (objc_msgSend_isEmpty(v42, v46, v47))
          {
            v21 = v147;
          }

          else
          {
            v91 = v42;

            v21 = v147;
            v41 = v91;
          }
        }

        if (v41)
        {
          v92 = [TSWPAdornmentRect alloc];
          v58 = objc_msgSend_initWithRect_paragraphPath_stroke_fill_type_(v92, v93, v41, v36, v34, a2, a7, a8, a9, a10);
        }

        else
        {
          v58 = 0;
        }

        goto LABEL_73;
      }
    }

    if (a2 == 1)
    {
      v54 = [TSWPAdornmentRect alloc];
      v58 = objc_msgSend_initWithRect_stroke_fill_type_(v54, v55, *(a3 + 32), v22, 1, a7, a8, a9, a10);
      goto LABEL_73;
    }

    if (a5)
    {
      v31 &= ~1uLL;
    }

    v59 = a6 ? v31 & 0xFFFFFFFFFFFFFFFDLL : v31;
    if (v59)
    {
      v60 = *(a3 + 32);
      v63 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v61, v62);
      objc_msgSend_tswpStrokeExtension(v60, v64, v65);
      v145 = v66;
      if (v59 > 0xF)
      {
        goto LABEL_81;
      }

      if (((1 << v59) & 0x111E) != 0)
      {
        v159.origin.x = a7;
        v159.origin.y = a8;
        v159.size.width = a9;
        v159.size.height = a10;
        Width = CGRectGetWidth(v159);
        v160.origin.x = a7;
        v160.origin.y = a8;
        v160.size.width = a9;
        v160.size.height = a10;
        MinX = CGRectGetMinX(v160);
        v161.origin.x = a7;
        v161.origin.y = a8;
        v161.size.width = a9;
        v161.size.height = a10;
        MaxX = CGRectGetMaxX(v161);
        v162.origin.x = a7;
        v162.origin.y = a8;
        v162.size.width = a9;
        v162.size.height = a10;
        v68 = CGRectGetMinY(v162);
        v163.origin.x = a7;
        v163.origin.y = a8;
        v163.size.width = a9;
        v163.size.height = a10;
        MaxY = CGRectGetMaxY(v163);
        v72 = (Width - a11) * 0.5;
        v73 = v72 + MinX;
        v74 = MaxX - v72;
        v75 = v74 - v145;
        v76 = (v73 + v74) * 0.5 + -0.05;
        v77 = v145 + v73 < v75;
        if (v145 + v73 >= v75)
        {
          v75 = v76 + 0.1;
        }

        v144 = v75;
        if (v77)
        {
          v78 = v145 + v73;
        }

        else
        {
          v78 = v76;
        }

        v79 = v145 + v68;
        v80 = MaxY - v145;
        if (v145 + v68 >= MaxY - v145)
        {
          v80 = (v68 + MaxY) * 0.5 + -0.05 + 0.1;
        }

        v142 = v80;
        if (v145 + v68 >= MaxY - v145)
        {
          v79 = (v68 + MaxY) * 0.5 + -0.05;
        }

        v146 = v79;
        if (v59)
        {
          objc_msgSend_moveToPoint_(v63, v69, v70, v78, v68);
          objc_msgSend_lineToPoint_(v63, v81, v82, v144, v68);
        }

        if ((v59 & 8) != 0)
        {
          objc_msgSend_moveToPoint_(v63, v69, v70, MaxX, v146);
          objc_msgSend_lineToPoint_(v63, v83, v84, MaxX, v142);
        }

        if ((v59 & 2) != 0)
        {
          objc_msgSend_moveToPoint_(v63, v69, v70, v78, MaxY);
          objc_msgSend_lineToPoint_(v63, v85, v86, v144, MaxY);
        }

        if ((v59 & 4) != 0)
        {
          objc_msgSend_moveToPoint_(v63, v69, v70, MinX, v142);
          objc_msgSend_lineToPoint_(v63, v87, v88, MinX, v146);
        }

LABEL_66:
        v89 = [TSWPAdornmentRect alloc];
        v58 = objc_msgSend_initWithRect_paragraphPath_stroke_fill_type_(v89, v90, v63, v60, 0, 2, a7, a8, a9, a10);

LABEL_73:
        if (v58)
        {
          v94 = objc_msgSend_paragraphPath(v58, v56, v57);
          v97 = v94;
          if (v94 && objc_msgSend_isEmpty(v94, v95, v96))
          {
            v98 = MEMORY[0x277D81150];
            v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "void addBorderAdornments(TSWPColumn *__strong, TSWPAdornmentRectType, CGRect, const TSWPBorderState &, CGFloat, __strong id, BOOL, BOOL)");
            v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v102, v99, v101, 1403, 0, "invalid empty paragraph adornment path");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
          }

          objc_msgSend_addAdornmentRect_(v21, v95, v58, *&v142);
        }

        goto LABEL_78;
      }

      if (v59 == 15)
      {
        v105 = 0;
        v106 = 4;
      }

      else
      {
LABEL_81:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v108 = &qword_276F99798;
        do
        {
          if ((*(v108 - 2) & v59) == *(v108 - 1))
          {
            if ((*v108 & v59) != 0)
            {
              v106 = 3;
            }

            else
            {
              v106 = 2;
            }

            v105 = v107;
          }

          ++v107;
          v108 += 3;
        }

        while (v107 != 4);
        if (v106 < 2)
        {
          goto LABEL_66;
        }
      }

      *v154 = a7;
      *&v154[1] = a8;
      v164.origin.x = a7;
      v164.origin.y = a8;
      v164.size.width = a9;
      v164.size.height = a10;
      v109 = CGRectGetMaxX(v164);
      v165.origin.x = a7;
      v165.origin.y = a8;
      v165.size.width = a9;
      v165.size.height = a10;
      *&v154[2] = v109;
      v154[3] = CGRectGetMinY(v165);
      v166.origin.x = a7;
      v166.origin.y = a8;
      v166.size.width = a9;
      v166.size.height = a10;
      v110 = CGRectGetMaxX(v166);
      v167.origin.x = a7;
      v167.origin.y = a8;
      v167.size.width = a9;
      v167.size.height = a10;
      *&v154[4] = v110;
      v154[5] = CGRectGetMaxY(v167);
      v168.origin.x = a7;
      v168.origin.y = a8;
      v168.size.width = a9;
      v168.size.height = a10;
      v111 = CGRectGetMinX(v168);
      v169.origin.x = a7;
      v169.origin.y = a8;
      v169.size.width = a9;
      v169.size.height = a10;
      v114 = CGRectGetMaxY(v169);
      v115 = 0;
      *&v154[6] = v111;
      *&v154[7] = v114;
      v116 = &v149;
      do
      {
        *v116 = *&v154[2 * ((v105 + v115) & 3)];
        v116 += 2;
        ++v115;
      }

      while (v106 + 1 != v115);
      if (v106 >= 4)
      {
LABEL_118:
        objc_msgSend_moveToPoint_(v63, v112, v113, v149, v150);
        v140 = v106;
        v141 = v152;
        do
        {
          objc_msgSend_lineToPoint_(v63, v138, v139, *(v141 - 1), *v141);
          v141 += 2;
          --v140;
        }

        while (v140);
        if (v106 == 4)
        {
          objc_msgSend_closePath(v63, v138, v139);
        }

        goto LABEL_66;
      }

      if (v105 > 1)
      {
        if (v105 != 2)
        {
          if (v105 == 3)
          {
            v117 = v150 - v145;
            goto LABEL_99;
          }

          goto LABEL_100;
        }

        v125 = v149 - v145;
      }

      else
      {
        if (v105)
        {
          if (v105 == 1)
          {
            v117 = v145 + v150;
LABEL_99:
            v150 = v117;
            goto LABEL_104;
          }

LABEL_100:
          v118 = MEMORY[0x277D81150];
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "TSWPAdornmentRect *newPartialAdornmentRect(CGRect, TSWPParagraphBorderPosition, TSDStroke *__strong, CGFloat)");
          v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v122, v119, v121, 1339, 0, "Unexepected edge start");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
          goto LABEL_104;
        }

        v125 = v145 + v149;
      }

      v149 = v125;
LABEL_104:
      v126 = v106 + v105;
      if ((v106 + v105) <= 3)
      {
        if (v126 == 2)
        {
LABEL_112:
          v129 = &v149 + 2 * v106;
          v130 = v129[1] - v145;
LABEL_114:
          v129[1] = v130;
          goto LABEL_118;
        }

        if (v126 != 3)
        {
LABEL_117:
          v131 = MEMORY[0x277D81150];
          v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "TSWPAdornmentRect *newPartialAdornmentRect(CGRect, TSWPParagraphBorderPosition, TSDStroke *__strong, CGFloat)");
          v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v135, v132, v134, 1357, 0, "Unexepected edge end");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137);
          goto LABEL_118;
        }

        v127 = 16 * v106;
        v128 = v145 + *(&v149 + 2 * v106);
      }

      else
      {
        if (v126 == 4)
        {
          v129 = &v149 + 2 * v106;
          v130 = v145 + v129[1];
          goto LABEL_114;
        }

        if (v126 != 5)
        {
          if (v126 != 6)
          {
            goto LABEL_117;
          }

          goto LABEL_112;
        }

        v127 = 16 * v106;
        v128 = *(&v149 + 2 * v106) - v145;
      }

      *(&v149 + v127) = v128;
      goto LABEL_118;
    }
  }

LABEL_78:
}

id sub_276D829A8(const __CTRun *a1, void *a2, uint64_t a3)
{
  v25 = a2;
  Attributes = CTRunGetAttributes(a1);
  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
  GlyphCount = CTRunGetGlyphCount(a1);
  sub_276D6D49C(v29, GlyphCount);
  v31.location = 0;
  v31.length = 0;
  CTRunGetGlyphs(a1, v31, v29[0]);
  sub_276D8D454(buffer, GlyphCount);
  v32.location = 0;
  v32.length = 0;
  CTRunGetPositions(a1, v32, buffer[0]);
  sub_276D6D3E8(v27, GlyphCount);
  v33.location = 0;
  v33.length = GlyphCount;
  CTRunGetStringIndices(a1, v33, v27[0]);
  v10 = objc_msgSend_array(MEMORY[0x277D81330], v8, v9);
  if (GlyphCount >= 1)
  {
    v11 = 0;
    for (i = 0; i != GlyphCount; ++i)
    {
      x = buffer[0][v11].x;
      y = buffer[0][v11].y;
      memset(&matrix, 0, sizeof(matrix));
      CGAffineTransformMakeTranslation(&matrix, x, y);
      v16 = CTFontCreatePathForGlyph(Value, *(v29[0] + i), &matrix);
      if (v16)
      {
        v17 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v15, v16);
        CFRelease(v16);
        v19 = objc_msgSend_charIndexMappedToStorage_(v25, v18, v27[0][i] + a3);
        v21 = objc_msgSend_objectAtIndexedSubscript_(v10, v20, v19);
        v23 = v21;
        if (v21)
        {
          objc_msgSend_appendBezierPath_(v21, v22, v17);
        }

        else
        {
          objc_msgSend_setObject_atIndexedSubscript_(v10, v22, v17, v19);
        }
      }

      ++v11;
    }
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (buffer[0])
  {
    buffer[1] = buffer[0];
    operator delete(buffer[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  return v10;
}

void sub_276D82BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_276D82C5C(void *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v38 = a2;
  if (objc_msgSend_hasValidFillState(v3, v4, v5))
  {
    v8 = [TSWPAdornmentRect alloc];
    v37 = objc_msgSend_initWithCharacterFillAdornmentState_(v8, v9, v3);
    objc_msgSend_addAdornmentRect_(v38, v10, v37);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = objc_msgSend_currentDropCapAdornments(v3, v11, v12);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v40, v44, 16);
    if (v16)
    {
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = objc_msgSend_characterFill(v19, v14, v15);
          v23 = objc_msgSend_currentAdornmentFill(v3, v21, v22);
          isEqual = objc_msgSend_isEqual_(v20, v24, v23);

          if ((isEqual & 1) == 0)
          {
            v28 = MEMORY[0x277D81150];
            v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "void pCreateCharacterFillAdornmentForState(TSWPCharacterAdornmentState *__strong, TSWPColumn *const __strong)");
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 1743, 0, "expected drop cap fill to match");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
          }

          objc_msgSend_currentFillRect(v3, v26, v27);
          objc_msgSend_setCharacterFillRect_(v19, v35, v36);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v40, v44, 16);
      }

      while (v16);
    }
  }

  objc_msgSend_resetFillState(v3, v6, v7);
}

void sub_276D82EF4(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  if (objc_msgSend_hasValidStrokeState(v12, v4, v5))
  {
    v8 = [TSWPAdornmentRect alloc];
    v10 = objc_msgSend_initWithCharacterStrokeAdornmentState_(v8, v9, v12);
    objc_msgSend_addAdornmentRect_(v3, v11, v10);
  }

  objc_msgSend_resetStrokeState(v12, v6, v7);
}

void sub_276D82F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276D82FAC(uint64_t a1, void *a2, void *a3, CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
  v64 = a2;
  v14 = a3;
  if ((*(a1 + 28) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "void pProcessTextAdornmentLineFragmentForAdvancedCharacterAdornments(const TSWPLineFragment *const, TSWPCharacterAdornmentState *__strong, TSWPColumn *const __strong, const BOOL, CGRect)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1764, 0, "Expected text adornment fragment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_opt_class();
  v22 = sub_276D64990(a1);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_characterFill(v23, v24, v25);
  if (v28)
  {
    if (objc_msgSend_characterFillShouldFillTextContainer(v23, v26, v27))
    {
      v31 = objc_msgSend_fillType(v28, v29, v30) == 1;
    }

    else
    {
      v31 = 0;
    }

    v32 = objc_msgSend_currentAdornmentFill(v64, v29, v30);

    if (v32)
    {
      if (v31 == objc_msgSend_fillsCurrentTextContainer(v64, v33, v34))
      {
        v37 = objc_msgSend_currentAdornmentFill(v64, v35, v36);
        isEqual = objc_msgSend_isEqual_(v37, v38, v28);

        if (isEqual)
        {
          if (!v31)
          {
            objc_msgSend_currentFillRect(v64, v40, v41);
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
            objc_msgSend_glyphBounds(v23, v50, v51);
            v68.origin.x = v52;
            v68.origin.y = v53;
            v68.size.width = v54;
            v68.size.height = v55;
            v66.origin.x = v43;
            v66.origin.y = v45;
            v66.size.width = v47;
            v66.size.height = v49;
            v67 = CGRectUnion(v66, v68);
            x = v67.origin.x;
            y = v67.origin.y;
            width = v67.size.width;
            height = v67.size.height;
          }

          objc_msgSend_setCurrentFillRect_(v64, v40, v41, x, y, width, height);
          goto LABEL_15;
        }
      }

      sub_276D82C5C(v64, v14);
    }

    objc_msgSend_glyphBounds(v23, v33, v34);
    objc_msgSend_setCurrentFillRect_(v64, v58, v59);
    objc_msgSend_setCurrentAdornmentFill_(v64, v60, v28);
    objc_msgSend_setFillsCurrentTextContainer_(v64, v61, v31);
LABEL_15:
    v62 = objc_msgSend_currentDropCapAdornments(v64, v56, v57);
    objc_msgSend_addObject_(v62, v63, v23);
  }
}

void sub_276D8328C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  v225 = *MEMORY[0x277D85DE8];
  *v223 = a6;
  *&v223[1] = a7;
  *&v223[2] = a8;
  *&v223[3] = a9;
  v196 = a4;
  v188 = a5;
  v195 = a2;
  v181 = a2 == 1;
  v12 = *a1;
  v179 = a1[1];
  if (*a1 != v179)
  {
    v180 = *MEMORY[0x277CC49C0];
    do
    {
      v13 = sub_276DD1F38(v12);
      v14 = CTLineGetGlyphRuns(v13);
      v192 = v12;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      obj = v14;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v219, v224, 16);
      if (!v16)
      {
        goto LABEL_101;
      }

      v190 = *v220;
      do
      {
        v17 = 0;
        v191 = v16;
        do
        {
          if (*v220 != v190)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v219 + 1) + 8 * v17);
          v19 = CTRunGetAttributes(v18);
          v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"TSWPRubySpacingRunAttribute");
          v24 = v21;
          if (v21)
          {
            v25 = objc_msgSend_BOOLValue(v21, v22, v23);
          }

          else
          {
            v25 = 0;
          }

          v26 = objc_msgSend_objectForKeyedSubscript_(v19, v22, @"__wpAttachmentMap");

          if (v195)
          {
            v28 = 0;
          }

          else
          {
            v28 = v192[3] != 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v26)
          {
            v29 = 1;
          }

          else
          {
            v29 = v25;
          }

          if ((v29 & 1) == 0)
          {
            *(&v197 + 1) = objc_msgSend_objectForKeyedSubscript_(v19, v27, @"TSWPCharacterFillAttribute");
            *&v197 = objc_msgSend_objectForKeyedSubscript_(v19, v30, @"TSWPCharacterStrokeAttribute");
            v194 = objc_msgSend_objectForKeyedSubscript_(v19, v31, @"TSWPCharacterFillShouldFillTextContainerAttribute");
            v193 = objc_msgSend_objectForKeyedSubscript_(v19, v32, @"TSWPShadow");
            if (objc_msgSend_BOOLValue(v194, v33, v34))
            {
              v37 = objc_msgSend_fillType(*(&v197 + 1), v35, v36) == 1;
            }

            else
            {
              v37 = 0;
            }

            if (v197 != 0)
            {
              StringRange = CTRunGetStringRange(v18);
              v186 = v37;
              if (v195 == 2)
              {
                v39 = v192[3];
                v40 = v192[5];
                v41 = sub_276D644CC(a3);
                v42 = v39 - v40;
                v44 = objc_msgSend_charRangeMappedToStorage_(v41, v43, v42 + StringRange.location, StringRange.length);
                v46 = v45;

                goto LABEL_34;
              }

              v52 = sub_276D644CC(a3);
              v44 = objc_msgSend_charRangeMappedToStorage_(v52, v53, StringRange.location, StringRange.length);
              v46 = v54;

              if (v195 == 1)
              {
                v55 = v192[3];
                v56 = sub_276DD1F38(v192);
                GlyphCount = CTLineGetGlyphCount(v56);
                objc_msgSend_glyphRectForRubyFieldAtCharIndex_glyphRange_(v188, v58, v55, 0, GlyphCount);
                v60 = v59;
                v62 = v61;
                v64 = v63;
                v66 = v65;
                v42 = 0;
              }

              else
              {
                v42 = 0;
LABEL_34:
                v75 = v44;
                v76 = v46;
                if (v28)
                {
                  v75 = v192[3];
                  v76 = v192[4];
                }

                v60 = sub_276D68AA0(a3, v75, v76, v188);
                v62 = v77;
                v64 = v78;
                v66 = v79;
              }

              *&v217 = v60;
              *(&v217 + 1) = v62;
              *&v218 = v64;
              *(&v218 + 1) = v66;
              v80 = sub_276D644CC(a3);
              v81 = sub_276D829A8(v18, v80, v42);

              if (v195 == 1 || v28)
              {
                v44 = v192[3];
                v46 = v192[4];
                v84 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v82, v83);
                v215[0] = MEMORY[0x277D85DD0];
                v215[1] = 3221225472;
                v215[2] = sub_276D84290;
                v215[3] = &unk_27A6F41A0;
                v85 = v84;
                v216 = v85;
                objc_msgSend_foreach_(v81, v86, v215);
                objc_msgSend_clear(v81, v87, v88);
                objc_msgSend_setObject_atIndexedSubscript_(v81, v89, v85, v44);
              }

              v211 = 0;
              v212 = &v211;
              v213 = 0x2020000000;
              v214 = 0;
              v210[0] = MEMORY[0x277D85DD0];
              v210[1] = 3221225472;
              v210[2] = sub_276D8429C;
              v210[3] = &unk_27A6F41C8;
              v210[4] = &v211;
              objc_msgSend_foreach_(v81, v82, v210);
              if ((v212[3] & 1) == 0)
              {
                goto LABEL_92;
              }

              memset(&v209, 0, sizeof(v209));
              CTRunGetTextMatrix(&v209, v18);
              v90 = sub_276D65668(v19);
              Status = CTRunGetStatus(v18);
              v92 = 0.0;
              if ((*(a3 + 25) & 0x20) != 0)
              {
                v94 = v192;
                if (v195 == 2)
                {
                  t1 = v209;
                  CGAffineTransformRotate(&v208, &t1, 1.57079633);
                  v209 = v208;
                  v92 = 0.0;
                  v93 = 0.0;
                }

                else
                {
                  v95 = Status;
                  v208.a = 0.0;
                  t1.a = 0.0;
                  leading.a = 0.0;
                  v228.location = 0;
                  v228.length = 0;
                  CTRunGetTypographicBounds(v18, v228, &v208.a, &t1.a, &leading.a);
                  v92 = (v208.a - t1.a) * -0.5;
                  if ((v95 & 4) != 0)
                  {
                    v92 = 0.0;
                    v93 = 0.0;
                  }

                  else
                  {
                    v93 = v90;
                  }

                  if ((v95 & 4) == 0)
                  {
                    v90 = 0.0;
                  }
                }
              }

              else
              {
                v93 = v90;
                v90 = 0.0;
                v94 = v192;
              }

              v209.ty = v92 + v209.ty;
              v96 = *(v94 + 4);
              *&t1.a = *(v94 + 3);
              *&t1.c = v96;
              *&t1.tx = *(v94 + 5);
              leading = v209;
              CGAffineTransformConcat(&v208, &t1, &leading);
              v209 = v208;
              t1 = v208;
              CGAffineTransformMakeScale(&leading, 1.0, -1.0);
              CGAffineTransformConcat(&v208, &t1, &leading);
              v209 = v208;
              CGAffineTransformMakeTranslation(&t1, v90, v93);
              leading = v209;
              CGAffineTransformConcat(&v208, &t1, &leading);
              v209 = v208;
              v97 = *(v94 + 1) + *(a3 + 40);
              v98 = *(v94 + 2) + *(a3 + 32);
              t1 = v208;
              CGAffineTransformMakeTranslation(&leading, v97, v98);
              CGAffineTransformConcat(&v208, &t1, &leading);
              v209 = v208;
              v204[0] = MEMORY[0x277D85DD0];
              v204[1] = 3221225472;
              v204[2] = sub_276D842E0;
              v204[3] = &unk_27A6F41E8;
              v205 = v208;
              objc_msgSend_foreach_(v81, v99, v204);
              if (*(&v197 + 1))
              {
                v102 = objc_msgSend_currentAdornmentFill(v196, v100, v101);
                v103 = v102 == 0;

                if (!v103)
                {
                  if (v186 == objc_msgSend_fillsCurrentTextContainer(v196, v104, v105))
                  {
                    v108 = objc_msgSend_currentAdornmentFill(v196, v106, v107);
                    if (objc_msgSend_isEqual_(v108, v109, *(&v197 + 1)))
                    {
                      v112 = objc_msgSend_currentFillShadow(v196, v110, v111);
                      v113 = v193;
                      if (!(v113 | v112))
                      {

                        goto LABEL_97;
                      }

                      v165 = v113;
                      isEqual = objc_msgSend_isEqual_(v112, v114, v113);

                      if (isEqual)
                      {
LABEL_97:
                        v227.location = objc_msgSend_currentFillRange(v196, v115, v116);
                        v230.location = v44;
                        v230.length = v46;
                        v167 = NSUnionRange(v227, v230);
                        objc_msgSend_setCurrentFillRange_(v196, v167.length, v167.location, v167.length);
                        v170 = a6;
                        v171 = a7;
                        v172 = a8;
                        v173 = a9;
                        if ((v186 & 1) == 0)
                        {
                          objc_msgSend_currentFillRect(v196, v168, v169, a6, a7, a8, a9);
                          v234.origin.x = v60;
                          v234.origin.y = v62;
                          v234.size.width = v64;
                          v234.size.height = v66;
                          *&v170 = CGRectUnion(v232, v234);
                        }

                        objc_msgSend_setCurrentFillRect_(v196, v168, v169, v170, v171, v172, v173);
                        v201[0] = MEMORY[0x277D85DD0];
                        v201[1] = 3221225472;
                        v201[2] = sub_276D84318;
                        v201[3] = &unk_27A6F4210;
                        v203 = v181;
                        v174 = v196;
                        v202 = v174;
                        objc_msgSend_foreach_(v81, v175, v201);
                        objc_msgSend_setHasValidFillState_(v174, v176, 1);
                        v123 = v202;
                        goto LABEL_65;
                      }
                    }

                    else
                    {
                    }
                  }

                  sub_276D82C5C(v196, v188);
                }

                v121 = &v217;
                if (v186)
                {
                  v121 = v223;
                }

                v122 = v121[1];
                v217 = *v121;
                v218 = v122;
                if (v195 == 1)
                {
                  v123 = objc_msgSend_array(MEMORY[0x277D81330], v104, v105);
                  v124 = v81;
                }

                else
                {
                  v123 = v81;
                  v124 = objc_msgSend_array(MEMORY[0x277D81330], v126, v127);
                }

                v128 = v124;
                v62 = *(&v217 + 1);
                v60 = *&v217;
                v66 = *(&v218 + 1);
                v64 = *&v218;
                LOBYTE(v178) = v186;
                objc_msgSend_setStateWithFill_range_rect_paths_rubyPaths_shadow_fillsCurrentTextContainer_(v196, v125, *(&v197 + 1), v44, v46, v123, v124, v193, v217, v218, v178);

LABEL_65:
              }

              else
              {
                v117 = objc_msgSend_currentAdornmentFill(v196, v100, v101);
                v118 = v117 == 0;

                if (!v118)
                {
                  sub_276D82C5C(v196, v188);
                }
              }

              if (!v197)
              {
                v142 = objc_msgSend_currentAdornmentStroke(v196, v119, v120);
                v143 = v142 == 0;

                if (!v143)
                {
                  sub_276D82EF4(v196, v188);
                }

                goto LABEL_92;
              }

              v129 = objc_msgSend_currentAdornmentStroke(v196, v119, v120);
              v130 = v129 == 0;

              if (!v130)
              {
                v133 = objc_msgSend_currentAdornmentStroke(v196, v131, v132);
                if (objc_msgSend_isEqual_(v133, v134, v197))
                {
                  v137 = objc_msgSend_currentStrokeShadow(v196, v135, v136);
                  v138 = v193;
                  if (!(v138 | v137))
                  {

                    goto LABEL_80;
                  }

                  v146 = v138;
                  v147 = objc_msgSend_isEqual_(v137, v139, v138);

                  if (v147)
                  {
LABEL_80:
                    v226.location = objc_msgSend_currentStrokeRange(v196, v140, v141);
                    v229.location = v44;
                    v229.length = v46;
                    v148 = NSUnionRange(v226, v229);
                    objc_msgSend_setCurrentStrokeRange_(v196, v148.length, v148.location, v148.length);
                    v151 = a8;
                    v152 = a9;
                    v153 = a6;
                    v154 = a7;
                    if ((v186 & 1) == 0)
                    {
                      objc_msgSend_currentStrokeRect(v196, v149, v150, a6, a7, a8, a9);
                      v233.origin.x = v60;
                      v233.origin.y = v62;
                      v233.size.width = v64;
                      v233.size.height = v66;
                      *&v153 = CGRectUnion(v231, v233);
                    }

                    objc_msgSend_setCurrentStrokeRect_(v196, v149, v150, v153, v154, v151, v152);
                    v198[0] = MEMORY[0x277D85DD0];
                    v198[1] = 3221225472;
                    v198[2] = sub_276D84498;
                    v198[3] = &unk_27A6F4210;
                    v200 = v181;
                    v155 = v196;
                    v199 = v155;
                    objc_msgSend_foreach_(v81, v156, v198);
                    objc_msgSend_setHasValidStrokeState_(v155, v157, 1);
                    v158 = v199;
LABEL_91:

LABEL_92:
                    _Block_object_dispose(&v211, 8);

LABEL_93:
                    goto LABEL_94;
                  }
                }

                else
                {
                }

                sub_276D82EF4(v196, v188);
              }

              if (*(&v197 + 1))
              {
                v144 = 1;
              }

              else
              {
                v145 = objc_msgSend_objectForKeyedSubscript_(v19, v131, v180);

                if (v145)
                {
                  v144 = CGColorGetAlpha(v145) > 0.0;
                }

                else
                {
                  v144 = 0;
                }
              }

              if (v195 == 1)
              {
                v158 = objc_msgSend_array(MEMORY[0x277D81330], v131, v132);
                v159 = v81;
              }

              else
              {
                v158 = v81;
                v159 = objc_msgSend_array(MEMORY[0x277D81330], v161, v162);
              }

              v163 = v159;
              if (v144)
              {
                objc_msgSend_setStateWithStroke_range_rect_paths_rubyPaths_shadow_(v196, v160, v197, v44, v46, v158, v159, 0, v60, v62, v64, v66);
              }

              else
              {
                objc_msgSend_setStateWithStroke_range_rect_paths_rubyPaths_shadow_(v196, v160, v197, v44, v46, v158, v159, v193, v60, v62, v64, v66);
              }

              goto LABEL_91;
            }

            v47 = objc_msgSend_currentAdornmentFill(v196, v35, v36);
            if (v47)
            {
            }

            else
            {
              v67 = objc_msgSend_currentAdornmentStroke(v196, v48, v49);
              v68 = v67 == 0;

              if (v68)
              {
                goto LABEL_93;
              }
            }

            v69 = objc_msgSend_currentAdornmentFill(v196, v50, v51);
            v70 = v69 == 0;

            if (!v70)
            {
              sub_276D82C5C(v196, v188);
            }

            v73 = objc_msgSend_currentAdornmentStroke(v196, v71, v72);
            v74 = v73 == 0;

            if (!v74)
            {
              sub_276D82EF4(v196, v188);
            }

            goto LABEL_93;
          }

LABEL_94:

          ++v17;
        }

        while (v191 != v17);
        v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v164, &v219, v224, 16);
        v16 = v177;
      }

      while (v177);
LABEL_101:

      v12 = (v192 + 13);
    }

    while (v192 + 13 != v179);
  }
}

uint64_t sub_276D8429C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_containsElementsOtherThanMoveAndClose(a2, a2, a3);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_276D842E0(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  return objc_msgSend_transformUsingAffineTransform_(a2, a2, v4);
}

void sub_276D84318(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v7 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v8 = objc_msgSend_currentRubyFillPaths(v7, v5, v6);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, a3);

    if (v10)
    {
LABEL_3:
      objc_msgSend_appendBezierPath_(v10, v11, v24);
      goto LABEL_9;
    }

    v16 = objc_msgSend_copy(v24, v11, v12);
    v19 = objc_msgSend_currentRubyFillPaths(*(a1 + 32), v17, v18);
    objc_msgSend_setObject_atIndexedSubscript_(v19, v20, v16, a3);
  }

  else
  {
    v13 = objc_msgSend_currentFillPaths(v7, v5, v6);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, a3);

    if (v10)
    {
      goto LABEL_3;
    }

    v16 = objc_msgSend_copy(v24, v11, v15);
    v19 = objc_msgSend_currentFillPaths(*(a1 + 32), v21, v22);
    objc_msgSend_setObject_atIndexedSubscript_(v19, v23, v16, a3);
  }

LABEL_9:
}

void sub_276D84498(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v7 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v8 = objc_msgSend_currentRubyStrokePaths(v7, v5, v6);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, a3);

    if (v10)
    {
LABEL_3:
      objc_msgSend_appendBezierPath_(v10, v11, v24);
      goto LABEL_9;
    }

    v16 = objc_msgSend_copy(v24, v11, v12);
    v19 = objc_msgSend_currentRubyStrokePaths(*(a1 + 32), v17, v18);
    objc_msgSend_setObject_atIndexedSubscript_(v19, v20, v16, a3);
  }

  else
  {
    v13 = objc_msgSend_currentStrokePaths(v7, v5, v6);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, a3);

    if (v10)
    {
      goto LABEL_3;
    }

    v16 = objc_msgSend_copy(v24, v11, v15);
    v19 = objc_msgSend_currentStrokePaths(*(a1 + 32), v21, v22);
    objc_msgSend_setObject_atIndexedSubscript_(v19, v23, v16, a3);
  }

LABEL_9:
}

id sub_276D84618(uint64_t a1)
{
  v1 = sub_276D6CF74(a1);
  v3 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v2, v1);

  return v3;
}

void sub_276D84680(void *a1, void *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v38 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  objc_msgSend_wpBounds(v38, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (v13)
  {
    objc_msgSend_adjustedInsetsForTarget_(v13, v18, v15);
    v28 = v27;
  }

  else
  {
    v28 = *(MEMORY[0x277D81428] + 16);
  }

  v40.origin.x = v20;
  v40.origin.y = v22;
  v40.size.width = v24;
  v40.size.height = v26;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = a5;
  v41.size.width = a7;
  v41.origin.y = a6;
  v41.size.height = a8;
  v30 = CGRectGetMaxY(v41);
  v31 = v28 + MaxY - v22;
  v42.origin.x = v20;
  v42.origin.y = v22;
  v42.size.width = v24;
  v42.size.height = v31;
  if (v30 > floor(CGRectGetMaxY(v42)))
  {
    v43.origin.x = v20;
    v43.origin.y = v22;
    v43.size.width = v24;
    v43.size.height = v31;
    a8 = floor(CGRectGetMaxY(v43)) - a6;
  }

  v32 = [TSWPAdornmentRect alloc];
  v34 = objc_msgSend_initWithRect_stroke_fill_type_(v32, v33, 0, v14, 3, a5, a6, a7, a8);
  objc_msgSend_addAdornmentRect_(v38, v35, v34);
}

uint64_t sub_276D84848@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X2>, uint64_t *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  *a4 = 0;
  a4[1] = 0;
  v14 = *a2;
  if (*a2 == *a3)
  {
    goto LABEL_18;
  }

  v16 = *(a1 + 80);
  while (1)
  {
    v17 = *v14;
    if (**v14 >= v16)
    {
      break;
    }

    v14 += 2;
    *a2 = v14;
    if (v14 == *a3)
    {
      goto LABEL_17;
    }
  }

  if (!sub_276D648AC(*v14) && *(a1 + 80) == *v17 && ((*(v17 + 25) >> 5) & 1) == (*(a1 + 32) & 0x10) >> 4)
  {
    v18 = v17[5] == *(a1 + 536) && v17[6] == *(a1 + 544);
    if (v18 && v17[7] == *(a1 + 552))
    {
      sub_276D84ACC(a4, *a2);
      sub_276D6BD50(*a4, v19, v20);
    }
  }

LABEL_17:
  v21 = *a4;
  if (!*a4)
  {
LABEL_18:
    operator new();
  }

  *v21 = *(a1 + 80);
  *(v21 + 8) = 1;
  *(v21 + 24) |= 0x48uLL;
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  *(v21 + 32) = CGRectGetMaxY(v29);
  v22 = *a4;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  *(v22 + 56) = a7;
  *(v22 + 64) = a8;
  *(v22 + 72) = a5;
  *(v22 + 80) = a6;
  *(v22 + 88) = a7;
  *(v22 + 96) = a8;
  *(v22 + 104) = 0;
  *(v22 + 112) = 0;
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  *(v22 + 120) = CGRectGetHeight(v30);
  *(v22 + 136) = 0u;
  *(v22 + 152) = 0u;
  sub_276D6BD34(*a4, 0);
  v23 = *a4;
  v24 = sub_276DD29B0(a1 + 80);
  sub_276D644D4(v23, v24);

  sub_276D64954(*a4, 0.0);
  sub_276DC3990(*(a1 + 896), a1 + 80, *a4, 0, 0, 0.0);
  v25 = *a4;
  *(v25 + 240) = 0;
  result = sub_276D6C5EC(v25, v26, v27);
  ++*(a1 + 80);
  return result;
}

void sub_276D84A7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_276D5EEA0(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276D84ACC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_276D5EEA0(v5);
  }

  return a1;
}

uint64_t sub_276D84B5C@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t **a4@<X4>, uint64_t **a5@<X5>, _WORD *a6@<X6>, _BYTE *a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  *a8 = 0;
  a8[1] = 0;
  *(a1 + 536) = a9;
  *(a1 + 544) = a10;
  *(a1 + 552) = a11;
  *(a1 + 560) = a12;
  if (a11 < 0.0)
  {
    *(a1 + 552) = 0;
  }

  v15 = *(a1 + 80);
  *(a3 + 169) = a2;
  *(a3 + 170) = a2 ^ 1;
  for (i = *a4; ; *a4 = i)
  {
    if (i == *a5)
    {
      v17 = 0;
      goto LABEL_8;
    }

    v17 = *i;
    v18 = **i;
    if (v18 >= v15)
    {
      break;
    }

    i += 2;
  }

  v67 = sub_276D648AC(*i);
  v68 = *(a3 + 64);
  v84 = *(a1 + 505);
  v69 = *(v17 + 3);
  v80 = *(a1 + 432);
  v81 = *(a1 + 431);
  v79 = *(a1 + 32);
  v70 = sub_276DD2AE8(a1 + 80);
  v71 = (v67 | v68 & 0x10000) == 0;

  if (v15 == v18 && !v71 && (v84 & 1) == 0)
  {
    v74 = (v69 & 4) == 0 && ((v69 >> 17) & 1) == (v80 & v81);
    if (v74 && ((v69 >> 13) & 1) == ((v79 >> 4) & 1) && !v70)
    {
      v75 = v17[5] == *(a1 + 536) && v17[6] == *(a1 + 544);
      if (v75 && v17[7] == *(a1 + 552))
      {
        v76 = **a4;
        v77 = (*a4)[1];
        if (v77)
        {
          atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
        }

        v78 = a8[1];
        *a8 = v76;
        a8[1] = v77;
        if (v78)
        {
          sub_276D5EEA0(v78);
          v76 = *a8;
        }

        sub_276D6BD50(v76, v72, v73);
      }
    }
  }

LABEL_8:
  *(a3 + 176) = v17;
  v19 = a8;
  if (!*a8)
  {
    operator new();
  }

  *(a3 + 224) = *a8;
  v20 = sub_276DC9B3C(*(a1 + 896), a3);
  sub_276D74874(a1 + 80, v20);
  v22 = *(a1 + 184) + *(a1 + 176);
  if (*(a1 + 80) > v22)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::const_line_iterator &, const TSWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    v27 = *(a1 + 80);
    v28 = NSStringFromRange(*(a1 + 176));
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v26, 2285, 0, "Bad _state.charIndex %lu for paragraph range %{public}@", v27, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    v22 = *(a1 + 184) + *(a1 + 176);
  }

  v32 = *a8;
  v33 = MEMORY[0x277D81490];
  if (*(*a8 + 24) < 0)
  {
    v34 = MEMORY[0x277D81490];
  }

  else
  {
    v34 = *a8;
  }

  if (*v34 + v34[1] > v22)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::const_line_iterator &, const TSWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    v39 = *a8;
    if (*(*a8 + 24) < 0)
    {
      v39 = v33;
    }

    v41 = *v39;
    v40 = v39[1];
    v42 = NSStringFromRange(*(a1 + 176));
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v43, v36, v38, 2286, 0, "Bad line end %lu for paragraph range %{public}@", v41 + v40, v42);

    v19 = a8;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
    v32 = *a8;
  }

  result = sub_276D648AC(v32);
  if (!result && (*(a3 + 66) & 1) == 0)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::const_line_iterator &, const TSWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 2287, 0, "Bad glyphCount");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
  }

  v55 = *v19;
  if (!*v19)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::const_line_iterator &, const TSWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 2289, 0, "failed to create a line fragment");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    v55 = *v19;
  }

  if ((*(a3 + 40) & 4) != 0)
  {
    v63 = *(v55 + 240);
    if (*(a1 + 568) >= v63)
    {
      v63 = *(a1 + 568);
    }

    *(a1 + 568) = v63;
  }

  *a7 = 0;
  *a6 = 0;
  v74 = (*(v55 + 24) & 0x2004800) == 33570816;
  *(a1 + 336) = v74;
  if (!v74)
  {
    if (sub_276D85160(a1, v55, 0, *(a3 + 232), *(a3 + 240)) && sub_276D85574(a1) && *(a1 + 80) > v15)
    {
      *a7 = objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(*(a1 + 8), v64, *(a3 + 240));
    }

    v65 = *(a3 + 232);
    result = IsParagraphBreakingCharacter(*(a3 + 232));
    v66 = result ^ 1;
    if (v65 == 8232)
    {
      v66 = 0;
    }

    if ((v66 & 1) == 0)
    {
      *a6 = *(a3 + 232);
    }
  }

  return result;
}

void sub_276D850CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a16 + 8);
  if (v17)
  {
    sub_276D5EEA0(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276D85160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = *(a3 + 160) == 0.0;
  }

  else
  {
    v10 = 0;
  }

  v11 = fmax(*(a1 + 464) + *(a1 + 448), 0.0);
  if ((*(a1 + 440) & 0xC) != 0 && v10)
  {
    *(a3 + 72) = CGRectInset(*(a2 + 72), -v11, 0.0);
  }

  if (*(a1 + 80) != *(a1 + 184) + *(a1 + 176))
  {
    goto LABEL_44;
  }

  if (*(a1 + 464) == 0.0)
  {
    goto LABEL_31;
  }

  v14 = 0.0;
  if (TSWPParagraphEnumerator::isLastParagraph((a1 + 104)) || (v20 = objc_msgSend_characterAtIndex_(*(a1 + 8), v13, *(a1 + 176) + *(a1 + 184) - 1) - 4, v20 < 0xC) && ((0x907u >> v20) & 1) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0.0;
    v19 = 0.0;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    TSWPParagraphEnumerator::next((a1 + 104), &v55);
    v21 = TSWPParagraphEnumerator::paragraphStyle(&v55, 0);
    if (objc_msgSend_intValueForProperty_(v21, v22, 105) == 15)
    {
      sub_276D861E8(v52, &v55, v21);
      v14 = *v52;
      v18 = *&v52[1];
      v19 = *&v52[2];
      v15 = v52[3];
      v16 = v53;
      v53 = 0;
      v17 = v54;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0.0;
      v19 = 0.0;
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v55);
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  v23 = *(a1 + 440);
  if (v23 == 15 || (v23 & 2) == 0)
  {
    if (v23 != 15)
    {
      goto LABEL_30;
    }

    sub_276D8639C(&v55, a1 + 80);
    if (LOBYTE(v55.var5) == v17 && *&v55.var2 == v19 && *&v55.var0 == v14 && *&v55.var1 == v18 && v55.var3 == v15)
    {
      isEqual = objc_msgSend_isEqual_(v55.var4, v32, v16, *&v55.var1);

      if (isEqual)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  *(a3 + 160) = v11 + *(a3 + 160);
  TSURectWithOriginAndSize();
  *(a3 + 40) = v24;
  *(a3 + 48) = v25;
  *(a3 + 56) = v26;
  *(a3 + 64) = v27;
  TSURectWithOriginAndSize();
  *(a3 + 72) = v28;
  *(a3 + 80) = v29;
  *(a3 + 88) = v30;
  *(a3 + 96) = v31;
LABEL_30:

LABEL_31:
  *(a1 + 624) = 0;
  v34 = IsParagraphBreakingCharacter(a4);
  if (v34)
  {
    v35 = *(a1 + 408);
    if (v35 <= 0.0 || *(a1 + 200) + *(a1 + 192) == a5)
    {
      result = 1;
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  result = 0;
  if (a4 == 8232 || *(a1 + 80) != *(a1 + 64))
  {
    goto LABEL_45;
  }

  v35 = *(a1 + 408);
  if (v35 <= 0.0)
  {
LABEL_44:
    result = 0;
    goto LABEL_45;
  }

LABEL_38:
  if (v10)
  {
    *(a3 + 160) = v35 + *(a3 + 160);
    TSURectWithOriginAndSize();
    *(a3 + 40) = v37;
    *(a3 + 48) = v38;
    *(a3 + 56) = v39;
    *(a3 + 64) = v40;
    TSURectWithOriginAndSize();
    *(a3 + 72) = v41;
    *(a3 + 80) = v42;
    *(a3 + 88) = v43;
    *(a3 + 96) = v44;
  }

  v45 = sub_276D6BF6C(a2, *(a1 + 352), *(a1 + 392));
  v46 = *(a2 + 160);
  v47 = *(a2 + 104) + *(a2 + 144) + *(a2 + 120) + *(a2 + 136) + *(a2 + 152) + v46 - v45;
  if (v47 > 0.0)
  {
    *(a1 + 624) = -fmin(v47, v46);
    if (a3)
    {
      TSURectWithOriginAndSize();
      *(a3 + 40) = v48;
      *(a3 + 48) = v49;
      *(a3 + 56) = v50;
      *(a3 + 64) = v51;
    }
  }

  result = v34;
LABEL_45:
  *(a1 + 528) = 0;
  return result;
}

BOOL sub_276D85574(uint64_t a1)
{
  isLastParagraph = TSWPParagraphEnumerator::isLastParagraph((a1 + 104));
  if (!isLastParagraph)
  {
    TSWPParagraphEnumerator::operator++((a1 + 104), v2);
    v5 = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), v4);
    sub_276D74874(a1 + 80, v5);
    *(a1 + 427) = *(a1 + 426);
    sub_276D78C18(a1, 0, 0x7FFFFFFFFFFFFFFFLL);
  }

  return !isLastParagraph;
}

uint64_t sub_276D85854(uint64_t a1, void **a2, double *a3, void *a4, void *a5, CGFloat a6, double a7, CGFloat a8, double a9, double a10)
{
  v17 = a4;
  v18 = a5;
  v21 = objc_msgSend_layoutMetricsCache(*(a1 + 24), v19, v20);
  v22 = TSWPParagraphEnumerator::relevantParagraphIndex((a1 + 104));
  v24 = objc_msgSend_paragraphMetricsForParagraphAtIndex_(v21, v23, v22);
  if (v24)
  {
    v64 = a3;
    v25 = sub_276D6F7D8(*a2) != 0;
    v26 = sub_276D85E98(a1, v25);
    v28 = *(v24 + 8);
    v27 = *(v24 + 16);
    v30 = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), v29);
    v32 = v31;
    if (objc_msgSend_attachmentCount(*(a1 + 8), v31, v33))
    {
      objc_msgSend_attachmentIndexRangeForTextRange_(*(a1 + 8), v34, v30, v32);
      v36 = v34 != 0;
    }

    else
    {
      v36 = 0;
    }

    if (objc_msgSend_footnoteCount(*(a1 + 8), v34, v35))
    {
      objc_msgSend_footnoteRangeForTextRange_(*(a1 + 8), v37, v30, v32);
      v39 = v37 != 0;
    }

    else
    {
      v39 = 0;
    }

    v40 = 1;
    if (!v36 && (*v24 & 1) != 0 && !v39)
    {
      v40 = *(a1 + 88) < *(a1 + 80);
    }

    if (!v40 && &v32[v30] < *(a1 + 64) && a8 == v28)
    {
      v41 = v26 + v27;
      v42 = *v64;
      if (v41 + *v64 < a10 + -1.0)
      {
        if ((objc_msgSend_autosizeFlags(*(a1 + 888), v37, v38) & 4) != 0 || (sub_276DD2A28(a1 + 80), v44 = objc_claimAutoreleasedReturnValue(), (v45 = v44) == 0))
        {
          v61 = v21;
          v62 = v18;
          v63 = v17;
          v60 = 0;
        }

        else
        {
          if (!objc_msgSend_checkForUnobstructedSpan_wrappableAttachments_userInfo_(v44, v43, v17, v18, a6, v42, a8, v41))
          {
LABEL_34:

            goto LABEL_35;
          }

          v60 = v45;
          v61 = v21;
          v62 = v18;
          v63 = v17;
        }

        v46 = *(v24 + 24);
        v59 = *(v24 + 32);
        v47 = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), v43);
        v49 = v48;
        if (TSWPParagraphEnumerator::isLastParagraph((a1 + 104)) || (v53 = objc_msgSend_characterAtIndex_(*(a1 + 8), v50, *(a1 + 176) + *(a1 + 184) - 1) - 4, v53 < 0xC) && ((0x907u >> v53) & 1) != 0)
        {
          v58 = 0;
          v52 = 0;
        }

        else
        {
          TSWPParagraphEnumerator::next((a1 + 104), &v67);
          v54 = TSWPParagraphEnumerator::paragraphStyle(&v67, 0);
          if (objc_msgSend_intValueForProperty_(v54, v55, 105) == 15)
          {
            sub_276D861E8(v65, &v67, v54);
            v52 = v66;
            v58 = v65[3];
            v66 = 0;
          }

          else
          {
            v58 = 0;
            v52 = 0;
          }

          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v67);
        }

        if (v46)
        {
          operator new();
        }

        objc_msgSend_wpKind(*(a1 + 8), v50, v51, v58);
        v68.origin.x = a6;
        v68.origin.y = v42;
        v68.size.width = a8;
        v68.size.height = v41;
        *(a1 + 416) = CGRectGetMaxY(v68);
        *v64 = v26 + v59 + *v64;
        v56 = v47 + v49;
        if (*(a1 + 88) > v47 + v49)
        {
          v56 = *(a1 + 88);
        }

        *(a1 + 88) = v56;

        v18 = v62;
        v17 = v63;
        v45 = v60;
        v21 = v61;
        goto LABEL_34;
      }
    }
  }

LABEL_35:

  return 0;
}

double sub_276D85E98(uint64_t a1, int a2)
{
  v4 = *(a1 + 400);
  v5 = 0.0;
  if (v4 == 0.0 || *(a1 + 528) != 1)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((a2 & 1) != 0 || *(a1 + 665) == 1)
  {
    if (TSWPParagraphEnumerator::isFirstParagraph((a1 + 104)) && *(a1 + 665) != 1)
    {
      v6 = 0;
      v5 = v4;
      if (!a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      TSWPParagraphEnumerator::previous((a1 + 104), &v30);
      v6 = TSWPParagraphEnumerator::paragraphStyle(&v30, 0);
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);
      objc_msgSend_floatValueForProperty_(v6, v7, 88);
      v9 = v8;
      v10 = sub_276DD2960(a1 + 80);
      v13 = ((v9 * objc_msgSend_scaleTextPercent(v10, v11, v12)) / -100.0);

      if (v4 + v13 >= 0.0)
      {
        v5 = v4 + v13;
      }

      else
      {
        v5 = 0.0;
      }

      if (!a2)
      {
LABEL_14:
        if (*(a1 + 440))
        {
          v14 = (a1 + 440);
          v15 = 0.0;
          if (a2 && !TSWPParagraphEnumerator::isFirstParagraph((a1 + 104)))
          {
            if (!v6)
            {
              TSWPParagraphEnumerator::previous((a1 + 104), &v30);
              v6 = TSWPParagraphEnumerator::paragraphStyle(&v30, 0);
              TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);
            }

            if (objc_msgSend_intValueForProperty_(v6, v16, 105) == 15)
            {
              TSWPParagraphEnumerator::previous((a1 + 104), &v30);
              sub_276D861E8(v27, &v30, v6);
              v17 = *v27;
              v15 = *&v27[1];
              v18 = *&v27[2];
              v20 = v27[3];
              v19 = v28;
              v28 = 0;
              v21 = v29;
              TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);
              goto LABEL_23;
            }
          }

          v20 = 0;
          v19 = 0;
          v21 = 0;
          v18 = 0.0;
LABEL_22:
          v17 = 0.0;
LABEL_23:
          if (*v14 != 15 && (*v14 & 1) != 0)
          {
            goto LABEL_42;
          }

          if (*v14 == 15)
          {
            sub_276D8639C(&v30, a1 + 80);
            if (LOBYTE(v30.var5) == v21 && *&v30.var2 == v18 && *&v30.var0 == v17 && *&v30.var1 == v15 && v30.var3 == v20)
            {
              isEqual = objc_msgSend_isEqual_(v30.var4, v23, v19, *&v30.var1);

              if (isEqual)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

LABEL_42:
            v25 = *(a1 + 464) + *(a1 + 448);
            if (v25 > 0.0)
            {
              v5 = v5 + v25;
            }
          }

LABEL_44:

          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

LABEL_13:
    if ((*(a1 + 528) & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_14;
  }

  if (*(a1 + 440))
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v6 = 0;
    v15 = 0.0;
    v18 = 0.0;
    v14 = (a1 + 440);
    goto LABEL_22;
  }

  v6 = 0;
LABEL_45:

  return v5;
}

void sub_276D86154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, TSWPParagraphEnumerator *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_276D861E8(uint64_t a1, TSWPParagraphEnumerator *a2, void *a3)
{
  v5 = a3;
  v7 = TSWPParagraphEnumerator::paragraphRunsRightToLeft(a2, v6);
  objc_msgSend_floatValueForProperty_(v5, v8, 80);
  v10 = v9;
  objc_msgSend_floatValueForProperty_(v5, v11, 81);
  v13 = v12;
  objc_msgSend_floatValueForProperty_(v5, v14, 82);
  v16 = v15;
  objc_opt_class();
  v18 = objc_msgSend_valueForProperty_(v5, v17, 100);
  v19 = TSUDynamicCast();
  objc_msgSend_sizeValue(v19, v20, v21);
  v23 = v22;
  v25 = TSWPParagraphEnumerator::paragraphRunsRightToLeft(a2, v24);
  IsRTL = objc_msgSend_tswpBorderPositionValueParagraphIsRTL_(v5, v26, v25);
  objc_opt_class();
  v29 = objc_msgSend_valueForProperty_(v5, v28, 98);
  v30 = TSUDynamicCast();
  v32 = objc_msgSend_intValueForProperty_(v5, v31, 106);
  sub_276D8D034(a1, v7, IsRTL, v30, v32 != 0, v10, v13, v16, v23);

  return a1;
}

uint64_t sub_276D8639C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 349);
  v6 = *(a2 + 224);
  v5 = *(a2 + 232);
  v7 = *(a2 + 216);
  v8 = *(a2 + 368);
  v9 = *(a2 + 360);
  v10 = sub_276DD29C0(a2);
  sub_276D8D034(a1, v4, v9, v10, *(a2 + 376), v5, v7, v6, v8);

  return a1;
}

void sub_276D86444()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

uint64_t sub_276D86488(uint64_t result, char *a2, _BYTE *a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  v11 = result;
  v12 = *(result + 56);
  if (*(result + 56))
  {
    v13 = v12 == 7;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (v12 != 3)
    {
      return result;
    }

    result = sub_276D87910(result, a2, a3);
    if (result)
    {
      return result;
    }
  }

  if (*(v11 + 80) == *(v11 + 176))
  {
    if (a4 != 4 && ((a6 ^ 1) & *(v11 + 472) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (a4 != 4)
  {
    goto LABEL_15;
  }

  *a2 = 1;
  *a3 = 1;
LABEL_15:
  if ((a5 & 1) != 0 || a4 <= 0xF && ((1 << a4) & 0x9070) != 0 || (*(v11 + 32) & 1) != 0 && (result = IsParagraphBreakingCharacter(a4), a4 != 11) && result)
  {
    *a2 = 1;
  }

  return result;
}

void sub_276D8657C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_hasTrackedChanges(*(a1 + 8), a2, a3))
  {
    v4 = [TSWPFilteredStorage alloc];
    v5 = *(a1 + 8);
    v7 = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), v6);
    v9 = objc_msgSend_initWithStorage_subRange_(v4, v8, v5, v7, v8);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  v10 = v9;
  sub_276DD29B8(a1 + 80, v9);
}

uint64_t sub_276D8663C(uint64_t a1, int a2, _BYTE *a3, double a4, double a5, double a6)
{
  v12 = sub_276DD29E0(a1 + 80);

  if (!v12)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 4668, 0, "Bad _state.attachmentBeingPaginated()");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (a2)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = sub_276D85E98(a1, a2 != 0);
  v23 = sub_276DD2960(a1 + 80);
  objc_msgSend_wpBounds(v23, v24, v25);
  rect = v26;
  v27 = v21 + v22;

  v28 = v27 + a4;
  v29 = *(a1 + 296);
  if (a5 - (v29 + *(a1 + 304)) >= 18.0)
  {
    v30 = a5 - (v29 + *(a1 + 304));
  }

  else
  {
    v30 = 18.0;
  }

  v31 = sub_276DD2B18(a1 + 80);
  v32 = a6 - v28;
  if (a6 - v28 < 0.0)
  {
    v32 = 0.0;
  }

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = v30;
  }

  else
  {
    v33 = 1.0e10;
  }

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = v32;
  }

  else
  {
    v34 = 49950000.0;
  }

  if (v34 == 0.0)
  {
    operator new();
  }

  v76[0] = 0;
  if (objc_opt_respondsToSelector())
  {
    v35 = *(a1 + 888);
    v36 = sub_276DD29E0(a1 + 80);
    v38 = objc_msgSend_parentLayoutForPartitionableAttachment_atPosition_(v35, v37, v36, rect + v29, v27 + a4);
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_276DD29F0(a1 + 80);
  v40 = sub_276DD2940(a1 + 80);
  v42 = objc_msgSend_nextLayoutForSize_parentLayout_previousHint_horizontally_outFinished_(v39, v41, v38, v40, 0, v76, v33, v34);

  if (v42)
  {
    v45 = objc_msgSend_parent(v42, v43, v44);
    v47 = v45;
    if (v45)
    {
      v48 = v45 == v38;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      v49 = objc_msgSend_addPartitionableAttachmentLayout_(*(a1 + 888), v46, v42);
      objc_msgSend_updateChildrenFromInfo(v49, v50, v51);
      v54 = objc_msgSend_layoutController(v49, v52, v53);
      objc_msgSend_validateLayoutWithDependencies_(v54, v55, v49);

      *a3 = v76[0] ^ 1;
      objc_msgSend_frame(v42, v56, v57);
      objc_msgSend_alignmentFrameForInlineLayout(v49, v58, v59);
      operator new();
    }

    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)");
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 4700, 0, "Partitioned layout already has a different parent.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
  }

  else
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 4695, 0, "partitioner failed to create layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
  }

  return 0;
}

uint64_t sub_276D87118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, void ***a6, _DWORD *a7, void *a8, CGFloat *a9, _BYTE *a10)
{
  if (*(a1 + 80) == *(a1 + 88) && *(a2 + 88) == *(a2 + 80))
  {
    objc_opt_class();
    v16 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 8), v15, *(a1 + 80));
    v17 = TSUDynamicCast();

    if (!objc_msgSend_isAnchored(v17, v18, v19))
    {
      v27 = 0;
LABEL_26:

      return v27;
    }

    v63 = v17;
    v22 = objc_msgSend_drawable(v17, v20, v21);
    v67 = v22;
    if (objc_msgSend_containsObject_(*(a2 + 128), v23, v22))
    {
      v26 = *(a1 + 648) != 1 || *a7 != 0;
    }

    else
    {
      v26 = 0;
    }

    v28 = objc_msgSend_exteriorTextWrap(v22, v24, v25);
    v31 = objc_msgSend_type(v28, v29, v30);

    v34 = objc_msgSend_exteriorTextWrap(v22, v32, v33);
    v37 = objc_msgSend_type(v34, v35, v36);

    v40 = objc_msgSend_exteriorTextWrap(v67, v38, v39);
    isHTMLWrap = objc_msgSend_isHTMLWrap(v40, v41, v42);

    if (v31)
    {
      v44 = v26;
    }

    else
    {
      v44 = 1;
    }

    if (v37 == 5)
    {
      v44 = 1;
    }

    if ((v44 | isHTMLWrap))
    {
      v27 = 0;
      v17 = v63;
      v45 = v67;
LABEL_25:

      goto LABEL_26;
    }

    v17 = v63;
    v45 = v67;
    v46 = objc_opt_new();
    objc_msgSend_splitLine_lineSegmentRects_wrappableAttachments_ignoreFloatingGraphics_canvasCausedWrap_skipHint_userInfo_(*(a2 + 112), v47, v46, 0, (*(a1 + 56) & 0xFB) == 1, 0, 0, *(a2 + 120), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72));
    if (!objc_msgSend_count(v46, v48, v49))
    {
      v27 = 0;
      goto LABEL_24;
    }

    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v72 = 0;
    *v71 = *MEMORY[0x277CBF348];
    v70 = *MEMORY[0x277CBF3A8];
    if (!sub_276D8B788(a1, *(a1 + 80), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 88), *(a2 + 96), *(a2 + 104), 1, v63, *(a1 + 80), a3, 1, &v73, v50, &v72, v71, &v70, 0))
    {
      goto LABEL_21;
    }

    v69 = 0.0;
    objc_msgSend_makeEmpty(v46, v51, v52);
    objc_msgSend_splitLine_lineSegmentRects_wrappableAttachments_ignoreFloatingGraphics_canvasCausedWrap_skipHint_userInfo_(*(a2 + 112), v53, v46, v50, (*(a1 + 56) & 0xFB) == 1, 0, &v69, *(a2 + 120), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72));
    if (objc_msgSend_count(v46, v54, v55))
    {
      goto LABEL_21;
    }

    MaxY = CGRectGetMaxY(*a2);
    v58 = *(a2 + 88);
    v59 = v69;
    if (v69 < 1.0)
    {
      v59 = 1.0;
    }

    v60 = floor(v58 + v59);
    if (MaxY <= v60)
    {
      v61 = *(a2 + 40);
    }

    else
    {
      v61 = *(a2 + 40);
      if (MaxY - v60 >= v61)
      {
LABEL_21:
        v27 = 0;
LABEL_22:

LABEL_24:
        goto LABEL_25;
      }
    }

    sub_276D84848(a1, a4, a5, &v68, *(a2 + 48), v58, *(a2 + 64), *(a2 + 32) + v61);
    sub_276D6F828(*a6, &v68);
    ++*a7;
    v62 = *(a1 + 80);
    *(a1 + 88) = v62;
    sub_276D74874(a3, v62);
    *(a3 + 8) = *(a1 + 88);
    *a8 = 0;
    *a9 = CGRectGetMaxY(*a2);
    *a10 = 1;
    if (*(&v68 + 1))
    {
      sub_276D5EEA0(*(&v68 + 1));
    }

    v27 = 1;
    v45 = v67;
    goto LABEL_22;
  }

  return 0;
}

void sub_276D87570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_276D5EEA0(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276D87638(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = sub_276DD2B34(a1 + 80);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276D89D04;
  v6[3] = &unk_27A6F4238;
  v6[4] = &v7;
  v6[5] = a1;
  objc_msgSend_enumerateObjectsUsingBlock_(v2, v3, v6);

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_276D876FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276D87720(uint64_t a1, const char *a2, uint64_t a3, int a4, double a5)
{
  v9 = objc_msgSend_footnoteRangeForTextRange_(*(a1 + 8), a2, a2, a3);
  if (v9 >= &v10[v9])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v9;
  v12 = v10;
  while (1)
  {
    v28 = 0;
    v13 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(*(a1 + 8), v10, v11, &v28);
    if ((objc_msgSend_hasHiddenTextAtCharIndex_(*(a1 + 8), v14, v28) & 1) == 0)
    {
      v15 = sub_276DD2A08(a1 + 80);
      v18 = objc_msgSend_containedStorage(v13, v16, v17);
      objc_msgSend_addFootnoteReferenceStorage_(v15, v19, v18);

      if (a4)
      {
        if (*(a1 + 256) == *(a1 + 240))
        {
          v20 = sub_276DD2A08(a1 + 80);
          objc_msgSend_footnoteBlockHeightForTarget_(v20, v21, *(a1 + 888));
          v23 = v22;

          if (v23 > a5 && vabdd_f64(a5, v23) >= 0.00999999978 && v28 != a2)
          {
            break;
          }
        }
      }
    }

    ++v11;
    if (!--v12)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (a2 <= v28 + 1)
  {
    v26 = v28 + 1;
  }

  else
  {
    v26 = a2;
  }

  if (a2 >= v28 + 1)
  {
    v27 = v28 + 1;
  }

  else
  {
    v27 = a2;
  }

  sub_276D88328(a1, v27, v26 - v27);
  v24 = v28;

  return v24;
}

double sub_276D878D8(double *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 272) == 2)
  {
    return v2 + *(a2 + 312) * *(a2 + 280);
  }

  else
  {
    return v2 + a1[5] + fmax(a1[2], a1[1]);
  }
}

BOOL sub_276D87910(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_wpKind(*(a1 + 8), a2, a3) || objc_msgSend_wpKind(*(a1 + 8), v4, v5) == 7)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "BOOL TSWPLayoutChore::pIsLastColumn() const");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 6097, 0, "pIsLastColumn doesn't work on the body or TOC");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (!objc_msgSend_isLastTarget(*(a1 + 888), v4, v6))
  {
    return 0;
  }

  v16 = objc_msgSend_columns(*(a1 + 888), v14, v15);
  v19 = objc_msgSend_lastObject(v16, v17, v18);
  v20 = sub_276DD2960(a1 + 80);
  v21 = v19 == v20;

  return v21;
}

uint64_t sub_276D87A40(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  v10 = objc_opt_new();
  v13 = objc_msgSend_currentInlineDrawableLayouts(*(a1 + 888), v11, v12);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_276D8C260;
  v52[3] = &unk_27A6F42B0;
  v52[4] = v10;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v14, v52);
  v15 = v9 + v8;

  v17 = objc_msgSend_attachmentIndexRangeForTextRange_(*(a1 + 8), v16, a2, v15 - a2);
  v19 = v18;
  if (v17 < v17 + v18)
  {
    v49 = v15;
    v50 = v10;
    v20 = 0x277D81000uLL;
    while (1)
    {
      v51 = 0;
      objc_opt_class();
      v22 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(*(a1 + 8), v21, v17, &v51);
      v23 = TSUDynamicCast();

      if (v23)
      {
        if ((objc_msgSend_isAnchored(v23, v24, v25) & 1) == 0)
        {
          v28 = objc_msgSend_drawable(v23, v26, v27);

          if (v28)
          {
            v31 = objc_msgSend_drawable(v23, v29, v30);
            v33 = objc_msgSend_objectForKey_(v10, v32, v31);

            if (v33)
            {
              if (objc_msgSend_invalidGeometry(v33, v34, v35))
              {
                v38 = *(v20 + 336);
                v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "TSWPCharIndex TSWPLayoutChore::pFindCharIndexOfRunThatMadeUsGrowToLineHeightGuess(CGFloat, CGFloat, TSWPCharIndex)");
                v40 = v20;
                v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 5956, 0, "Expected valid layout");

                v20 = v40;
                v44 = *(v40 + 336);
                v10 = v50;
                objc_msgSend_logBacktraceThrottled(v44, v45, v46);
              }

              objc_msgSend_alignmentFrameForInlineLayout(v33, v36, v37, v49);
              if (vabdd_f64(v47 + a4, a3) <= 1.0)
              {
                v15 = v51;

                break;
              }
            }
          }
        }
      }

      ++v17;
      if (!--v19)
      {
        v15 = v49;
        break;
      }
    }
  }

  return v15;
}

uint64_t sub_276D87D34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double *a7, double *a8, double a9, double a10, double a11, void *a12)
{
  v23 = a2;
  v90[0] = 0;
  if (*(a1 + 56))
  {
    v24 = 0;
    *(a1 + 88) = *(a1 + 80);
    goto LABEL_38;
  }

  v81 = v23;
  v25 = objc_msgSend_attachmentIndexForInsertionAtCharIndex_(*(a1 + 8), v22, *(a1 + 88));
  v89 = *(a1 + 88);
  v26 = sub_276DD2960(a1 + 80);
  objc_msgSend_wpBounds(v26, v27, v28);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v88 = 0;
  v91.origin.x = v30;
  v91.origin.y = v32;
  v91.size.width = v34;
  v91.size.height = v36;
  v85 = CGRectGetMinX(v91) + *(a5 + 264);
  v92.origin.x = v30;
  v92.origin.y = v32;
  v92.size.width = v34;
  v92.size.height = v36;
  v78 = a7;
  v79 = a8;
  v86 = CGRectGetMaxX(v92) - *(a5 + 224);
  v87 = (v86 - v85) * 0.5;
  v88 = 0;

  if (v25 >= *(a1 + 72))
  {
    v54 = 0;
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    v80 = a9;
    v39 = a9;
    goto LABEL_26;
  }

  v77 = a6;
  v39 = a9;
  v80 = a9;
  while (1)
  {
    while (1)
    {
      v84 = 0;
      objc_opt_class();
      v41 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(*(a1 + 8), v40, v25, &v84);
      v42 = TSUDynamicCast();

      if (v84 >= a3 + a4)
      {

LABEL_25:
        v54 = 0;
        v55 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }

      if (v42 && v84 >= *(a1 + 88) && objc_msgSend_isAnchored(v42, v43, v44) && ((objc_msgSend_isHTMLWrap(v42, v45, v46) & 1) != 0 || (*(a1 + 648) & 1) == 0))
      {
        break;
      }

LABEL_13:

      if (++v25 >= *(a1 + 72))
      {
        goto LABEL_25;
      }
    }

    v49 = objc_msgSend_drawable(v42, v47, v48);
    if (objc_msgSend_containsObject_(v23, v50, v49))
    {

      goto LABEL_13;
    }

    v83 = *MEMORY[0x277CBF348];
    v82 = *MEMORY[0x277CBF3A8];
    if ((sub_276D8B788(a1, a3, v30, v32, v34, v36, a9, a10, a11, a4, v42, v84, a5, v77, &v89, v23, v90, &v83, &v82, &v85) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_isHTMLWrap(v42, v51, v52))
    {
      v80 = fmax(v80, *(&v83 + 1) + *(&v82 + 1));
    }

    else
    {
      v53 = *(&v82 + 1);
      if ((*(a1 + 32) & 0x10) != 0)
      {
        v53 = 0.0;
      }

      v39 = fmax(v39, *(&v83 + 1) + v53);
    }

    ++v25;

    v54 = 0;
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    if (v25 >= *(a1 + 72))
    {
      goto LABEL_26;
    }
  }

  if (v89 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v55 = v89;
  }

  v54 = 1;
LABEL_26:
  if (v88)
  {
    v58 = objc_msgSend_count(v88, v37, v38);
    if (v58)
    {
      v59 = 0;
      v60 = 0.0;
      v61 = 1;
      do
      {
        v62 = objc_msgSend_objectAtIndexedSubscript_(v88, v56, v59);
        v63 = sub_276D7AD14(a1, v62);
        v60 = v60 + sub_276D8BFB8(v63);

        v59 = v61;
        v64 = v58 > v61++;
      }

      while (v64);
      v57 = 0;
      v65 = v85 + fmax(v87 + v60 * -0.5, 0.0);
      v66 = 1;
      do
      {
        v67 = objc_msgSend_objectAtIndexedSubscript_(v88, v56, v57);
        v68 = sub_276D7AD14(a1, v67);
        v69 = objc_opt_respondsToSelector();
        v72 = v65;
        if (v69)
        {
          objc_msgSend_layoutPositionFromAnchoredAttachmentPosition_(*(a1 + 888), v70, v71, v65, a9);
        }

        objc_msgSend_setAdjustedInterimPositionX_(v68, v70, v71, v72);
        objc_msgSend_fixTransformFromInterimPosition(v68, v73, v74);
        v65 = v65 + sub_276D8BFB8(v68);

        v57 = v66;
        v64 = v58 > v66++;
      }

      while (v64);
    }

    objc_msgSend_removeAllObjects(v88, v56, v57);
    v75 = v88;
    v88 = 0;
  }

  if ((v54 & 1) == 0)
  {
    v55 = *(a1 + 80);
  }

  *(a1 + 88) = v55;
  *v78 = v39;
  *v79 = v80;
  *a12 = 0;

  v24 = v90[0];
  v23 = v81;
LABEL_38:

  return v24;
}

BOOL sub_276D88298(uint64_t a1, unint64_t a2, uint64_t a3, void **a4)
{
  v4 = a2 + a3;
  if (a2 >= a2 + a3)
  {
    return 0;
  }

  if ((*(sub_276D6F7E8(*a4, a2) + 24) & 8) != 0)
  {
    return 1;
  }

  v8 = a2 + 1;
  v9 = a3 - 1;
  do
  {
    v10 = v8;
    if (!v9)
    {
      break;
    }

    v11 = sub_276D6F7E8(*a4, v8);
    v8 = v10 + 1;
    --v9;
  }

  while ((*(v11 + 24) & 8) == 0);
  return v10 < v4;
}

void sub_276D88328(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_footnoteRangeForTextRange_(*(a1 + 8), a2, a2, a3);
  if (v4 < &v5[v4])
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v8 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(*(a1 + 8), v5, v6, 0);
      v9 = sub_276DD2A08(a1 + 80);
      v12 = objc_msgSend_containedStorage(v8, v10, v11);
      objc_msgSend_removeFootnoteReferenceStorage_(v9, v13, v12);

      ++v6;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_276D88400(uint64_t result, uint64_t a2)
{
  v2 = *(result + 440);
  if (v2)
  {
    v3 = fmax(*(result + 464) + *(result + 448), 0.0);
    v4 = *(a2 + 72);
    v5 = *(a2 + 80);
    v6 = *(a2 + 88);
    v7 = *(a2 + 96);
    v8 = v2 >> 2;
    if ((*(a2 + 24) & 0x1000) != 0)
    {
      v9 = v2 >> 3;
    }

    else
    {
      v9 = v2 >> 2;
    }

    if ((*(a2 + 24) & 0x1000) == 0)
    {
      v8 = v2 >> 3;
    }

    if (v9)
    {
      v6 = v6 + v3;
      v4 = v4 - v3;
    }

    if (v8)
    {
      v6 = v3 + v6;
    }

    if (v2)
    {
      v7 = v3 + v7;
      v5 = v5 - v3;
    }

    v10 = v3 + v7;
    *(a2 + 72) = v4;
    *(a2 + 80) = v5;
    if ((v2 & 2) == 0)
    {
      v10 = v7;
    }

    *(a2 + 88) = v6;
    *(a2 + 96) = v10;
  }

  return result;
}

uint64_t sub_276D88488(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_276D7B078(a1, a2, a3);
  v8 = v5;
  if (v5 && (location = objc_msgSend_nextWidowPullsDownFromCharIndex(v5, v6, v7), v12 = objc_msgSend_range(v8, v10, v11), location != *a2))
  {
    v14 = v12;
    sub_276DD288C(v92, a2);
    v15 = *(a1 + 8);
    v19 = objc_msgSend_styleProvider(*(a1 + 24), v16, v17);
    if (v15)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v15, v18, location, v19);
    }

    else
    {
      memset(&v91, 0, sizeof(v91));
    }

    if (TSWPParagraphEnumerator::paragraphTextRange(&v91, v20) == location)
    {
      v23 = 0;
      while (!TSWPParagraphEnumerator::isFirstParagraph(&v91))
      {
        TSWPParagraphEnumerator::operator--(&v91, v21);
        v24 = TSWPParagraphEnumerator::paragraphStyle(&v91, &v90);
        v26 = v24;
        if (v90.location <= v14 || !objc_msgSend_intValueForProperty_(v24, v25, 90))
        {

          break;
        }

        location = v90.location;
        TSWPParagraphEnumerator::operator--(&obj, v27);
        v94 = v90;
        sub_276DD2948(v92, 0);

        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }

    v28 = objc_msgSend_range(v8, v21, v22);
    if (location <= &v29[v28])
    {
      v30 = &v29[v28];
    }

    else
    {
      v30 = location;
    }

    if (location >= &v29[v28])
    {
      v31 = &v29[v28];
    }

    else
    {
      v31 = location;
    }

    v32 = &v30[-v31];
    objc_msgSend_footnoteRangeForTextRange_(*(a1 + 8), v29, v31, &v30[-v31]);
    v34 = v33;
    v35 = *(a1 + 888);
    v36 = objc_msgSend_autoNumberFootnoteCountForRange_(*(a1 + 8), v33, v31, v32);
    objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v8, v37, location, v35, v34, v36);
    if (v23)
    {
      objc_storeStrong((a1 + 104), obj.var0);
      objc_storeStrong((a1 + 112), obj.var1);
      *(a1 + 120) = *&obj.var2;
      *(a1 + 136) = *&obj.var4;
      *(a1 + 152) = *&obj.var6;
      *(a1 + 168) = obj.var7.length;
      *(a1 + 176) = v94;
      sub_276D74874(a1 + 80, location);
      sub_276D78C18(a1, 0, 0x7FFFFFFFFFFFFFFFLL);
    }

    else if (location >= v94.location)
    {
      sub_276D74874(v92, location);
      v95 = &v92[0][-v94.location];
      sub_276DD2948(v92, 0);
      if (v92[0] > *(a1 + 64))
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "BOOL TSWPLayoutChore::pPullDownLinesFromPreviousColumn(TSWPLayoutState *)");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 4927, 0, "Bad pullDownLayoutState.charIndex");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
      }

      if (v95 >= v94.length)
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "BOOL TSWPLayoutChore::pPullDownLinesFromPreviousColumn(TSWPLayoutState *)");
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 4928, 0, "Bad typesetterCharIndex");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
      }

      v96 = v92[0] == v94.location;
      if (v92[0] == v94.location)
      {
        sub_276D78C18(a1, v92, v92[0]);
      }

      objc_opt_class();
      v53 = TSUDynamicCast();
      v56 = v53;
      if (v53)
      {
        objc_msgSend_wpBounds(v53, v54, v55);
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v67 = objc_msgSend_lineFragmentArray(v56, v65, v66);
        sub_276D8951C(a1 + 80, v67, v58, v60, v62, v64);
        objc_msgSend_clearAdornments(v56, v68, v69);
        v70 = *(a1 + 640);
        if ((v70 & 0x80000) != 0)
        {
          v71 = sub_276DD2970(a1 + 80);
          v74 = objc_msgSend_styleProvider(*(a1 + 24), v72, v73);
          sub_276D7FC90(v56, v71, v74, *(a1 + 888));

          v70 = *(a1 + 640);
        }

        if ((v70 & 0x100000) != 0)
        {
          v75 = sub_276DD2970(a1 + 80);
          v78 = objc_msgSend_styleProvider(*(a1 + 24), v76, v77);
          sub_276D81034(v56, v75, v78, *(a1 + 888));

          v70 = *(a1 + 640);
        }

        if ((v70 & 0x200000) != 0)
        {
          v79 = sub_276DD2970(a1 + 80);
          v82 = objc_msgSend_styleProvider(*(a1 + 24), v80, v81);
          sub_276D812E0(v56, v79, v82, *(a1 + 888));
        }
      }

      sub_276D77748(a1, v92);
      (*(**(a1 + 896) + 32))(*(a1 + 896), *(a1 + 512));
    }

    v83 = sub_276DD2960(a1 + 80);
    objc_msgSend_setStartCharIndex_(v83, v84, *(a1 + 80));

    v85 = *(a1 + 872) - *(a1 + 864);
    if (v85)
    {
      v86 = 0x7D6343EB1A1F58D1 * (v85 >> 4);
      v87 = v85 - 784;
      do
      {
        v88 = *(a1 + 864);
        if (*(v88 + v87) > *(a1 + 80))
        {
          sub_276DD2918(v88 + v87, a1 + 80);
        }

        v87 -= 784;
        --v86;
      }

      while (v86);
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v91);
    sub_276DD2914(v92);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_276D88A14(_Unwind_Exception *a1, uint64_t a2, TSWPParagraphEnumerator *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(va);
  sub_276DD2914(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_276D88ACC(uint64_t a1, void **a2)
{
  if (sub_276D6F7D8(*a2) != 1)
  {
    return 0;
  }

  result = sub_276D6F7E8(*a2, 0);
  if (result)
  {
    return (*(result + 24) >> 6) & 1;
  }

  return result;
}

uint64_t sub_276D88B1C(uint64_t a1, void **a2)
{
  if (sub_276D6F7D8(*a2) != 1)
  {
    return 0;
  }

  result = sub_276D6F7E8(*a2, 0);
  if (result)
  {
    return *(result + 28) & 1;
  }

  return result;
}

uint64_t sub_276D88B6C(uint64_t a1, void **a2, _WORD *a3, _BYTE *a4, NSUInteger a5, void *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = a6;
  v20 = sub_276D6F80C(*a2);
  v21 = v20;
  if (v20)
  {
    v23 = (a1 + 176);
    v22 = *(a1 + 176);
    v24 = *v20 >= v22 && v20[1] + *v20 < *(a1 + 184) + v22;
    if (*(a1 + 425) & 1) != 0 || (*(a1 + 424) & 1) != 0 || (*(a1 + 426) & 1) != 0 || !v24 && (*(a1 + 427))
    {
      v98 = v19;
      v26 = sub_276D6F7D8(*a2);
      v94 = v26;
      v95 = a3;
      v27 = v26 - 1;
      v99 = *(a1 + 80);
      v96 = a4;
      if (!v24)
      {
        v32 = 0;
LABEL_23:
        v97 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_24;
      }

      v93 = v26 - 1;
      v27 = sub_276D6FBAC(*a2, v23->location);
      v28 = sub_276D6F7E8(*a2, v27);
      v29 = v28[3];
      v30 = *v28;
      if (*v28 > a5 && ((*(a1 + 426) & 1) != 0 || *(a1 + 425) == 1))
      {
        v32 = v94 - v27;
        v99 = v23->location;
        goto LABEL_23;
      }

      if (*(a1 + 424) != 1 || (*(v21 + 24) & 1) != 0)
      {
        goto LABEL_16;
      }

      v31 = sub_276D6C2CC(v21, a7, a8, a9, a10);
      v92 = v94 - v27;
      v97 = *v28;
      if ((v29 & 0x100000000) != 0)
      {
        if (v31)
        {
          objc_opt_class();
          v91 = sub_276D64990(v28);
          v78 = TSUDynamicCast();
          v81 = objc_msgSend_dropCap(v78, v79, v80);

          v84 = objc_msgSend_numberOfLines(v81, v82, v83);
          v87 = objc_msgSend_numberOfRaisedLines(v81, v85, v86);
          if (v30 > a5 && v87 + 1 == v84 && v92 == 2)
          {
            v99 = v23->location;
            v97 = 0x7FFFFFFFFFFFFFFFLL;
            v32 = 2;
          }

          else
          {
            v32 = 0;
            if (!v27)
            {
              if (v28[3] < 0)
              {
                v90 = MEMORY[0x277D81490];
              }

              else
              {
                v90 = v28;
              }

              v97 = *v90 + v90[1];
            }

            v27 = v93;
          }

          goto LABEL_24;
        }
      }

      else if (v31)
      {
        goto LABEL_16;
      }

      if (v92 != 1 || v30 <= a5)
      {
        if (v92 == 2 && v30 > a5)
        {
          v88 = sub_276D6C2CC(v28, a7, a8, a9, a10);
          v32 = 0;
          v89 = v97;
          if (v88)
          {
            v89 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v97 = v89;
          goto LABEL_18;
        }

        if (v92 >= 3)
        {
          v32 = 0;
          v33 = *v21;
          goto LABEL_17;
        }

LABEL_16:
        v32 = 0;
        v33 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
        v97 = v33;
LABEL_18:
        v27 = v93;
        goto LABEL_24;
      }

      v99 = v23->location;
      v97 = 0x7FFFFFFFFFFFFFFFLL;
      v32 = 1;
LABEL_24:
      TSWPParagraphEnumerator::TSWPParagraphEnumerator(&location, (a1 + 104));
      if (v32 != 0 || !v24)
      {
        v35 = v99;
        if (v99 && v99 < *(a1 + 64))
        {
          v102 = *v23;
          TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v101, &location);
          v36 = 0;
          while (!TSWPParagraphEnumerator::isFirstParagraph(&v101))
          {
            TSWPParagraphEnumerator::operator--(&v101, v37);
            v38 = TSWPParagraphEnumerator::paragraphStyle(&v101, &v102);
            v40 = v38;
            if (v102.length + v102.location <= a5)
            {
              goto LABEL_68;
            }

            if (!objc_msgSend_intValueForProperty_(v38, v39, 90))
            {
              if (v36)
              {
                v35 = v102.length + v102.location;
                v27 = sub_276D6FBAC(*a2, v102.length + v102.location);
                TSWPParagraphEnumerator::next(&v101, &obj);
                v32 = v94 - v27;
                objc_storeStrong(&location.var0, obj.var0);
                objc_storeStrong(&location.var1, obj.var1);
                *&location.var2 = *&obj.var2;
                *&location.var4 = *&obj.var4;
                *&location.var6 = *&obj.var6;
                location.var7.length = obj.var7.length;
                TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&obj);
              }

LABEL_68:

              break;
            }

            v36 = 1;
          }

          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v101);
          if (!v32)
          {
            goto LABEL_64;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v35 = v99;
      }

      if (!v32)
      {
LABEL_64:
        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&location);
        v25 = v97;
        v19 = v98;
        goto LABEL_65;
      }

LABEL_34:
      v41 = v35;
      if (!v27)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "TSWPCharIndex TSWPLayoutChore::pHandleOrphanAndKeepTogether(const line_fragment_array_ptr &, unichar *, BOOL *, CGRect, TSWPCharIndex, __strong id<TSDHint>)");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 5873, 0, "Trying to push down the first line of a column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
      }

      for (i = 0; i != v32; ++i)
      {
        v50 = sub_276D6F7E8(*a2, v27 + i);
        v51 = sub_276D6493C(v50);

        if (v51)
        {
          v52 = sub_276D6493C(v50);
          objc_msgSend_removeFromParent(v52, v53, v54);
        }
      }

      if (v50 && (*(v50 + 24) & 1) != 0)
      {
        sub_276DD2948(a1 + 80, v98);
        *(a1 + 577) = 0;
      }

      (*(**(a1 + 896) + 24))(*(a1 + 896));
      v55 = MEMORY[0x277D81490];
      *v23 = *MEMORY[0x277D81490];
      sub_276D74874(a1 + 80, v41);
      objc_storeStrong((a1 + 104), location.var0);
      objc_storeStrong((a1 + 112), location.var1);
      v56 = *&location.var4;
      *(a1 + 120) = *&location.var2;
      *(a1 + 136) = v56;
      *(a1 + 152) = *&location.var6;
      *(a1 + 168) = location.var7.length;
      sub_276D78C18(a1, 0, 0x7FFFFFFFFFFFFFFFLL);
      v58 = v23->location;
      if (v23->location)
      {
        v59 = v58 - 1;
        v60 = objc_msgSend_characterAtIndex_(*(a1 + 8), v57, v58 - 1);
        v61 = v60;
        hasSectionForParagraphBreakAtCharIndex = IsParagraphBreakingCharacter(v60);
        if (hasSectionForParagraphBreakAtCharIndex)
        {
          if (objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(*(a1 + 8), v63, v59))
          {
            hasSectionForParagraphBreakAtCharIndex = 1;
          }

          else
          {
            hasSectionForParagraphBreakAtCharIndex = objc_msgSend_hasSectionForParagraphBreakAtCharIndex_(*(a1 + 8), v64, v59);
          }
        }
      }

      else
      {
        hasSectionForParagraphBreakAtCharIndex = 0;
        v61 = 0;
      }

      *v95 = v61;
      *v96 = hasSectionForParagraphBreakAtCharIndex;
      if (sub_276D88298(hasSectionForParagraphBreakAtCharIndex, v27, v32, a2))
      {
        *(a1 + 576) = 1;
      }

      v65 = sub_276D6F7E8(*a2, v27);
      if (*(v65 + 24) < 0)
      {
        v66 = v55;
      }

      else
      {
        v66 = v65;
      }

      v67 = *v66;
      v68 = sub_276D6F7E8(*a2, v32 + v27 - 1);
      if (*(v68 + 24) < 0)
      {
        v69 = v55;
      }

      else
      {
        v69 = v68;
      }

      v70 = (*v69 + v69[1]);
      if (v67 <= v70)
      {
        v71 = v70;
      }

      else
      {
        v71 = v67;
      }

      if (v67 >= v70)
      {
        v72 = v70;
      }

      else
      {
        v72 = v67;
      }

      sub_276D88328(a1, v72, v71 - v72);
      v73 = *(sub_276D6F7E8(*a2, v27) + 48);
      v74 = sub_276DD2960(a1 + 80);
      objc_msgSend_setNextLinePosition_(v74, v75, v76, v73);

      sub_276D6F994(*a2, v27, v32);
      goto LABEL_64;
    }
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_65:

  return v25;
}

void sub_276D89334(uint64_t a1, void **a2)
{
  if ((*(a1 + 666) & 1) == 0)
  {
    v4 = sub_276D6F80C(*a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 160);
      if (v6 != 0.0)
      {
        v7 = *(a1 + 176);
        v9 = *v4 >= v7;
        v8 = *v4 - v7;
        v9 = !v9 || v8 >= *(a1 + 184);
        if (v9)
        {
          v10 = sub_276D89648(a1, *v4);
          objc_msgSend_floatValueForProperty_(v10, v11, 88);
          v13 = v12;
          v14 = sub_276DD2960(a1 + 80);
          v17 = ((v13 * objc_msgSend_scaleTextPercent(v14, v15, v16)) / 100.0);

          v6 = *(v5 + 160);
        }

        else
        {
          v17 = *(a1 + 408);
        }

        v18 = v6 >= v17 ? v17 : v6;
        v19 = *(v5 + 32);
        v20 = sub_276D6F7D8(*a2);
        if (v20)
        {
          v21 = v6 - v18;
          v22 = v20 - 1;
          do
          {
            v23 = sub_276D6F7E8(*a2, v22);
            if (*(v23 + 32) != v19)
            {
              break;
            }

            v24 = v23;
            TSURectWithOriginAndSize();
            *(v24 + 40) = v25;
            *(v24 + 48) = v26;
            *(v24 + 56) = v27;
            *(v24 + 64) = v28;
            TSURectWithOriginAndSize();
            *(v24 + 72) = v29;
            *(v24 + 80) = v30;
            *(v24 + 88) = v31;
            *(v24 + 96) = v32;
            v33 = sub_276D6492C(v24);

            if (v33)
            {
              v34 = *(v24 + 72);
              v35 = *(v24 + 80);
              v36 = *(v24 + 88);
              v37 = *(v24 + 96);
              v42.origin.x = sub_276D69474(v24);
              v42.origin.y = v38;
              v42.size.width = v39;
              v42.size.height = v40;
              v41.origin.x = v34;
              v41.origin.y = v35;
              v41.size.width = v36;
              v41.size.height = v37;
              *(v24 + 72) = CGRectUnion(v41, v42);
            }

            *(v24 + 160) = v21;
            --v22;
          }

          while (v22 != -1);
        }
      }
    }
  }
}

void sub_276D8951C(uint64_t a1, void **a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (sub_276D6F7D8(*a2))
  {
    v12 = sub_276DD29C0(a1);
    if (v12)
    {
    }

    else if (*(a1 + 377) != 1)
    {
      return;
    }

    v13 = sub_276D6F80C(*a2);
    v14 = v13[9];
    v15 = v13[10];
    v16 = v13[11];
    v17 = v13[12];
    v27.origin.x = v14;
    v27.origin.y = v15;
    v27.size.width = v16;
    v27.size.height = v17;
    MaxY = CGRectGetMaxY(v27);
    v28.size.height = a6;
    v19 = MaxY;
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v20 = CGRectGetMaxY(v28);
    v21 = sub_276DD29C0(a1);
    objc_msgSend_width(v21, v22, v23);
    v25 = v20 + v24 + *(a1 + 384);
    if (v19 < v25)
    {
      v19 = v25;
    }

    v29.origin.x = v14;
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = v17;
    MinY = CGRectGetMinY(v29);
    v13[9] = v14;
    v13[10] = v15;
    v13[11] = v16;
    v13[12] = v19 - MinY;
  }
}

id sub_276D89648(uint64_t a1, const char *a2)
{
  v4 = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), a2);
  if (a2 < v4 || &a2[-v4] >= v5)
  {
    v8 = *(a1 + 8);
    v10 = objc_msgSend_styleProvider(*(a1 + 24), v5, v6);
    if (v8)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v8, v9, a2, v10);
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    v11 = TSWPParagraphEnumerator::paragraphStyle(&v13, 0);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v13);
  }

  else
  {
    v11 = sub_276DD2950(a1 + 80);
  }

  return v11;
}

uint64_t sub_276D89738(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_intValueForProperty_(v3, v4, 86);
  v8 = *(a1 + 888);
  if (v8)
  {
    v9 = v7 == 4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v7 = objc_msgSend_naturalAlignment(v8, v5, v6);
  }

  return v7;
}

uint64_t sub_276D897A4(uint64_t a1, const char *a2)
{
  v4 = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), a2);
  if (a2 < v4 || &a2[-v4] >= v5)
  {
    v8 = *(a1 + 8);
    v10 = objc_msgSend_styleProvider(*(a1 + 24), v5, v6);
    if (v8)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v8, v9, a2, v10);
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    v11 = TSWPParagraphEnumerator::paragraphRunsRightToLeft(&v14, v12);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v14);
  }

  else
  {
    v11 = *(a1 + 429);
  }

  return v11 & 1;
}

void sub_276D89870(uint64_t a1, unint64_t ****a2)
{
  v3 = a1;
  v4 = sub_276DD2960(a1 + 80);
  v82 = objc_msgSend_anchoredRange(v4, v5, v6);
  v76 = v7;

  v9 = malloc_type_malloc(0x190uLL, 0x1000040BDFB0063uLL);
  v10 = **a2;
  v11 = (*a2)[1];
  if (v10 != v11)
  {
    v75 = v11;
    v79 = 200;
    v77 = v3;
    do
    {
      if (*(v3 + 620))
      {
        break;
      }

      v12 = *v10;
      v13 = (*v10)[3];
      if ((v13 & 0xC) != 0)
      {
        v14 = v13 < 0;
        v15 = MEMORY[0x277D81490];
        if (!v14)
        {
          v15 = *v10;
        }

        v16 = *v15;
        v17 = v15[1];
        if (v79 < v17)
        {
          v9 = malloc_type_realloc(v9, 2 * v17, 0x1000040BDFB0063uLL);
          objc_msgSend_getCharacters_range_(*(v3 + 8), v18, v9, v16, v17);
          v79 = v17;
LABEL_10:
          v78 = v12;
          v80 = v10;
          v81 = v9;
          v19 = v16 - v82;
          do
          {
            v20 = *v9++;
            if (v20 == -4)
            {
              v21 = objc_msgSend_attachmentAtCharIndex_(*(v3 + 8), v8, v16);
              if (objc_msgSend_isDrawable(v21, v22, v23) && (objc_msgSend_isPartitioned(v21, v24, v25) & 1) == 0)
              {
                v26 = v21;
                if (!objc_msgSend_isAnchored(v26, v27, v28) || v82 <= v16 && v19 < v76)
                {
                  if (objc_msgSend_isAnchored(v26, v29, v30, v75))
                  {
                    sub_276D7AD14(v3, v26);
                  }

                  else
                  {
                    sub_276D7AA9C(v3, v26);
                  }
                  v33 = ;
                  if (v33)
                  {
                    if ((objc_msgSend_isAnchored(v26, v31, v32) & 1) == 0)
                    {
                      v34 = sub_276DD2960(v3 + 80);
                      v35 = sub_276D652B0(v78, v16, v34, 0);

                      if (objc_msgSend_invalidGeometry(v33, v36, v37))
                      {
                        v40 = MEMORY[0x277D81150];
                        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "void TSWPLayoutChore::pPostProcessAttachments(const line_fragment_array_ptr &)");
                        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 4408, 0, "Expected valid layout");

                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
                        v3 = v77;
                      }

                      objc_msgSend_alignmentFrameForInlineLayout(v33, v38, v39);
                      if ((*(v3 + 32) & 0x10) != 0)
                      {
                        v64 = v49;
                        v65 = sub_276DD2960(v3 + 80);
                        v68 = v65;
                        if (v65)
                        {
                          objc_msgSend_transformFromWP(v65, v66, v67);
                          v69 = v83;
                          v70 = v84;
                          v71 = v85;
                        }

                        else
                        {
                          v71 = 0.0;
                          v70 = 0.0;
                          v69 = 0.0;
                        }

                        v72 = v71 + v35 * v70 + v69 * 0.0;

                        objc_msgSend_setAdjustedInterimPositionX_(v33, v73, v74, v72 + v64 * -0.5);
                      }

                      else
                      {
                        v51 = v50;
                        objc_msgSend_descentForInlineLayout(v33, v47, v48);
                        objc_msgSend_setAdjustedInterimPositionY_(v33, v53, v54, v35 - v51 + v52);
                      }

                      objc_msgSend_fixTransformFromInterimPosition(v33, v55, v56);
                    }
                  }

                  else
                  {
                    v57 = MEMORY[0x277D81150];
                    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "void TSWPLayoutChore::pPostProcessAttachments(const line_fragment_array_ptr &)");
                    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 4396, 0, "Could not find validated layout for attachment.");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
                    v3 = v77;
                  }
                }
              }
            }

            ++v19;
            ++v16;
            --v17;
          }

          while (v17);
          v10 = v80;
          v9 = v81;
          v11 = v75;
          goto LABEL_37;
        }

        objc_msgSend_getCharacters_range_(*(v3 + 8), v8, v9, v16, v17);
        if (v17)
        {
          goto LABEL_10;
        }
      }

LABEL_37:
      v10 += 2;
    }

    while (v10 != v11);
  }

  free(v9);
}

void sub_276D89D04(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v21 = v6;
  v10 = objc_msgSend_key(v6, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"TSWPRenderingOverrideAttributeHiddenText");

  if (isEqualToString)
  {
    *a4 = 1;
    v13 = sub_276DD29B0(v7 + 80);
    v15 = objc_msgSend_charRangeRemappedFromStorage_(v13, v14, *(v7 + 176), *(v7 + 184));

    v18 = objc_msgSend_range(v21, v16, v17);
    if (v15 >= v18 && v15 - v18 < v19)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

double sub_276D89E04(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v53 = a2;
  v9 = objc_msgSend_columns(v53, v7, v8);
  v54 = v9;
  v12 = objc_msgSend_count(v9, v10, v11);
  if (*(a1 + 248))
  {
    v14 = v12;
    v15 = 0;
    v16 = 0.0;
    v17 = 1;
    do
    {
      v56 = v16;
      v18 = a3;
      if (v14 > a3)
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(v9, v13, a3);
        v22 = objc_msgSend_lineFragmentArray(v19, v20, v21);
        v25 = *v22;
        v26 = v22[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        objc_msgSend_wpBounds(v19, v23, v24);
        v55 = v27;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        objc_msgSend_erasableBounds_(v19, v34, 0);
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        objc_msgSend_contentBlockBottom(v19, v43, v44);
        v46 = v45;

        v47 = (a4 + 88 * v15);
        v48 = v47[1];
        *v47 = v25;
        v47[1] = v26;
        if (v48)
        {
          sub_276D5EEA0(v48);
        }

        v47[2] = v55;
        v47[3] = v29;
        v47[4] = v31;
        v47[5] = v33;
        v47[6] = v36;
        v47[7] = v38;
        v47[8] = v40;
        v47[9] = v42;
        v47[10] = v46;

        v9 = v54;
      }

      v16 = *(a4 + 88 * v15 + 40);
      if (v56 != 0.0)
      {
        v49 = v56 == v16;
        v16 = v56;
        if (!v49)
        {
          v16 = 0.0;
        }
      }

      v15 = v17;
      a3 = v18 + 1;
    }

    while (*(a1 + 248) > v17++);
  }

  else
  {
    v16 = 0.0;
  }

  v51 = v16;

  return v51;
}

double sub_276D8A010(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v36 = &a2[a3];
  if (a2 >= &a2[a3])
  {
    v6 = 0;
    v7 = 0.0;
    goto LABEL_18;
  }

  v4 = a2;
  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = objc_msgSend_columns(*(a1 + 888), a2, a3);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, v4);

    objc_msgSend_minimumHeightForLayoutOnPage(v10, v11, v12);
    Height = v15;
    if (v15 > 0.0)
    {
      goto LABEL_15;
    }

    v35 = v10;
    v17 = objc_msgSend_range(v10, length, v14);
    v18 = v17;
    v19 = length;
    v20 = &length[v17];
    if (v17 >= &length[v17])
    {
      goto LABEL_14;
    }

    v14 = v17;
    while (1)
    {
      v37.location = objc_msgSend_attachmentRangeForCharIndex_forwards_(*(a1 + 8), length, v14, 1);
      v38.location = v18;
      v38.length = v19;
      v21 = NSIntersectionRange(v37, v38);
      length = v21.length;
      if (v21.length != 1)
      {
        if (!v21.length)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      objc_opt_class();
      v23 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 8), v22, v21.location);
      v24 = TSUDynamicCast();

      if (objc_msgSend_isHTMLWrap(v24, v25, v26))
      {
        break;
      }

LABEL_11:
      v14 = v21.location + v21.length;
      if (v21.location + v21.length >= v20)
      {
        goto LABEL_14;
      }
    }

    v27 = sub_276D7AD14(a1, v24);
    v30 = objc_msgSend_geometry(v27, v28, v29);
    objc_msgSend_frame(v30, v31, v32);
    Height = CGRectGetHeight(v39);

LABEL_14:
    v10 = v35;
LABEL_15:
    v7 = fmax(v7, Height);
    v6 |= objc_msgSend_lineCount(v10, length, v14) != 0;

    ++v4;
  }

  while (v4 != v36);
LABEL_18:
  if (a4)
  {
    *a4 = v6 & 1;
  }

  return v7;
}

uint64_t sub_276D8A258(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, const char *a8, __int16 a9, double *a10, double *a11, double *a12, double *a13, _BYTE *a14, _DWORD *a15)
{
  if (a2)
  {
    v88 = objc_msgSend_columnMetricsForCharIndex_outRange_(*(a1 + 888), a2, *(a1 + 80), 0);
    if (objc_msgSend_alwaysStartsNewTarget(v88, v21, v22))
    {
      v25 = v88;
      goto LABEL_5;
    }

    v86 = objc_msgSend_columns(*(a1 + 888), v23, v24);
    v87 = objc_msgSend_objectAtIndexedSubscript_(v86, v28, a3);
    if (*(a1 + 248) == 1)
    {
      objc_msgSend_contentBlockBottom(v87, v29, v30);
      v32 = v31;
      v35 = objc_msgSend_lineFragmentArray(v87, v33, v34);
      v36 = sub_276D6F80C(*v35);
      if (v36)
      {
        MaxY = CGRectGetMaxY(*(v36 + 40));
        if (v32 < MaxY)
        {
          v32 = MaxY;
        }
      }

      objc_msgSend_wpBounds(v87, v37, v38);
      *a12 = fmin(ceil(v32 - v40), a6);
      v41 = *(a1 + 888);
      v42 = *(a1 + 8);
      started = objc_msgSend_startCharIndex(v87, v43, v44);
      v46 = *a13;
      v47 = *a12;
      v50 = objc_msgSend_styleProvider(*(a1 + 24), v48, v49);
      objc_msgSend_fixColumnBoundsForTarget_storage_charIndex_firstColumnIndex_precedingHeight_height_alreadyHasMargins_styleProvider_(TSWPLayoutManager, v51, v41, v42, started, a3, 0, v50, v46, v47);
    }

    else
    {
      if (a3 <= a8)
      {
        v54 = a8;
      }

      else
      {
        v54 = a3;
      }

      if (a3 >= a8)
      {
        v55 = a8;
      }

      else
      {
        v55 = a3;
      }

      v58 = ceil(fmax(*a10, fmin(sub_276D8A010(a1, v55, v54 - v55, 0), *a11)));
      *a10 = v58;
      v59 = *a12;
      if (*a12 >= v58)
      {
        if (*a12 > v58)
        {
          if ((a9 & 0x200) != 0 && *a15 == 1)
          {
            if (!*(a1 + 248))
            {
              goto LABEL_26;
            }

            v70 = 0;
            v71 = 1;
            while (1)
            {
              v72 = objc_msgSend_objectAtIndexedSubscript_(v86, v56, *(a4 + 176) + v70, v59);
              objc_msgSend_contentBlockBottom(v72, v73, v74);
              v76 = v75;
              v77 = *(a5 + 88 * v70 + 80);

              if (v76 != v77)
              {
                break;
              }

              v70 = v71;
              if (*(a1 + 248) <= v71++)
              {
                goto LABEL_26;
              }
            }

            v59 = *a12;
          }

          v27 = 1;
          *a14 = 1;
          *a11 = v59;
          *a12 = floor((v59 + *a10) * 0.5);
          v68 = v87;
          if (*a10 >= *a11)
          {
            v79 = MEMORY[0x277D81150];
            v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "BOOL TSWPLayoutChore::pHandleLayoutBreaksAndColumnBalancing(const BOOL, const NSUInteger, const TSWPLayoutState &, const tswpColumnErasableInfo *, uint, const NSUInteger, const TSWPLayoutResultFlags, const CGFloat, CGFloat &, CGFloat &, CGFloat &, CGFloat &, BOOL &, uint &)", *a10);
            v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v83, v80, v82, 4259, 0, "Bad minHeight/maxHeight");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
            v27 = 1;
          }

          goto LABEL_27;
        }

LABEL_26:
        v68 = v87;
        objc_msgSend_wpBounds(v87, v56, v57);
        v27 = 0;
        *a13 = CGRectGetMaxY(v90) + *(a1 + 208);
LABEL_27:

        v25 = v88;
        goto LABEL_28;
      }

      *a12 = v58;
      v60 = *(a1 + 888);
      v61 = *(a1 + 8);
      v62 = objc_msgSend_startCharIndex(v87, v56, v57, v59);
      v63 = *a13;
      v64 = *a12;
      v50 = objc_msgSend_styleProvider(*(a1 + 24), v65, v66);
      objc_msgSend_fixColumnBoundsForTarget_storage_charIndex_firstColumnIndex_precedingHeight_height_alreadyHasMargins_styleProvider_(TSWPLayoutManager, v67, v60, v61, v62, a3, 0, v50, v63, v64);
    }

    goto LABEL_26;
  }

  v25 = 0;
LABEL_5:
  if (*a14 == 1)
  {
    if ((a9 & 0x200) != 0 && *a15 == 1)
    {
      *a14 = 0;
      *a15 = 0;
      *a10 = *a12;
      v26 = *a11;
    }

    else
    {
      v52 = *a12 + 1.0;
      *a10 = v52;
      v53 = fmax(*a11, v52);
      *a11 = v53;
      v26 = rint((v53 + *a10) * 0.5);
    }

    *a12 = v26;
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

LABEL_28:

  return v27;
}

void sub_276D8A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = objc_msgSend_autosizeFlags(*(a1 + 888), a2, a3);
  v44 = a3;
  if ((a3 & 0x30000) != 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSWPLayoutChore::pCreateLineVectorAfterColumnBalancing(TSWPLayoutState, TSWPLayoutFlags)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 6015, 0, "Unexpected flags %xu", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = *(a2 + 160);
  if (v16 < *(a2 + 168) + v16)
  {
    v17 = 0;
    v43 = v8 & 0xC;
    do
    {
      v18 = objc_msgSend_columns(*(a1 + 888), v6, v7);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v16);

      sub_276DD2968(a2, v20);
      *(a2 + 176) = v16;
      v25 = objc_msgSend_lineCount(v20, v21, v22);
      if (v25)
      {
        for (i = 0; i != v25; ++i)
        {
          v27 = objc_msgSend_lineFragmentAtIndex_(v20, v23, i);
          if (!sub_276D648AC(v27))
          {
            v28 = MEMORY[0x277D81490];
            if (*(v27 + 24) >= 0)
            {
              v28 = v27;
            }

            v29 = *v28;
            if ((v17 & 1) != 0 && (v30 = TSWPParagraphEnumerator::paragraphTextRange((a2 + 24), v23), v29 < &v23[v30]))
            {
              sub_276D74874(a2, v29);
            }

            else
            {
              v31 = *(a1 + 8);
              v33 = objc_msgSend_styleProvider(*(a1 + 24), v23, v24);
              if (v31)
              {
                objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v31, v32, v29, v33);
                var0 = obj.var0;
              }

              else
              {
                var0 = 0;
                memset(&obj, 0, sizeof(obj));
              }

              objc_storeStrong((a2 + 24), var0);
              objc_storeStrong((a2 + 32), obj.var1);
              v35 = *&obj.var4;
              *(a2 + 40) = *&obj.var2;
              *(a2 + 56) = v35;
              *(a2 + 72) = *&obj.var6;
              *(a2 + 88) = obj.var7.length;
              TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&obj);

              sub_276D78C18(a1, a2, v29);
              v36 = *(a1 + 896);
              v37 = TSWPParagraphEnumerator::relevantParagraphIndex((a2 + 24));
              sub_276DBCBA4(v36, a2, v37);
            }

            sub_276DC4B38(*(a1 + 896), v27, a2, v43 != 0);
            v17 = 1;
          }
        }
      }

      v38 = objc_msgSend_lineFragmentArray(v20, v23, v24);
      sub_276D89870(a1, v38);
      if ((v44 & 0x200000) != 0)
      {
        v39 = sub_276DD2970(a1 + 80);
        v42 = objc_msgSend_styleProvider(*(a1 + 24), v40, v41);
        sub_276D812E0(v20, v39, v42, *(a1 + 888));
      }

      ++v16;
    }

    while (v16 < *(a2 + 168) + *(a2 + 160));
  }
}

double sub_276D8AA38(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat x, CGFloat y, CGFloat width, CGFloat height, uint64_t a9, void *a10, int a11, int a12)
{
  v22 = a10;
  v25 = v22;
  if (a11)
  {
    objc_msgSend_wpBounds(v22, v23, v24);
    v32.origin.y = y;
    v32.size.height = height;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v33 = CGRectUnion(v32, v35);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
  }

  if (a12)
  {
    v26 = y + -6.0;
  }

  else
  {
    v26 = y;
  }

  if (a12)
  {
    v27 = height + 12.0;
  }

  else
  {
    v27 = height;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  v28 = x;
  v29 = width;
  *&v30 = CGRectUnion(v34, *(&v26 - 1));

  return v30;
}

void sub_276D8AB58(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v97 = *MEMORY[0x277D85DE8];
  v9 = a5;
  obj = a4;
  v81 = v9;
  if (a4)
  {
    objc_msgSend_currentAnchoredDrawableLayouts(v9, v10, v11);
  }

  else
  {
    objc_msgSend_currentInlineDrawableLayouts(v9, v10, v11);
  }
  v12 = ;
  v15 = objc_msgSend_count(v12, v13, v14);

  if (!v15)
  {
    goto LABEL_55;
  }

  v18 = objc_alloc(MEMORY[0x277CBEB18]);
  if (obj)
  {
    objc_msgSend_currentAnchoredDrawableLayouts(v81, v16, v17);
  }

  else
  {
    objc_msgSend_currentInlineDrawableLayouts(v81, v16, v17);
  }
  v19 = ;
  v21 = objc_msgSend_initWithArray_(v18, v20, v19, v81);

  if (!obj)
  {
    objc_msgSend_clearHiddenInlineDrawableLayoutMarks(v81, v22, v23);
  }

  if (a2 == *MEMORY[0x277D81490] && a3 == *(MEMORY[0x277D81490] + 8))
  {
    goto LABEL_27;
  }

  v24 = objc_msgSend_attachmentIndexRangeForTextRange_(*(a1 + 8), v22, a2, a3);
  v82 = &v22[v24];
  if (v24 >= &v22[v24])
  {
    goto LABEL_27;
  }

  do
  {
    objc_opt_class();
    v26 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(*(a1 + 8), v25, v24, 0);
    v27 = TSUDynamicCast();

    if (!v27 || objc_msgSend_isAnchored(v27, v28, v29) != obj)
    {
      goto LABEL_26;
    }

    v85 = objc_msgSend_drawable(v27, v30, v31);
    v35 = objc_msgSend_count(v21, v32, v33);
    if (!v35)
    {
      goto LABEL_25;
    }

    v36 = 0;
    while (1)
    {
      v37 = objc_msgSend_objectAtIndexedSubscript_(v21, v34, v36);
      v40 = objc_msgSend_info(v37, v38, v39);
      v43 = v40;
      if (v40 == v85)
      {
        break;
      }

      v44 = objc_msgSend_info(v37, v41, v42);
      v47 = objc_msgSend_owningAttachment(v44, v45, v46);

      if (v47 == v27)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v36;

      if (v35 == v36)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    if (objc_msgSend_isPartitioned(v27, v48, v49))
    {
      goto LABEL_22;
    }

    objc_msgSend_removeObjectAtIndex_(v21, v50, v36);

LABEL_25:
LABEL_26:

    ++v24;
  }

  while (v24 != v82);
LABEL_27:
  if ((obj & 1) == 0)
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obja = objc_msgSend_columns(v81, v22, v23);
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v51, &v91, v96, 16);
    if (v54)
    {
      v86 = *v92;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v92 != v86)
          {
            objc_enumerationMutation(obja);
          }

          v56 = objc_msgSend_lineFragmentArray(*(*(&v91 + 1) + 8 * i), v52, v53);
          v57 = *v56;
          v58 = v56[1];
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v59 = *v57;
          v60 = v57[1];
          while (v59 != v60)
          {
            if (*(*v59 + 24))
            {
              v61 = sub_276D6493C(*v59);
              objc_msgSend_removeObjectIdenticalTo_(v21, v62, v61);
              if (sub_276DD2B18(a1 + 80) != 0x7FFFFFFFFFFFFFFFLL)
              {
                v65 = objc_msgSend_parent(v61, v63, v64);
                objc_msgSend_removeObjectIdenticalTo_(v21, v66, v65);
              }
            }

            v59 += 2;
          }

          if (v58)
          {
            sub_276D5EEA0(v58);
          }
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v52, &v91, v96, 16);
      }

      while (v54);
    }
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v67 = v21;
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v87, v95, 16);
  if (v69)
  {
    v70 = *v88;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v88 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = *(*(&v87 + 1) + 8 * j);
        objc_opt_class();
        v75 = objc_msgSend_parent(v72, v73, v74);
        v76 = TSUDynamicCast();

        objc_msgSend_willRemoveAttachmentLayout_(*(a1 + 24), v77, v72);
        objc_msgSend_removeFromParent(v72, v78, v79);
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v80, &v87, v95, 16);
    }

    while (v69);
  }

LABEL_55:
}

double sub_276D8B130(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, char a5, double *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11, double a12, double a13, double a14, double a15)
{
  v27 = a2;
  v30 = objc_msgSend_drawable(v27, v28, v29);
  v33 = objc_msgSend_exteriorTextWrap(v30, v31, v32);
  if (objc_msgSend_isHTMLWrap(v33, v34, v35))
  {
    if (a6)
    {
      v38 = objc_msgSend_direction(v33, v36, v37);
      if (v38)
      {
        if (v38 == 2)
        {
          v84.origin.x = a7;
          v84.origin.y = a8;
          v84.size.width = a9;
          v84.size.height = a10;
          MinX = CGRectGetMidX(v84) + a15 * -0.5;
        }

        else if (v38 == 1)
        {
          MinX = *a6;
          *a6 = a15 + *a6;
        }

        else
        {
          v85.origin.x = a7;
          v85.origin.y = a8;
          v85.size.width = a9;
          v85.size.height = a10;
          MinX = CGRectGetMinX(v85);
        }
      }

      else
      {
        MinX = a6[1] - a15;
        a6[1] = MinX;
      }
    }

    else
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "CGPoint TSWPLayoutChore::pCalculateAttachmentPosition(const TSWPDrawableAttachment *__strong, TSWPCharIndex, CGRect, CGFloat, const TSWPLayoutState *const, CGSize, BOOL, CGSize, TSWPAnchoredDrawableSetupInfo *)");
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 5002, 0, "invalid nil value for '%{public}s'", "setupInfo");

      MinX = 0.0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
    }
  }

  else
  {
    objc_msgSend_hOffset(v27, v36, v37);
    objc_msgSend_vOffset(v27, v40, v41);
    v44 = objc_msgSend_hOffsetType(v27, v42, v43);
    if (v44 == 2)
    {
      objc_opt_class();
      v61 = TSUDynamicCast();
      objc_msgSend_hOffset(v27, v62, v63);
      v67 = v66;
      if (v61)
      {
        objc_msgSend_frame(v61, v64, v65);
      }

      else
      {
        v68 = 0.0;
      }

      MinX = v67 - v68;
    }

    else if (v44 == 1)
    {
      v82.origin.x = a7;
      v82.origin.y = a8;
      v82.size.width = a9;
      v82.size.height = a10;
      v57 = CGRectGetMinX(v82);
      objc_msgSend_hOffset(v27, v58, v59);
      MinX = v57 + v60;
    }

    else
    {
      if (v44)
      {
        v83.origin.x = a7;
        v83.origin.y = a8;
        v83.size.width = a9;
        v83.size.height = a10;
        v49 = CGRectGetMinX(v83);
      }

      else
      {
        objc_msgSend_hOffset(v27, v45, v46);
      }

      MinX = v49;
    }

    v69 = objc_msgSend_vOffsetType(v27, v47, v48);
    if (v69 == 1)
    {
      objc_opt_class();
      v76 = TSUDynamicCast();
      objc_msgSend_vOffset(v27, v77, v78);
      if (v76)
      {
        objc_msgSend_frame(v76, v79, v80);
      }
    }

    else if (v69)
    {
      v86.origin.x = a7;
      v86.origin.y = a8;
      v86.size.width = a9;
      v86.size.height = a10;
      CGRectGetMinY(v86);
    }

    else
    {
      v70 = sub_276DD2960(a1 + 80);
      started = objc_msgSend_startCharIndex(v70, v71, v72);

      if (started <= a3)
      {
        objc_msgSend_vOffset(v27, v74, v75);
      }
    }
  }

  sub_276D8B524(a1, v27, a4, a5, a12, a13);

  return MinX;
}

double sub_276D8B524(uint64_t a1, void *a2, uint64_t a3, char a4, double a5, double a6)
{
  v10 = a2;
  v15 = 0.0;
  if (objc_msgSend_vOffsetType(v10, v11, v12) != 1)
  {
    v16 = objc_msgSend_drawable(v10, v13, v14);
    v19 = objc_msgSend_exteriorTextWrap(v16, v17, v18);

    objc_msgSend_margin(v19, v20, v21);
    v25 = fmin(v24, a6 * 0.5);
    if (objc_msgSend_isHTMLWrap(v19, v22, v23))
    {
      v15 = 0.0;
      if (a4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v26 = 0.0;
      if (*a3 == *(a3 + 96))
      {
        v27 = *(a3 + 320);
        v28 = v27;
        if (!TSWPParagraphEnumerator::isFirstParagraph((a3 + 24)))
        {
          TSWPParagraphEnumerator::previous((a3 + 24), &v49);
          v29 = TSWPParagraphEnumerator::paragraphStyle(&v49, 0);
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v49);
          objc_msgSend_floatValueForProperty_(v29, v30, 88);
          v32 = v31;
          v33 = sub_276DD2960(a1 + 80);
          v36 = (v32 * (objc_msgSend_scaleTextPercent(v33, v34, v35) / 100.0));

          v28 = fmax(*(a3 + 320), v36);
          v27 = v28 - v36;
        }

        v26 = v27 + 0.0;
        v25 = fmax(v25 - v28, 0.0);
      }
    }

    else
    {
      v26 = 0.0;
    }

    v15 = v25 + v26;
    goto LABEL_10;
  }

LABEL_11:
  objc_opt_class();
  v39 = objc_msgSend_drawable(v10, v37, v38);
  v40 = TSUDynamicCast();

  if (v40)
  {
    v43 = objc_msgSend_stroke(v40, v41, v42);
    v46 = v43;
    if (v43)
    {
      objc_msgSend_outsets(v43, v44, v45);
      v15 = v15 + v47;
    }
  }

  return v15;
}

uint64_t sub_276D8B788(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, uint64_t a10, void *a11, unint64_t a12, uint64_t a13, int a14, void *a15, void *a16, _DWORD *a17, double *a18, double *a19, uint64_t a20)
{
  v150 = *MEMORY[0x277D85DE8];
  v30 = a11;
  v130 = a16;
  v131 = objc_msgSend_drawable(v30, v31, v32);
  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 0;
  if (*(a1 + 648) == 1)
  {
    v35 = objc_msgSend_currentAnchoredDrawableLayouts(*(a1 + 888), v33, v34);
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = sub_276D8BF58;
    v144[3] = &unk_27A6F4260;
    v144[4] = v131;
    v144[5] = &v145;
    objc_msgSend_enumerateObjectsUsingBlock_(v35, v36, v144);
  }

  objc_msgSend_currentAnchoredDrawableLayouts(*(a1 + 888), v33, v34);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v37 = v141 = 0u;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v140, v149, 16);
  if (v41)
  {
    v42 = *v141;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v141 != v42)
        {
          objc_enumerationMutation(v37);
        }

        v44 = objc_msgSend_info(*(*(&v140 + 1) + 8 * i), v39, v40);
        objc_msgSend_owningAttachment(v44, v45, v46);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v140, v149, 16);
    }

    while (v41);
  }

  if (objc_msgSend_isHTMLWrap(v30, v47, v48))
  {
    v51 = objc_msgSend_currentAnchoredDrawableLayouts(*(a1 + 888), v49, v50);
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = sub_276D8C178;
    v138[3] = &unk_27A6F4288;
    v138[4] = v131;
    v139 = v30;
    objc_msgSend_enumerateObjectsUsingBlock_(v51, v52, v138);
  }

  if (*(v146 + 24) == 1)
  {
    objc_msgSend_addObject_(v130, v49, v131);
    ++*a17;
    *a15 = a12 + 1;
    v53 = vdupq_n_s64(0x7FF8000000000000uLL);
    *a18 = v53;
    *a19 = v53;
    v54 = 1;
  }

  else
  {
    v125 = sub_276D7AD14(a1, v30);
    v55 = sub_276D8BFB8(v125);
    *a19 = v55;
    *(a19 + 1) = v56;
    *a18 = sub_276D8B130(a1, v30, a12, a13, a14, a20, a3, a4, a5, a6, a7, a8, a9, v57, v55);
    *(a18 + 1) = v58;
    if (objc_msgSend_isHTMLWrap(v30, v59, v60))
    {
      v151.origin.x = a3;
      v151.origin.y = a4;
      v151.size.width = a5;
      v151.size.height = a6;
      MaxY = CGRectGetMaxY(v151);
    }

    else
    {
      objc_msgSend_maxAnchorInBlockDirection(*(a1 + 888), v61, v62);
    }

    v66 = MaxY;
    if (objc_msgSend_vOffsetType(v30, v63, v64) == 1)
    {
      goto LABEL_29;
    }

    v69 = a19 + 1;
    if ((*(a1 + 32) & 0x10) != 0)
    {
      v69 = a19;
    }

    v70 = a18[1] + *v69 - v66;
    if (v70 > 0.0)
    {
      objc_msgSend_vOffset(v30, v67, v68);
      if (v70 <= v71)
      {
        a18[1] = a18[1] - v70;
      }
    }

    objc_msgSend_captionEdgeInsets(v125, v67, v68);
    v73 = *a19 - v72;
    v75 = a19[1] - v74;
    if ((*(a1 + 32) & 0x10) == 0)
    {
      v73 = v75;
    }

    if (a18[1] + v73 <= v66)
    {
LABEL_29:
      v86 = 1;
    }

    else
    {
      if (a18[1] - sub_276D8B524(a1, v30, a13, a14, a8, a9) == a7 && (v152.origin.x = a3, v152.origin.y = a4, v152.size.width = a5, v152.size.height = a6, CGRectGetMinY(v152) == a7))
      {
        v153.origin.x = a3;
        v153.origin.y = a4;
        v153.size.width = a5;
        v153.size.height = a6;
        MinY = CGRectGetMinY(v153);
        v128 = objc_msgSend_columns(*(a1 + 888), v77, v78);
        v80 = objc_msgSend_objectAtIndexedSubscript_(v128, v79, 0);
        objc_msgSend_wpBounds(v80, v81, v82);
        v83 = MinY == CGRectGetMinY(v154);

        v84 = a14;
        v85 = a2;
      }

      else
      {
        v84 = a14;
        v85 = a2;
        v83 = 0;
      }

      v87 = 0;
      if (!v83 && v84)
      {
        v88 = sub_276DD29B0(a1 + 80);
        v90 = objc_msgSend_charIndexRemappedFromStorage_(v88, v89, v85);
        v87 = v90 == objc_msgSend_length(*(a1 + 8), v91, v92);
      }

      v86 = v83 || v87;
    }

    if ((*(a1 + 32) & 0x10) != 0)
    {
      a18[1] = *a19 + a18[1];
    }

    if (v86 && *(a1 + 48) > a12)
    {
      v93 = *a18;
      v94 = a18[1];
      v95 = sub_276DD2960(a1 + 80);
      v98 = v95;
      if (v95)
      {
        objc_msgSend_transformFromWP(v95, v96, v97);
        v99 = v132;
        v100 = v133;
        v102 = v134;
        v101 = v135;
        v104 = v136;
        v103 = v137;
      }

      else
      {
        v103 = 0.0;
        v101 = 0.0;
        v100 = 0.0;
        v104 = 0.0;
        v102 = 0.0;
        v99 = 0.0;
      }

      v107 = v104 + v94 * v102 + v99 * v93;
      v108 = v103 + v94 * v101 + v100 * v93;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_layoutPositionFromAnchoredAttachmentPosition_(*(a1 + 888), v105, v106, v107, v108);
        v107 = v109;
        v108 = v110;
      }

      objc_msgSend_setAdjustedInterimPositionY_(v125, v105, v106, v108);
      v113 = objc_msgSend_exteriorTextWrap(v131, v111, v112);
      if (objc_msgSend_isHTMLWrap(v113, v114, v115) && objc_msgSend_direction(v113, v116, v117) == 2)
      {
        objc_msgSend_setAdjustedInterimPositionY_(v125, v116, v117, v108);
        if (a20)
        {
          v119 = *(a20 + 24);
          if (!v119)
          {
            v120 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v121 = *(a20 + 24);
            *(a20 + 24) = v120;

            v119 = *(a20 + 24);
          }

          objc_msgSend_addObject_(v119, v118, v30);
        }
      }

      else
      {
        objc_msgSend_setAdjustedInterimPositionX_(v125, v116, v117, v107);
        objc_msgSend_fixTransformFromInterimPosition(v125, v122, v123);
      }

      objc_msgSend_addObject_(v130, v118, v131);
      ++*a17;
      *a15 = a12 + 1;

      v54 = 1;
    }

    else
    {
      v54 = 0;
    }
  }

  _Block_object_dispose(&v145, 8);
  return v54;
}

void sub_276D8BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

void sub_276D8BF58(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_info(a2, a2, a3);
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

double sub_276D8BFB8(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_info(v1, v2, v3);
  v7 = objc_msgSend_exteriorTextWrap(v4, v5, v6);
  isHTMLWrap = objc_msgSend_isHTMLWrap(v7, v8, v9);

  if (isHTMLWrap)
  {
    objc_msgSend_alignmentFrameForInlineLayout(v1, v11, v12);
  }

  else
  {
    objc_msgSend_alignmentFrame(v1, v11, v12);
  }

  v14 = v13;
  if (objc_opt_respondsToSelector())
  {
    v17 = objc_msgSend_performSelector_(v1, v15, sel_stroke);
    v20 = v17;
    if (v17)
    {
      objc_msgSend_outsets(v17, v18, v19);
LABEL_10:
      v32 = v21;
      v33 = v22;
LABEL_12:

      v27 = v33 + v32;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v23 = objc_msgSend_info(v1, v15, v16);
  v24 = objc_opt_respondsToSelector();

  v27 = 0.0;
  if (v24)
  {
    v28 = objc_msgSend_info(v1, v25, v26, 0.0, 0.0);
    v20 = objc_msgSend_performSelector_(v28, v29, sel_stroke);

    if (v20)
    {
      objc_msgSend_outsets(v20, v30, v31);
      goto LABEL_10;
    }

LABEL_11:
    v33 = 0.0;
    v32 = 0.0;
    goto LABEL_12;
  }

LABEL_13:
  v34 = v14 - v27;

  return v34;
}

void sub_276D8C178(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v8 = objc_msgSend_info(v16, v6, v7);
  v9 = *(a1 + 32);

  if (v8 == v9)
  {
    v10 = objc_alloc_init(TSWPTypesetterAttachmentMap);
    objc_msgSend_setLayout_(v10, v11, v16);
    objc_msgSend_setAttachment_(v10, v12, *(a1 + 40));
    objc_msgSend_setLayoutNeedsRevalidation_(v10, v13, 1);
    objc_msgSend_layoutIfNeeded(v10, v14, v15);
    *a4 = 1;
  }
}

void sub_276D8C260(uint64_t a1, void *a2)
{
  v7 = a2;
  v6 = objc_msgSend_info(v7, v3, v4);
  if (v6)
  {
    objc_msgSend_setObject_forKey_(*(a1 + 32), v5, v7, v6);
  }
}

double sub_276D8C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, int a7)
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = sub_276D8C6DC(a2, a3);
  v14 = *MEMORY[0x277CBF398];
  v15 = *(MEMORY[0x277CBF398] + 8);
  v16 = *(MEMORY[0x277CBF398] + 16);
  v17 = *(MEMORY[0x277CBF398] + 24);
  v38 = a5;
  if (a4 == a5)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (v18 == 1)
  {
    v19 = a4;
    do
    {
      v39 = v19;
      v20 = *v19;
      v21 = sub_276D648D0(*v19, 0);
      v22 = sub_276DD1F38(v21);
      v23 = CTLineGetGlyphRuns(v22);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = v23;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v40, v44, 16);
      if (v26)
      {
        v27 = *v41;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v41 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v40 + 1) + 8 * i);
            v30 = sub_276D8C550(v29);
            v31 = sub_276D8C5B8(v29);
            v32 = sub_276D8C620(v29);
            if (!v32 && v30 | v31)
            {
              v14 = sub_276D8AA38(v14, v15, v16, v17, v20[9], v20[10], v20[11], v20[12], v32, v12, 1, a7);
              v15 = v33;
              v16 = v34;
              v17 = v35;
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v36, &v40, v44, 16);
        }

        while (v26);
      }

      v19 = v39 + 2;
    }

    while (v39 + 2 != v38);
  }

  return v14;
}

id sub_276D8C550(const __CTRun *a1)
{
  v1 = CTRunGetAttributes(a1);
  v3 = objc_msgSend_objectForKeyedSubscript_(v1, v2, @"TSWPCharacterFillAttribute");

  return v3;
}

id sub_276D8C5B8(const __CTRun *a1)
{
  v1 = CTRunGetAttributes(a1);
  v3 = objc_msgSend_objectForKeyedSubscript_(v1, v2, @"TSWPCharacterStrokeAttribute");

  return v3;
}

BOOL sub_276D8C620(const __CTRun *a1)
{
  v1 = CTRunGetAttributes(a1);
  v3 = objc_msgSend_objectForKeyedSubscript_(v1, v2, @"TSWPCharacterFillAttribute");
  v5 = objc_msgSend_objectForKeyedSubscript_(v1, v4, @"TSWPCharacterFillShouldFillTextContainerAttribute");
  if (objc_msgSend_BOOLValue(v5, v6, v7))
  {
    v10 = objc_msgSend_fillType(v3, v8, v9) == 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_276D8C6DC(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!sub_276D648AC(a1) || !sub_276D648AC(a2))
  {
    return 0;
  }

  v4 = sub_276D648D0(a1, 0);
  v5 = sub_276DD1F38(v4);
  v6 = sub_276D648D0(a2, 0);
  v7 = sub_276DD1F38(v6);
  v34 = CTLineGetGlyphRuns(v5);
  v38 = CTLineGetGlyphRuns(v7);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v34;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v51, v56, 16);
  if (!v9)
  {
LABEL_31:
    v32 = 0;
    goto LABEL_34;
  }

  v36 = *v52;
LABEL_5:
  v10 = 0;
  v37 = v9;
  while (1)
  {
    if (*v52 != v36)
    {
      objc_enumerationMutation(obj);
    }

    v39 = v10;
    v11 = *(*(&v51 + 1) + 8 * v10);
    v42 = sub_276D8C550(v11);
    v43 = sub_276D8C5B8(v11);
    v40 = sub_276D8C620(v11);
    StringRange = CTRunGetStringRange(v11);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = v38;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v13, &v47, v55, 16);
    if (v14)
    {
      break;
    }

LABEL_26:

LABEL_29:
    v10 = v39 + 1;
    if (v39 + 1 == v37)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v51, v56, 16);
      if (!v9)
      {
        goto LABEL_31;
      }

      goto LABEL_5;
    }
  }

  v45 = *v48;
  v46 = StringRange.location + StringRange.length;
LABEL_10:
  v44 = v14;
  v15 = 0;
  while (1)
  {
    if (*v48 != v45)
    {
      objc_enumerationMutation(v41);
    }

    v16 = *(*(&v47 + 1) + 8 * v15);
    v17 = sub_276D8C550(v16);
    v18 = sub_276D8C5B8(v16);
    v19 = sub_276D8C620(v16);
    v20 = CTRunGetStringRange(v16);
    if (v20.location >= v46)
    {

      goto LABEL_26;
    }

    if (!NSIntersectionRange(StringRange, v20).length)
    {
      goto LABEL_22;
    }

    v21 = v42;
    v23 = v17;
    if (v42 | v23)
    {
      isEqual = objc_msgSend_isEqual_(v21, v22, v23);

      if (!isEqual)
      {
        break;
      }
    }

    v25 = v43;
    v26 = v18;
    if (v43 | v26)
    {
      v31 = v26;
      v28 = objc_msgSend_isEqual_(v25, v27, v26);

      if (!v28 || v40 != v19)
      {
        goto LABEL_28;
      }
    }

    else if (v40 != v19)
    {
      v31 = 0;
      goto LABEL_28;
    }

LABEL_22:

    if (v44 == ++v15)
    {
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v29, &v47, v55, 16);
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  v31 = v18;
LABEL_28:

  if (v20.location >= v46)
  {
    goto LABEL_29;
  }

  v32 = 1;
LABEL_34:

  return v32;
}

uint64_t sub_276D8CB4C(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (*(a1 + 928) == 1)
  {
    v7 = objc_msgSend_columns(v3, v4, v5);
    v10 = objc_msgSend_firstObject(v7, v8, v9);
    v13 = objc_msgSend_anchoredRange(v10, v11, v12);
    v16 = objc_msgSend_lastObject(v7, v14, v15);
    v19 = objc_msgSend_anchoredRange(v16, v17, v18);
    if (v13 <= v19 + v20)
    {
      v21 = v19 + v20;
    }

    else
    {
      v21 = v13;
    }

    if (v13 >= v19 + v20)
    {
      v13 = v19 + v20;
    }

    v22 = v21 - v13;

    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_276D8CEB8;
    v56 = sub_276D8CEC8;
    v57 = 0;
    v23 = *(a1 + 8);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_276D8CED0;
    v51[3] = &unk_27A6F42D8;
    v51[4] = &v52;
    v51[5] = v13;
    v51[6] = v22;
    objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v23, v24, v13, v22, v51);
    v27 = objc_msgSend_anchoredDrawablesForRelayout(v6, v25, v26);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = v53[5];
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v47, v58, 16);
    if (v31)
    {
      v32 = *v48;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v47 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v27, v30, v34, v47) & 1) == 0)
          {
            objc_msgSend_addObject_(v27, v30, v34);
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v47, v58, 16);
      }

      while (v31);
    }

    if (!objc_msgSend_count(v27, v35, v36))
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "BOOL TSWPLayoutChore::pAnchoredGraphicAndTextCollisionsInTarget(TSDLayout<TSWPLayoutTarget> *__strong)");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 6806, 0, "Found collision but no anchored drawables");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    }

    _Block_object_dispose(&v52, 8);
    v45 = *(a1 + 928);
  }

  else
  {
    v45 = 0;
  }

  return v45 & 1;
}

void sub_276D8CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276D8CEB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276D8CED0(uint64_t a1, void *a2)
{
  v19 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v6 = v3;
  if (v3 && objc_msgSend_isAnchored(v3, v4, v5) && (objc_msgSend_isHTMLWrap(v6, v7, v8) & 1) == 0)
  {
    v12 = objc_msgSend_drawable(v6, v9, v10);
    v13 = *(*(*(a1 + 32) + 8) + 40);
    if (!v13)
    {
      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v16 = objc_msgSend_initWithCapacity_(v14, v15, *(a1 + 48));
      v17 = *(*(a1 + 32) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v13 = *(*(*(a1 + 32) + 8) + 40);
    }

    objc_msgSend_addObject_(v13, v11, v12);
  }
}

uint64_t sub_276D8CFE8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_owningAttachmentNoRecurse(a2, a2, a3);
  isHTMLWrap = objc_msgSend_isHTMLWrap(v3, v4, v5);

  return isHTMLWrap ^ 1u;
}

uint64_t sub_276D8D034(uint64_t a1, int a2, uint64_t a3, void *a4, char a5, double a6, double a7, double a8, double a9)
{
  v17 = a4;
  if (a6 >= a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = a6;
  }

  if ((a2 & (a6 < a8)) != 0)
  {
    v19 = a6;
  }

  else
  {
    v19 = a8;
  }

  if (a2)
  {
    v18 = a7;
  }

  *a1 = v18;
  *(a1 + 8) = v19;
  *(a1 + 16) = a9;
  v20 = v17;
  *(a1 + 32) = v20;
  *(a1 + 40) = a5;
  objc_msgSend_width(v20, v21, v22);
  if (v23 <= 0.0)
  {
    a3 = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 24) = a3;

  return a1;
}

void sub_276D8D138(void ***a1)
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
        v4 = sub_276DD2914(v4 - 784);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_276D8D1BC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x7D6343EB1A1F58D1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5397829CBC14E5)
  {
    sub_276D34ED8();
  }

  if (0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 4);
  }

  if ((0x7D6343EB1A1F58D1 * ((a1[2] - *a1) >> 4)) >= 0x29CBC14E5E0A72)
  {
    v6 = 0x5397829CBC14E5;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_276D8D304(a1, v6);
  }

  v13 = 0;
  v14 = 784 * v2;
  sub_276DD288C(784 * v2, a2);
  v15 = (784 * v2 + 784);
  v7 = a1[1];
  v8 = 784 * v2 + *a1 - v7;
  sub_276D8D360(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_276D8D404(&v13);
  return v12;
}

void sub_276D8D2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276D8D404(va);
  _Unwind_Resume(a1);
}

void sub_276D8D304(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5397829CBC14E6)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276D8D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276DD288C(a4, v8);
      v8 += 784;
      a4 += 784;
      v7 -= 784;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276DD2914(v6);
      v6 += 784;
    }
  }

  return result;
}

void sub_276D8D3E0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 784;
    do
    {
      v4 = sub_276DD2914(v4) - 784;
      v2 += 784;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276D8D404(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 784;
    sub_276DD2914(i - 784);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_276D8D454(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_276D8D4CC(result, a2);
  }

  return result;
}

void sub_276D8D4B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D8D4CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_276D34F6C(a1, a2);
  }

  sub_276D34ED8();
}

void sub_276D8D508(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276D8D588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276D8D59C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276D8D59C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_276D644C8();
    MEMORY[0x277CA3D00](v3, 0x10A0C4088448932);
  }

  return a1;
}

void sub_276D8D5E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276D8D620(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_276D644C8();

    JUMPOUT(0x277CA3D00);
  }

  return result;
}

uint64_t sub_276D8D664(uint64_t a1, uint64_t a2)
{
  if (sub_276D5F174(a2, &unk_2885FE840))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_276D8D76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSWPRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_276D8DFCC(uint64_t result, uint64_t *a2, char a3, char a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v8 = result;
    v9 = 1;
    do
    {
      sub_276DD1E84(v24, v4);
      CGContextSaveGState(*(*(v8 + 32) + 16));
      v10 = *(v8 + 32);
      sub_276DD1E84(v23, v24);
      objc_msgSend_translateLinePositionForLine_lineFragment_linePosition_(v10, v11, v23, *(v8 + 40), *(v4 + 8), *(v4 + 16));
      sub_276DD1EBC(v23);
      objc_msgSend_setCTMAndTextPositionForFragment_context_state_(TSWPRendererUtilities, v12, *(v8 + 40), *(*(v8 + 32) + 16), *(v8 + 48));
      if ((*(v8 + 56) & 1) != 0 || (*(*(v8 + 40) + 24) & 0x420) != 0 || *(*(v8 + 48) + 56) || *(v8 + 57) == 1)
      {
        v13 = *(v8 + 32);
        *&v14 = sub_276DD1E84(v22, v24).n128_u64[0];
        v15 = v22;
        BYTE2(v20) = a3;
        BYTE1(v20) = a4;
        LOBYTE(v20) = 0;
        objc_msgSend_drawTextInRunsForLine_baseRange_fragment_state_isFirstLineRef_listLabel_ruby_tateChuYoko_(v13, v16, v22, *(v4 + 24), *(v4 + 32), *(v8 + 40), *(v8 + 48), v9 & 1, v14, v20);
      }

      else
      {
        v17 = *(v8 + 32);
        *&v18 = sub_276DD1E84(v21, v24).n128_u64[0];
        v15 = v21;
        objc_msgSend_drawLine_(v17, v19, v21, v18);
      }

      sub_276DD1EBC(v15);
      CGContextRestoreGState(*(*(v8 + 32) + 16));
      result = sub_276DD1EBC(v24);
      v9 = 0;
      v4 += 104;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_276D8E148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276DD1EBC(va);
  sub_276DD1EBC(v2 - 192);
  _Unwind_Resume(a1);
}

void sub_276D8FB30(int a1, NSRange range1, uint64_t a3, _BYTE *a4)
{
  length = range1.length;
  v6 = v5;
  v7 = range1.location == *MEMORY[0x277D81490] && range1.length == *(MEMORY[0x277D81490] + 8);
  location = range1.location;
  if (!v7)
  {
    if (*(v9 + 200) != 1 || (v11 = objc_msgSend_type(*(v10 + 32), range1.location, range1.length), range1.location = location, v11 != 1) || (location == **(v6 + 64) ? (v12 = length == 0) : (v12 = 0), !v12))
    {
      v13 = *(v6 + 64);
      if ((v13[3] & 0x8000000000000000) != 0)
      {
        v13 = MEMORY[0x277D81490];
      }

      range1.length = *v13;
      v14 = v13[1];
      v15 = range1.location;
      range1.location = length;
      if (!NSIntersectionRange(range1, *(&range1 + 8)).length)
      {
        return;
      }

      range1.location = location;
      if (location + length <= **(v6 + 64))
      {
        *a4 = 1;
        return;
      }
    }
  }

  v16 = range1.location == *MEMORY[0x277D81490] && length == *(MEMORY[0x277D81490] + 8);
  v83 = length;
  if (v16)
  {
    v87 = range1.location;
    v88 = length;
  }

  else
  {
    v17 = range1.location;
    v18 = sub_276D644CC(*(v6 + 64));
    v87 = objc_msgSend_charRangeMappedFromStorage_(v18, v19, v17, length);
    v88 = v20;
  }

  if (!objc_msgSend_count(*(v6 + 40), range1.location, range1.length))
  {
    return;
  }

  v22 = 0;
  do
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(*(v6 + 40), v21, v22);

    GlyphCount = CTRunGetGlyphCount(v23);
    if ((GlyphCount - 65537) <= 0xFFFFFFFFFFFEFFFFLL)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276F4F2E8();
      }

      return;
    }

    v25 = GlyphCount;
    sub_276D6D3E8(v100, GlyphCount);
    v101.location = 0;
    v101.length = 0;
    CTRunGetStringIndices(v23, v101, v100[0]);
    v26 = CTRunGetAttributes(v23);
    v91 = v26;
    v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"TSWPRubySpacingRunAttribute");
    v86 = v28;
    if (v28)
    {
      v31 = objc_msgSend_BOOLValue(v28, v29, v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = objc_msgSend_objectForKeyedSubscript_(v26, v29, @"__wpAttachmentMap");

    if (*(v6 + 201) & 1) != 0 || (*(v6 + 202))
    {
      v89 = 0;
    }

    else
    {
      v89 = *(v6 + 203);
    }

    StringRange = CTRunGetStringRange(v23);
    v33 = StringRange.length;
    v35 = StringRange.location;
    v36 = StringRange.length;
    if (v89)
    {
      v37 = sub_276D644CC(*(v6 + 64));
      v35 = objc_msgSend_charRangeMappedToStorage_(v37, v38, StringRange.location, StringRange.length);
      v36 = v39;

      v26 = v91;
    }

    v92 = *(v6 + 72);
    v90 = *(v6 + 80);
    if (*(v6 + 202) == 1)
    {
      v40 = sub_276D644CC(*(v6 + 64));
      v92 = objc_msgSend_charRangeMappedToStorage_(v40, v41, v92, v90);
      v90 = v42;
    }

    if (v32)
    {
      v43 = 1;
    }

    else
    {
      v43 = v31;
    }

    if (v43 == 1)
    {
      v44 = v86;
      if (v32)
      {
        objc_msgSend_beginPrimaryTextRunWithRange_hasActualContents_(*(v6 + 48), v33, v35, v36, 0);
        objc_msgSend_endPrimaryTextRunWithRange_hasActualContents_(*(v6 + 48), v45, v35, v36, 0);
      }

      goto LABEL_70;
    }

    v99 = 1;
    v44 = v86;
    if ((*(v6 + 200) & 1) == 0)
    {
      *(&v82 + 1) = *(v6 + 201);
      LOBYTE(v82) = v89 & 1;
      objc_msgSend_notifyPdfTaggerBeginningWithPdfTagger_baseTextRange_drawingState_runCharRange_hasActualContents_mainCTLine_ruby_tateChuYoko_(TSWPRendererUtilities, v33, *(v6 + 48), v92, v90, *(v6 + 88), v35, v36, &v99, v82);
    }

    CGContextSaveGState(*(*(v6 + 56) + 16));
    *&v46 = sub_276DD1E84(v98, v6 + 96).n128_u64[0];
    LOBYTE(v81) = *(v6 + 202);
    objc_msgSend_transformLinePositionForLine_attributes_context_drawingState_lineFragment_run_tateChuYoko_(TSWPRendererUtilities, v47, v98, v91, *(*(v6 + 56) + 16), *(v6 + 88), *(v6 + 64), v23, v46, v81);
    sub_276DD1EBC(v98);
    objc_msgSend_applyShadowToContext_attributes_drawingState_viewScale_flipShadows_(TSWPRendererUtilities, v48, *(*(v6 + 56) + 16), v91, *(v6 + 88), *(*(v6 + 56) + 8), *(*(v6 + 56) + 24));
    v51 = objc_msgSend_type(*(*(v6 + 88) + 56), v49, v50);
    v53 = *MEMORY[0x277D81490];
    v52 = *(MEMORY[0x277D81490] + 8);
    v26 = v91;
    if (location == *MEMORY[0x277D81490] && v83 == v52)
    {
LABEL_45:
      v54 = *(v6 + 88);
      v55 = *(v54 + 152);
      if (v55 == __PAIR128__(v52, v53))
      {
        objc_msgSend_drawRun_attributes_canvasIsInteractive_glyphRange_(*(v6 + 56), v55.length, v23, v91, *(v54 + 90), 0, v25);
      }

      else
      {
        v102.location = 0;
        v102.length = v25;
        v75 = NSIntersectionRange(v55, v102);
        objc_msgSend_drawRun_attributes_canvasIsInteractive_glyphRange_(*(v6 + 56), v75.length, v23, v91, *(*(v6 + 88) + 90), v75.location, v75.length);
      }

      goto LABEL_68;
    }

    if (*(v6 + 202))
    {
      if ((v51 - 1) <= 1)
      {
        goto LABEL_45;
      }
    }

    else if (v92 >= location && v92 - location < v83 || v92 == location && v83 == v90)
    {
      goto LABEL_45;
    }

    v56 = *(v6 + 88);
    if (*(v56 + 152) != v53 || *(v56 + 160) != v52)
    {
      goto LABEL_68;
    }

    v85 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v58 = 0;
    do
    {
      if (*(v6 + 202) == 1)
      {
        v59 = *(v6 + 136);
        v71 = v92 >= v59;
        v60 = v92 - v59;
        if (v71)
        {
          goto LABEL_56;
        }

        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSWPRenderer drawTextInRunsForLine:baseRange:fragment:state:isFirstLineRef:listLabel:ruby:tateChuYoko:]_block_invoke");
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 794, 0, "unexpected string offset for tate chu yoko run");

        v26 = v91;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
      }

      v60 = 0;
LABEL_56:
      v68 = v87 == *MEMORY[0x277D81490] && v88 == *(MEMORY[0x277D81490] + 8);
      if (v68 || ((v69 = *(v100[0] + v58) + v60, v71 = v69 >= v87, v70 = v69 - v87, v71) ? (v71 = v70 >= v88) : (v71 = 1), !v71))
      {
        objc_msgSend_addIndex_(v85, v57, v58);
      }

      ++v58;
    }

    while (v25 != v58);
    CGContextSaveGState(*(*(v6 + 56) + 16));
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_276D90374;
    v94[3] = &unk_27A6F4348;
    v94[4] = *(v6 + 56);
    v96 = v23;
    v72 = v26;
    v73 = *(v6 + 88);
    v95 = v72;
    v97 = v73;
    v44 = v86;
    objc_msgSend_enumerateRangesUsingBlock_(v85, v74, v94);
    CGContextRestoreGState(*(*(v6 + 56) + 16));

LABEL_68:
    CGContextRestoreGState(*(*(v6 + 56) + 16));
    v76 = *(*(v6 + 56) + 16);
    v77 = *(MEMORY[0x277CBF2C0] + 16);
    *&v93.a = *MEMORY[0x277CBF2C0];
    *&v93.c = v77;
    *&v93.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGContextSetTextMatrix(v76, &v93);
    if ((*(v6 + 200) & 1) == 0)
    {
      *(&v81 + 1) = *(v6 + 201);
      LOBYTE(v81) = v89 & 1;
      objc_msgSend_notifyPdfTaggerEndWithPdfTagger_baseTextRange_runCharRange_hasActualContents_mainCTLine_ruby_tateChuYoko_(TSWPRendererUtilities, v78, *(v6 + 48), v92, v90, v35, v36, v99, v81);
    }

LABEL_70:

    if (v100[0])
    {
      v100[1] = v100[0];
      operator delete(v100[0]);
    }

    ++v22;
  }

  while (v22 < objc_msgSend_count(*(v6 + 40), v79, v80));
}

void sub_276D90254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  v38 = *(v36 - 128);
  if (v38)
  {
    *(v36 - 120) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void sub_276D90330()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276D909BC(int a1, NSRange range1)
{
  length = range1.length;
  location = range1.location;
  v5 = v4;
  range1.length = *(v4 + 40);
  v6 = *(v4 + 48);
  v7 = range1.location;
  range1.location = length;
  if (!NSIntersectionRange(range1, *(&range1 + 8)).length)
  {
    v15.location = location;
    v15.length = length;
    v8 = NSIntersectionRange(v15, *(v5 + 56));
    if (v8.length)
    {
      v9 = sub_276D664E4(*(v5 + 72), v8.location, 1, 1, 0);
      v10 = rint(sub_276D664E4(*(v5 + 72), (v8.location + v8.length), 1, 1, 0) - v9);
      if (v10 != 0.0)
      {
        if (v10 >= 0.0)
        {
          v11 = v10;
        }

        else
        {
          v11 = -v10;
        }

        fmod(v11, 4.0);
        sub_276D6534C(*(v5 + 72), v8.location, v8.length, *(*(v5 + 80) + 8));
        v13 = *(v5 + 32);

        MEMORY[0x2821F9670](v13, sel_drawWordMarkingsAtStart_length_linePos_, v12);
      }
    }
  }
}

uint64_t sub_276D93590(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_textAttributeUUIDString(a2, v5, v6);
  v10 = objc_msgSend_textAttributeUUIDString(v4, v8, v9);
  v12 = objc_msgSend_compare_options_(v7, v11, v10, 2);

  return v12;
}

void sub_276D93604(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276D944A8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v55 = v5;
  if (objc_msgSend_count(v7, v8, v9) != 2)
  {
    TSUSetCrashReporterInfo();
    v49 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "NSInteger i_compareFields(id  _Nonnull __strong, id  _Nonnull __strong, void * _Nullable)", "NSInteger i_compareFields(id  _Nonnull __strong, id  _Nonnull __strong, void * _Nullable)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm", 49);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v51, v53, 49, 1, "i_compareFields: BAD usage");

    TSUCrashBreakpoint();
    abort();
  }

  v11 = objc_msgSend_objectAtIndex_(v7, v10, 0);
  v14 = objc_msgSend_pointerValue(v11, v12, v13);

  v16 = objc_msgSend_objectAtIndex_(v7, v15, 1);
  v19 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);

  v20 = (*(*v14 + 152))(v14, v5, v19);
  v22 = v21;
  v25 = (*(*v14 + 152))(v14, v6, v19);
  v26 = v23;
  if (!v22)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "NSInteger i_compareFields(id  _Nonnull __strong, id  _Nonnull __strong, void * _Nullable)");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 31, 0, "Expected field attribute range 1 to be located");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  if (!v26)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "NSInteger i_compareFields(id  _Nonnull __strong, id  _Nonnull __strong, void * _Nullable)");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 32, 0, "Expected field attribute range 2 to be located");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  }

  if (v20 >= v25)
  {
    v42 = v55;
    if (v20 <= v25)
    {
      if (v20 + v22 < &v26[v25])
      {
        v41 = -1;
        goto LABEL_14;
      }

      if (v20 + v22 <= &v26[v25])
      {
        v43 = objc_msgSend_textAttributeUUIDString(v55, v23, v24);
        v46 = objc_msgSend_textAttributeUUIDString(v6, v44, v45);
        v41 = objc_msgSend_compare_(v43, v47, v46);

        goto LABEL_14;
      }
    }

    v41 = 1;
  }

  else
  {
    v41 = -1;
    v42 = v55;
  }

LABEL_14:

  return v41;
}

void sub_276D96F9C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

uint64_t sub_276D98DF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3 || vabdd_f64(v2, v3) < fabs(v3 * 0.000000999999997))
  {
    v2 = *(a1 + 24);
    v3 = *(a2 + 24);
    if (v2 == v3 || vabdd_f64(v2, v3) < fabs(v3 * 0.000000999999997))
    {
      return 0;
    }
  }

  if (v2 >= v3)
  {
    return 1;
  }

  return 0xFFFFFFFFLL;
}

double sub_276D9927C(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = (a1 + a3) * 0.5;
  if (a1 != a5 || a2 != a6)
  {
    v6 = v6 - (a2 - a4) * (1.0 / ((a2 - a4) * (a5 - a3) - (a6 - a4) * (a1 - a3)) * (-((a6 - a4) * ((a4 + a6) * 0.5 - (a2 + a4) * 0.5)) - (a5 - a3) * ((a3 + a5) * 0.5 - v6)));
  }

  TSUDistance();
  return v6;
}

double sub_276D9932C(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, const char *a8)
{
  v8 = a1 == a3 && a2 == a4;
  if (v8 || (a3 == a5 ? (v9 = a4 == a6) : (v9 = 0), v9))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a8, "CGFloat CalculateAngle(CGPoint, CGPoint, CGPoint)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment+Geometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 107, 0, "unexpected points when calculating angle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  TSUSubtractPoints();
  TSUSubtractPoints();
  TSUPointLength();
  TSUPointLength();
  TSUClamp();

  return acos(v17);
}

void sub_276D9A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F32E10(&a9);

  _Unwind_Resume(a1);
}

void sub_276D9A550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F32E10(&a9);

  _Unwind_Resume(a1);
}

void sub_276D9A808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276F32E10(va);
  _Unwind_Resume(a1);
}

void sub_276D9ADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_276F32E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276D9C44C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (*(a1 + 40) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqual = (*(*(a1 + 40) + 16))();
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v5, v6, v7);
  }

  v9 = isEqual;

  return v9;
}

void sub_276D9CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_276F40794(&a13);

  for (i = 544; i != -8; i -= 24)
  {
  }

  _Unwind_Resume(a1);
}

id sub_276D9D784(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], a2, a3);
  v5 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v4, v3);

  return v5;
}

id sub_276D9D7E4()
{
  if (qword_280A581D0 != -1)
  {
    sub_276F4F3C8();
  }

  v1 = qword_280A581C8;

  return v1;
}

void sub_276D9D828(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0x3F00A10021002ELL;
  v5 = 191;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &v4, 5);
  v3 = qword_280A581C8;
  qword_280A581C8 = v2;
}

id sub_276D9D8B0()
{
  if (qword_280A581E0 != -1)
  {
    sub_276F4F3DC();
  }

  v1 = qword_280A581D8;

  return v1;
}

void sub_276D9D8F4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &unk_276F99A18, 15);
  v3 = qword_280A581D8;
  qword_280A581D8 = v2;
}

id sub_276D9D940()
{
  if (qword_280A581F0 != -1)
  {
    sub_276F4F3F0();
  }

  v1 = qword_280A581E8;

  return v1;
}

void sub_276D9D984(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &unk_276F99A36, 31);
  v3 = qword_280A581E8;
  qword_280A581E8 = v2;
}

id sub_276D9D9D0()
{
  if (qword_280A58200 != -1)
  {
    sub_276F4F404();
  }

  v1 = qword_280A581F8;

  return v1;
}

void sub_276D9DA14(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &unk_276F99A74, 19);
  v3 = qword_280A581F8;
  qword_280A581F8 = v2;
}

id sub_276D9DA60()
{
  if (qword_280A58210 != -1)
  {
    sub_276F4F418();
  }

  v1 = qword_280A58208;

  return v1;
}

void sub_276D9DAA4(uint64_t a1, const char *a2)
{
  v4 = 538517528;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &v4, 2);
  v3 = qword_280A58208;
  qword_280A58208 = v2;
}

id sub_276D9DAF4()
{
  if (qword_280A58220 != -1)
  {
    sub_276F4F42C();
  }

  v1 = qword_280A58218;

  return v1;
}

void sub_276D9DB38(uint64_t a1, const char *a2)
{
  v4 = 538443815;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &v4, 2);
  v3 = qword_280A58218;
  qword_280A58218 = v2;
}

id sub_276D9DB88()
{
  if (qword_280A58230 != -1)
  {
    sub_276F4F440();
  }

  v1 = qword_280A58228;

  return v1;
}

void sub_276D9DBCC(uint64_t a1, const char *a2)
{
  v4 = 538509351;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, &v4, 2);
  v3 = qword_280A58228;
  qword_280A58228 = v2;
}

id sub_276D9DC1C()
{
  if (qword_280A58240 != -1)
  {
    sub_276F4F454();
  }

  v1 = qword_280A58238;

  return v1;
}

void sub_276D9DC60(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x201D201C20192018;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, v4, 4);
  v3 = qword_280A58238;
  qword_280A58238 = v2;
}

id sub_276D9DCE4()
{
  if (qword_280A58250 != -1)
  {
    sub_276F4F468();
  }

  v1 = qword_280A58248;

  return v1;
}

void sub_276D9DD28(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_characterSetWithRange_(MEMORY[0x277CCA900], a2, 65024, 16);
  v3 = qword_280A58248;
  qword_280A58248 = v2;
}

id sub_276D9DD70()
{
  if (qword_280A58260 != -1)
  {
    sub_276F4F47C();
  }

  v1 = qword_280A58258;

  return v1;
}

void sub_276D9DDB4(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x270022201D2019;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, v4, 4);
  v3 = qword_280A58258;
  qword_280A58258 = v2;
}

id sub_276D9DE38()
{
  if (qword_280A58270 != -1)
  {
    sub_276F4F490();
  }

  v1 = qword_280A58268;

  return v1;
}

void sub_276D9DE7C(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x270022201C2018;
  v2 = objc_msgSend_tswp_characterSetWithCharactersInArray_length_(MEMORY[0x277CCA900], a2, v4, 4);
  v3 = qword_280A58268;
  qword_280A58268 = v2;
}

id sub_276D9DF14(uint64_t a1, const char *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0xEFFFC00050004;
  v21 = 6;
  v2 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], a2, &v20, 5);
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], v3, v2);
  v6 = objc_claimAutoreleasedReturnValue();
  v9 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v7, v8);
  objc_msgSend_formUnionWithCharacterSet_(v6, v10, v9);

  objc_msgSend_formUnionWithCharacterSet_(v6, v11, v4);
  v14 = objc_msgSend_tswp_allQuotesCharacterSetExcludingRight(MEMORY[0x277CCA900], v12, v13);
  objc_msgSend_formUnionWithCharacterSet_(v6, v15, v14);

  v18 = objc_msgSend_copy(v6, v16, v17);

  return v18;
}

id sub_276D9E068(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0xEFFFC00050004;
  v25 = 6;
  v2 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], a2, &v24, 5);
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], v3, v2);
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], v5, @"].,:?'!%*-/}"));;
  v9 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v7, v8);
  objc_msgSend_formUnionWithCharacterSet_(v6, v10, v9);

  objc_msgSend_formUnionWithCharacterSet_(v6, v11, v4);
  v14 = objc_msgSend_tswp_allQuotesCharacterSetExcludingLeft(MEMORY[0x277CCA900], v12, v13);
  objc_msgSend_formUnionWithCharacterSet_(v6, v15, v14);

  v18 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v16, v17);
  objc_msgSend_formUnionWithCharacterSet_(v6, v19, v18);

  v22 = objc_msgSend_copy(v6, v20, v21);

  return v22;
}

void *sub_276D9E1CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_init(a1, a2, a3);
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_msgSend_initWithCharacters_length_(v7, v8, a3, a4);
    objc_msgSend_addCharactersInString_(v6, v10, v9);
  }

  return v6;
}

void sub_276D9E4E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3);
  url = objc_msgSend_URLForResource_withExtension_(v3, v4, @"validation-canvas_red", @"pdf");

  qword_280A58278 = CGPDFDocumentCreateWithURL(url);
}

void sub_276D9E5D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3);
  url = objc_msgSend_URLForResource_withExtension_(v3, v4, @"validation-canvas_orange", @"pdf");

  qword_280A58288 = CGPDFDocumentCreateWithURL(url);
}

void sub_276D9EEF0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_276D9F1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(a1);
}

void sub_276D9F218(uint64_t a1, char *__s)
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

void sub_276D9F310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276D9F478(uint64_t a1, CFStringRef theString)
{
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v4 = (a1 + 128);
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v4[1] = CStringPtr;
  if (!CStringPtr)
  {
    maxBufLen = 0;
    Length = CFStringGetLength(theString);
    if (Length <= 30 && (v11.location = 0, v11.length = Length, CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, a1, 127, &maxBufLen) == Length))
    {
      *(a1 + maxBufLen) = 0;
      *(a1 + 136) = a1;
    }

    else if (!*(a1 + 136))
    {
      maxBufLen = 0;
      v12.location = 0;
      v12.length = Length;
      if (CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen) == Length)
      {
        v7 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
        *v4 = v7;
        if (v7)
        {
          usedBufLen = 0;
          v13.location = 0;
          v13.length = Length;
          CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, v7, maxBufLen, &usedBufLen);
          if (usedBufLen == maxBufLen)
          {
            *(*(a1 + 128) + usedBufLen) = 0;
            *(a1 + 136) = *(a1 + 128);
          }
        }
      }
    }
  }

  return a1;
}

void sub_276DA144C(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x10E1C40BF9E100ELL);

  _Unwind_Resume(a1);
}

void sub_276DA169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276DA16B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_layoutResultFlags(a2, a2, a3);
  if ((result & 0x80) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_276DA400C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_msgSend_CGRectValue(v3, v5, v6);
  objc_msgSend_rectInRoot_(v4, v7, v8);
  v11 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v9, v10);

  return v11;
}

void sub_276DA5018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSWPRep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276DA5918(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_selection(*(a1 + 40), a2, a3);
  v10 = objc_msgSend_type(v7, v8, v9);
  v13 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(v6, v11, a2, a3, v10, 0, 0, 0);

  objc_msgSend_addObjectsFromArray_(*(a1 + 48), v12, v13);
}

void sub_276DA6D18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_276DA8E6C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [TSWPLineRenderer alloc];
  v9 = objc_msgSend_initWithContext_(v7, v8, a4);
  objc_msgSend_p_setupRenderer_layer_context_(a1, v10, v9, v6, a4);

  return v9;
}

void sub_276DA8EE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v22 = a4;
  v6 = a3;
  if (TSDCGContextIsShadowContext())
  {
    objc_msgSend_setFlipShadows_(v6, v7, 1);
    objc_msgSend_setViewScale_(v6, v8, v9, 1.0);
  }

  else
  {
    IsExportingWithRenderingExporter = TSDCGContextIsExportingWithRenderingExporter();
    if (v22)
    {
      v13 = objc_msgSend_contentsAreFlipped(v22, v10, v11);
    }

    else
    {
      v13 = 0;
    }

    if (objc_msgSend_isPrinting(a1, v10, v11))
    {
      v16 = objc_msgSend_isCanvasInteractive(a1, v14, v15) | IsExportingWithRenderingExporter ^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    objc_msgSend_setFlipShadows_(v6, v14, (v13 | v16) & 1);
    objc_msgSend_viewScale(a1, v17, v18);
    objc_msgSend_setViewScale_(v6, v19, v20, v21);
  }
}

void sub_276DA93A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_276DA9454(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
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

void sub_276DA95CC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], a2, &unk_288627EA8);
  v3 = qword_280A58298;
  qword_280A58298 = v2;
}

void sub_276DA9658(uint64_t a1, const char *a2, uint64_t a3)
{
  v55[10] = *MEMORY[0x277D85DE8];
  v54[0] = @"SimSun";
  v53 = sub_276E32640(a1, a2, a3);
  v52 = objc_msgSend_localizedStringForKey_value_table_(v53, v3, @"SimSun", &stru_28860A0F0, @"TSText");
  v55[0] = v52;
  v54[1] = @"NSimSun";
  v51 = sub_276E32640(v52, v4, v5);
  v50 = objc_msgSend_localizedStringForKey_value_table_(v51, v6, @"NSimSun", &stru_28860A0F0, @"TSText");
  v55[1] = v50;
  v54[2] = @"STZhongsong";
  v49 = sub_276E32640(v50, v7, v8);
  v48 = objc_msgSend_localizedStringForKey_value_table_(v49, v9, @"STZhongsong", &stru_28860A0F0, @"TSText");
  v55[2] = v48;
  v54[3] = @"FangSong";
  v47 = sub_276E32640(v48, v10, v11);
  v46 = objc_msgSend_localizedStringForKey_value_table_(v47, v12, @"FangSong", &stru_28860A0F0, @"TSText");
  v55[3] = v46;
  v54[4] = @"Calibri";
  v45 = sub_276E32640(v46, v13, v14);
  v44 = objc_msgSend_localizedStringForKey_value_table_(v45, v15, @"Calibri", &stru_28860A0F0, @"TSText");
  v55[4] = v44;
  v54[5] = @"Calibri-Bold";
  v43 = sub_276E32640(v44, v16, v17);
  v42 = objc_msgSend_localizedStringForKey_value_table_(v43, v18, @"Calibri", &stru_28860A0F0, @"TSText");
  v55[5] = v42;
  v54[6] = @"Calibri-Italic";
  v21 = sub_276E32640(v42, v19, v20);
  v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Calibri", &stru_28860A0F0, @"TSText");
  v55[6] = v23;
  v54[7] = @"Calibri-BoldItalic";
  v26 = sub_276E32640(v23, v24, v25);
  v28 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Calibri", &stru_28860A0F0, @"TSText");
  v55[7] = v28;
  v54[8] = @"Calibri-Light";
  v31 = sub_276E32640(v28, v29, v30);
  v33 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, @"Calibri", &stru_28860A0F0, @"TSText");
  v55[8] = v33;
  v54[9] = @"Calibri-LightItalic";
  v36 = sub_276E32640(v33, v34, v35);
  v38 = objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"Calibri", &stru_28860A0F0, @"TSText");
  v55[9] = v38;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v55, v54, 10);
  v41 = qword_280A582A8;
  qword_280A582A8 = v40;
}

uint64_t sub_276DAA29C(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPFont loadPlatformFontForPostScriptName:size:]_block_invoke");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 215, 0, "Using system fonts by name isn't allowed: %{public}@", *(a1 + 32));

  v10 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

void sub_276DABB6C()
{
  v0 = qword_280A582C8;
  qword_280A582C8 = &unk_288627EC0;

  v1 = qword_280A582D0;
  qword_280A582D0 = &unk_2886280E8;
}

void sub_276DAC7FC()
{
  v0 = objc_opt_class();
  v9 = objc_msgSend_dropCapProperties(v0, v1, v2);
  v5 = objc_msgSend_properties(TSWPCharacterStyle, v3, v4);
  v7 = objc_msgSend_propertySetByAddingPropertiesFromSet_(v9, v6, v5);
  v8 = qword_280A582E0;
  qword_280A582E0 = v7;
}

void sub_276DAC8C4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 256, 258, 257, 0);
  v3 = qword_280A582F0;
  qword_280A582F0 = v2;
}

void sub_276DAC964(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_propertiesAllowingNSNull(TSWPCharacterStyle, a2, a3);
  v4 = objc_msgSend_propertySetByAddingProperty_(v6, v3, 257);
  v5 = qword_280A58300;
  qword_280A58300 = v4;
}

void sub_276DACE04(void **a1, const char *a2)
{
  if (objc_msgSend_definesProperty_(a1[4], a2, a2) && (objc_msgSend_definesProperty_(a1[5], v4, a2) & 1) == 0 && (objc_msgSend_containsProperty_(a1[6], v5, a2) & 1) == 0)
  {
    v6 = String();
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        objc_msgSend_floatValueForProperty_(a1[4], v7, a2);
        v27 = v26;
        v28 = objc_opt_class();
        objc_msgSend_defaultFloatValueForProperty_(v28, v29, a2);
        if (v27 != v31 && v31 != INFINITY)
        {
          v32 = a1[6];

          objc_msgSend_setFloatValue_forProperty_(v32, v30, a2);
        }
      }

      else if (v6 == 3)
      {
        objc_msgSend_doubleValueForProperty_(a1[4], v7, a2);
        v16 = v15;
        v17 = objc_opt_class();
        objc_msgSend_defaultDoubleValueForProperty_(v17, v18, a2);
        if (v16 != v19 && v19 != INFINITY)
        {
          v20 = a1[6];

          MEMORY[0x2821F9670](v20, sel_setDoubleValue_forProperty_, a2);
        }
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        v8 = objc_msgSend_intValueForProperty_(a1[4], v7, a2);
        v9 = objc_opt_class();
        v11 = objc_msgSend_defaultIntValueForProperty_(v9, v10, a2);
        if (v8 != v11)
        {
          v13 = v11;
          if (v11 != 0x80000000)
          {
            v14 = a1[6];

            objc_msgSend_setIntValue_forProperty_(v14, v12, v13, a2);
          }
        }
      }
    }

    else
    {
      v33 = objc_msgSend_valueForProperty_(a1[4], v7, a2);
      v21 = objc_opt_class();
      v24 = objc_msgSend_defaultValueForProperty_(v21, v22, a2);
      if (v33 && (objc_msgSend_isEqual_(v33, v23, v24) & 1) == 0)
      {
        objc_msgSend_setObject_forProperty_(a1[6], v25, v24, a2);
      }
    }
  }
}