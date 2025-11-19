void sub_276D67940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t sub_276D67A10()
{
  if (qword_280A58198 != -1)
  {
    sub_276F4F248();
  }

  return qword_280A58190;
}

CGContextRef sub_276D67A48()
{
  v0 = TSUDeviceRGBColorSpace();
  result = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, v0, 5u);
  qword_280A58190 = result;
  return result;
}

double sub_276D67A88(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v201 = *MEMORY[0x277D85DE8];
  v178 = a4;
  v160 = *(MEMORY[0x277CBF398] + 8);
  v161 = *MEMORY[0x277CBF398];
  v158 = *(MEMORY[0x277CBF398] + 24);
  v159 = *(MEMORY[0x277CBF398] + 16);
  dispatch_semaphore_wait(*(a1 + 320), 0xFFFFFFFFFFFFFFFFLL);
  if (!*(a1 + 312))
  {
    v171 = *(a1 + 248);
    v172 = *(a1 + 256);
    v170 = *(a1 + 280);
    v169 = *(a1 + 272);
    if (v170 != v169)
    {
      v14 = *(a1 + 272);
      do
      {
        v16 = *(v14 + 24);
        v15 = *(v14 + 32);
        if (!*(a1 + 208))
        {
          v17 = MEMORY[0x277D81150];
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CGRect TSWPLineFragment::rawGlyphRectForLineRange(NSRange, TSWPColumn *__strong) const");
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 850, 0, "invalid nil value for '%{public}s'", "_textSource");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
        }

        if (v15)
        {
          v24 = sub_276DD1F38(v14);
          v25 = CTLineGetGlyphRuns(v24);
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          obj = v25;
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v194, v200, 16);
          if (v27)
          {
            run = *v195;
            v28 = v15 + v16;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v195 != run)
                {
                  objc_enumerationMutation(obj);
                }

                v30 = *(*(&v194 + 1) + 8 * i);
                GlyphCount = CTRunGetGlyphCount(v30);
                sub_276D6D3E8(buffer, GlyphCount);
                v202.location = 0;
                v202.length = GlyphCount;
                CTRunGetStringIndices(v30, v202, buffer[0]);
                sub_276D6D49C(&descent, GlyphCount);
                v203.location = 0;
                v203.length = GlyphCount;
                CTRunGetGlyphs(v30, v203, *&descent.x);
                v204.location = 0;
                v204.length = 1;
                CTRunGetPositions(v30, v204, &v191);
                v33 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v32, v16);
                v35 = sub_276D652B0(a1, v33, v178, 0);
                if (GlyphCount >= 1)
                {
                  v36 = v35;
                  for (j = 0; j != GlyphCount; ++j)
                  {
                    v38 = buffer[0][j] - *(v14 + 40);
                    if (v38 < v28 && *(*&descent.x + 2 * j) != -1)
                    {
                      if (qword_280A58198 != -1)
                      {
                        sub_276F4F25C();
                      }

                      v210.location = j;
                      v210.length = 1;
                      ImageBounds = CTRunGetImageBounds(v30, qword_280A58190, v210);
                      x = ImageBounds.origin.x;
                      y = ImageBounds.origin.y;
                      width = ImageBounds.size.width;
                      height = ImageBounds.size.height;
                      memset(&v187, 0, sizeof(v187));
                      CGAffineTransformMakeTranslation(&v187, *(a1 + 40) + *(v14 + 8), v36 + *(v14 + 16));
                      v189 = v187;
                      CGAffineTransformRotate(&v190, &v189, -1.57079633);
                      v187 = v190;
                      v189 = v190;
                      CGAffineTransformScale(&v190, &v189, 1.0, -1.0);
                      v187 = v190;
                      v216.origin.x = x;
                      v216.origin.y = y;
                      v216.size.width = width;
                      v216.size.height = height;
                      v217 = CGRectApplyAffineTransform(v216, &v190);
                      v43 = v217.origin.x;
                      v44 = v217.origin.y;
                      v45 = v217.size.width;
                      v46 = v217.size.height;
                      v47 = v191.x;
                      *&v189.a = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v48, v38 + v16);
                      *&v190.a = &v189;
                      v49 = sub_276D6D590(a1 + 296, &v189);
                      v49[5] = v43;
                      v49[6] = v44 - v47;
                      v49[7] = v45;
                      v49[8] = v46;
                    }
                  }
                }

                if (*&descent.x)
                {
                  descent.y = descent.x;
                  operator delete(*&descent.x);
                }

                if (buffer[0])
                {
                  buffer[1] = buffer[0];
                  operator delete(buffer[0]);
                }
              }

              v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v194, v200, 16);
            }

            while (v27);
          }
        }

        v14 += 104;
      }

      while (v14 != v170);
    }

    if (*(a1 + 224) != *(a1 + 216))
    {
      if (qword_280A58198 != -1)
      {
        sub_276F4F25C();
      }

      CGContextSetTextPosition(qword_280A58190, 0.0, 0.0);
      v50 = *(a1 + 224) - *(a1 + 216);
      if (v50)
      {
        v51 = 0;
        v52 = 0x4EC4EC4EC4EC4EC5 * (v50 >> 3);
        v173 = (a1 + 304);
        if (v52 <= 1)
        {
          v52 = 1;
        }

        v156 = v52;
        key = *MEMORY[0x277CC4838];
        v168 = *MEMORY[0x277CC4A00];
        do
        {
          sub_276DD1E84(&v187, *(a1 + 216) + 104 * v51);
          if ((v188 & 2) == 0)
          {
            d = v187.d;
            if (!v51 && (*(a1 + 24) & 1) != 0)
            {
              *&v190.a = a1;
              v152 = sub_276D6D590(a1 + 296, a1);
              v153 = *(a1 + 40);
              *(v152 + 7) = *(a1 + 56);
              *(v152 + 5) = v153;
            }

            else
            {
              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v54 = sub_276DD1F38(&v187);
              v162 = CTLineGetGlyphRuns(v54);
              v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v55, &v183, v199, 16);
              if (v56)
              {
                v166 = *v184;
                v57 = -1;
                v163 = d;
                while (2)
                {
                  v58 = 0;
                  obja = v57;
                  v164 = v57 + v56;
                  v165 = v56;
                  do
                  {
                    if (*v184 != v166)
                    {
                      objc_enumerationMutation(v162);
                    }

                    v167 = v58;
                    v59 = *(*(&v183 + 1) + 8 * v58);
                    v61 = CTRunGetGlyphCount(v59);
                    if ((v61 - 1) >= 0x10000)
                    {
                      v145 = MEMORY[0x277D81150];
                      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "CGRect TSWPLineFragment::rawGlyphRectForLineRange(NSRange, TSWPColumn *__strong) const");
                      v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v149, v146, v148, 915, 0, "bad glyph count: %ld", v61);

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v150, v151);
                      goto LABEL_126;
                    }

                    sub_276D6D3E8(&v190, v61);
                    v205.location = 0;
                    v205.length = v61;
                    CTRunGetStringIndices(v59, v205, *&v190.a);
                    sub_276D6D49C(&v189, v61);
                    v206.location = 0;
                    v206.length = v61;
                    CTRunGetGlyphs(v59, v206, *&v189.a);
                    Status = CTRunGetStatus(v59);
                    v64 = 0.0;
                    if ((*(a1 + 25) & 0x20) != 0)
                    {
                      if ((Status & 4) != 0)
                      {
                        Attributes = CTRunGetAttributes(v59);
                        Value = CFDictionaryGetValue(Attributes, key);
                        CTFontGetVerticalTranslationsForGlyphs(Value, *&v189.a, buffer, 1);
                      }

                      else
                      {
                        buffer[0] = 0;
                        descent.x = 0.0;
                        v191.x = 0.0;
                        v207.location = 0;
                        v207.length = 0;
                        CTRunGetTypographicBounds(v59, v207, buffer, &descent.x, &v191.x);
                        v64 = (*buffer - descent.x) * 0.5;
                      }
                    }

                    v67 = *&d;
                    if (!v51)
                    {
                      v67 = **&v190.a;
                    }

                    runa = v59;
                    if (v67 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v68 = MEMORY[0x277D81150];
                      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "CGRect TSWPLineFragment::rawGlyphRectForLineRange(NSRange, TSWPColumn *__strong) const");
                      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 944, 0, "bad baselineCharIndex");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
                    }

                    v75 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v63, v67);
                    v76 = 0;
                    ++obja;
                    v78 = v64 + sub_276D652B0(a1, v75, v178, 0);
                    do
                    {
                      if (!*(a1 + 208))
                      {
                        v79 = MEMORY[0x277D81150];
                        v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "CGRect TSWPLineFragment::rawGlyphRectForLineRange(NSRange, TSWPColumn *__strong) const");
                        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v83, v80, v82, 948, 0, "invalid nil value for '%{public}s'", "_textSource");

                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
                      }

                      if (v51)
                      {
                        if (obja)
                        {
                          v86 = MEMORY[0x277D81150];
                          v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "CGRect TSWPLineFragment::rawGlyphRectForLineRange(NSRange, TSWPColumn *__strong) const");
                          v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v90, v87, v89, 984, 0, "Multiple runs for an attachment not supported");

                          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92);
                        }

                        if (qword_280A58198 != -1)
                        {
                          sub_276F4F25C();
                        }

                        v211.location = 0;
                        v211.length = 0;
                        v218 = CTRunGetImageBounds(runa, qword_280A58190, v211);
                        v93 = v218.size.width;
                        v94 = v218.size.height;
                        v95 = v218.origin.x + *(a1 + 40) + v187.b;
                        v96 = v78 - v218.origin.y - v218.size.height + v187.c;
                        v76 = v61;
                      }

                      else
                      {
                        a = v189.a;
                        v95 = *MEMORY[0x277CBF398];
                        v96 = *(MEMORY[0x277CBF398] + 8);
                        v93 = *(MEMORY[0x277CBF398] + 16);
                        v94 = *(MEMORY[0x277CBF398] + 24);
                        if ((*(a1 + 24) & 4) != 0 && objc_msgSend_characterAtIndex_(*(a1 + 208), v77, *(*&v190.a + 8 * v76)) == 65532)
                        {
                          v106 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 208), v105, *(*&v190.a + 8 * v76));
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v181 = 0u;
                            v182 = 0u;
                            v179 = 0u;
                            v180 = 0u;
                            v109 = *(a1 + 368);
                            v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v179, v198, 16);
                            if (v113)
                            {
                              v114 = *v180;
                              while (2)
                              {
                                for (k = 0; k != v113; ++k)
                                {
                                  if (*v180 != v114)
                                  {
                                    objc_enumerationMutation(v109);
                                  }

                                  v116 = *(*(&v179 + 1) + 8 * k);
                                  v117 = objc_msgSend_charIndex(v116, v111, v112);
                                  if (v117 == *(*&v190.a + 8 * v76))
                                  {
                                    objc_msgSend_location(v116, v111, v112);
                                    v135 = objc_msgSend_attachment(v116, v133, v134);
                                    objc_msgSend_size(v135, v136, v137);
                                    d = v163;
                                    TSURectWithOriginAndSize();
                                    v95 = v138;
                                    v96 = v139;
                                    v93 = v140;
                                    v94 = v141;

                                    goto LABEL_112;
                                  }
                                }

                                v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v111, &v179, v198, 16);
                                if (v113)
                                {
                                  continue;
                                }

                                break;
                              }

                              d = v163;
                            }

LABEL_112:
                          }

                          else if (objc_msgSend_isDrawable(v106, v107, v108) && (objc_msgSend_isAnchored(v106, v130, v131) & 1) == 0)
                          {
                            *buffer = *MEMORY[0x277CBF3A8];
                            v208.location = v76;
                            v208.length = 1;
                            CTRunGetAdvances(runa, v208, buffer);
                            v209.location = v76;
                            v209.length = 1;
                            CTRunGetPositions(runa, v209, &descent);
                            v132 = *(a1 + 112);
                            v93 = *buffer;
                            v94 = v132 + *(a1 + 136);
                            v95 = descent.x + *(a1 + 40) + v187.b;
                            v96 = *(a1 + 32) - v132 + v187.c;
                          }
                        }

                        else if (*(*&a + 2 * v76) != -1)
                        {
                          if (v172 == v171 || (v118 = CTRunGetAttributes(runa), !CFDictionaryContainsKey(v118, @"TSWPRubySpacingRunAttribute")))
                          {
                            if (v170 == v169 || (v119 = CTRunGetAttributes(runa), !CFDictionaryContainsKey(v119, v168)))
                            {
                              v120 = *(a1 + 376);
                              v123 = v120;
                              if (v120)
                              {
                                objc_msgSend_glyphBounds(v120, v121, v122);
                                v125 = v124;
                                v127 = v126;
                                v93 = v128;
                                v94 = v129;
                              }

                              else
                              {
                                v142 = runa;
                                if (qword_280A58198 != -1)
                                {
                                  sub_276F4F25C();
                                  v142 = runa;
                                }

                                v212.location = v76;
                                v212.length = 1;
                                v222 = CTRunGetImageBounds(v142, qword_280A58190, v212);
                                v93 = v222.size.width;
                                v94 = v222.size.height;
                                v125 = v222.origin.x + *(a1 + 40);
                                v127 = v78 - v222.origin.y - v222.size.height;
                              }

                              b = v187.b;
                              c = v187.c;

                              v96 = v127 + c;
                              v95 = v125 + b + 0.0;
                            }
                          }
                        }
                      }

                      v219.origin.x = v95;
                      v219.origin.y = v96;
                      v219.size.width = v93;
                      v219.size.height = v94;
                      if (!CGRectIsNull(v219))
                      {
                        v97 = *&d;
                        if (!v51)
                        {
                          v97 = *(*&v190.a + 8 * v76);
                        }

                        v98 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v77, v97);
                        *&descent.x = v98;
                        v99 = *v173;
                        if (*v173)
                        {
                          v100 = (a1 + 304);
                          do
                          {
                            v101 = v99[4];
                            v11 = v101 >= v98;
                            v102 = v101 < v98;
                            if (v11)
                            {
                              v100 = v99;
                            }

                            v99 = v99[v102];
                          }

                          while (v99);
                          if (v100 != v173 && v98 >= v100[4])
                          {
                            buffer[0] = &descent;
                            v223 = *(sub_276D6D590(a1 + 296, &descent) + 5);
                            v220.origin.x = v95;
                            v220.origin.y = v96;
                            v220.size.width = v93;
                            v220.size.height = v94;
                            v221 = CGRectUnion(v220, v223);
                            v95 = v221.origin.x;
                            v96 = v221.origin.y;
                            v93 = v221.size.width;
                            v94 = v221.size.height;
                          }
                        }

                        buffer[0] = &descent;
                        v103 = sub_276D6D590(a1 + 296, &descent);
                        v103[5] = v95;
                        v103[6] = v96;
                        v103[7] = v93;
                        v103[8] = v94;
                      }

                      ++v76;
                    }

                    while (v76 < v61);
                    if (*&v189.a)
                    {
                      v189.b = v189.a;
                      operator delete(*&v189.a);
                    }

                    v57 = v164;
                    if (*&v190.a)
                    {
                      v190.b = v190.a;
                      operator delete(*&v190.a);
                    }

                    v58 = v167 + 1;
                  }

                  while (v167 + 1 != v165);
                  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v77, &v183, v199, 16);
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_126:
            }
          }

          sub_276DD1EBC(&v187);
          ++v51;
        }

        while (v51 != v156);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 320));
  v6 = a2;
  if (a2 < a2 + a3)
  {
    v7 = (a1 + 304);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = a1 + 304;
        do
        {
          v10 = *(v8 + 32);
          v11 = v10 >= v6;
          v12 = v10 < v6;
          if (v11)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * v12);
        }

        while (v8);
        if (v9 != v7 && v6 >= *(v9 + 32))
        {
          v213.origin.y = v160;
          v213.origin.x = v161;
          v213.size.height = v158;
          v213.size.width = v159;
          v214 = CGRectUnion(v213, *(v9 + 40));
          v160 = v214.origin.y;
          v161 = v214.origin.x;
          v158 = v214.size.height;
          v159 = v214.size.width;
        }
      }

      ++v6;
    }

    while (v6 != a2 + a3);
  }

  return v161;
}

double sub_276D68AA0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v13.origin.x = sub_276D67A88(a1, a2, a3, v7);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (!CGRectIsEmpty(v13))
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    *&x = CGRectInset(v14, -1.0, -1.0);
  }

  return x;
}

void sub_276D68B68(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *(a4 + 32) = xmmword_276F98C40;
  *(a4 + 48) = unk_276F98C50;
  *(a4 + 64) = xmmword_276F98C60;
  *(a4 + 80) = unk_276F98C70;
  *a4 = xmmword_276F98C20;
  *(a4 + 16) = *algn_276F98C30;
  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 216);
    v10 = *(a1 + 224);
    if (v9 != v10)
    {
      v11 = *MEMORY[0x277D740A8];
      while (1)
      {
        v12 = sub_276DD1F38(v9);
        StringRange = CTLineGetStringRange(v12);
        v14 = objc_msgSend_charRangeMappedToStorage_(v8, StringRange.length, StringRange.location, StringRange.length);
        if (a2 >= v14 && a2 - v14 < v15)
        {
          break;
        }

        v9 += 104;
        if (v9 == v10)
        {
          goto LABEL_26;
        }
      }

      v16 = sub_276DD1F38(v9);
      CTLineGetGlyphRuns(v16);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v17 = v38 = 0u;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v37, v41, 16);
      if (v19)
      {
        v20 = *v38;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v37 + 1) + 8 * i);
            v23 = CTRunGetStringRange(v22);
            v24 = objc_msgSend_charRangeMappedToStorage_(v8, v23.length, v23.location, v23.length);
            if (a2 >= v24 && a2 - v24 < v25)
            {
              v27 = CTRunGetAttributes(v22);
              v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v11);

              if (v29)
              {
                sub_276D38FF4(v29, v30, v31, v36);
                v32 = v36[3];
                *(a4 + 32) = v36[2];
                *(a4 + 48) = v32;
                v33 = v36[5];
                *(a4 + 64) = v36[4];
                *(a4 + 80) = v33;
                v34 = v36[1];
                *a4 = v36[0];
                *(a4 + 16) = v34;
              }

              else
              {
                *&v36[0] = 0;
                v43.location = 0;
                v43.length = 0;
                CTRunGetTypographicBounds(v22, v43, (a4 + 16), (a4 + 32), v36);
                v35 = *v36 * 0.5;
                *(a4 + 40) = *v36 * 0.5;
                *(a4 + 48) = v35;
              }

              goto LABEL_25;
            }
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v37, v41, 16);
          if (v19)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }
  }

LABEL_26:
}

double sub_276D68E18(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  v23.location = a3;
  v23.length = a4;
  v29 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v9 = *(a1 + 248);
  v8 = *(a1 + 256);
  if (v9 != v8)
  {
    while (*(v9 + 24) != a2)
    {
      v9 += 104;
      if (v9 == v8)
      {
        return x;
      }
    }

    v11 = sub_276DD1F38(v9);
    CTLineGetGlyphRuns(v11);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    obj = v25 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v24, v28, 16);
    if (v13)
    {
      v14 = 0;
      v15 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          GlyphCount = CTRunGetGlyphCount(v17);
          v30.location = v14;
          v30.length = GlyphCount;
          v20 = NSIntersectionRange(v23, v30);
          length = v20.length;
          if (v20.length)
          {
            if (qword_280A58198 != -1)
            {
              sub_276F4F25C();
            }

            v31.location = v20.location - v14;
            v31.length = v20.length;
            ImageBounds = CTRunGetImageBounds(v17, qword_280A58190, v31);
            v34.size.width = ImageBounds.size.width;
            v34.size.height = ImageBounds.size.height;
            v34.origin.x = ImageBounds.origin.x + *(v9 + 8) + *(a1 + 40);
            v34.origin.y = *(v9 + 16) + *(a1 + 32) - ImageBounds.origin.y - ImageBounds.size.height;
            ImageBounds.origin.x = x;
            ImageBounds.origin.y = y;
            ImageBounds.size.width = width;
            ImageBounds.size.height = height;
            v33 = CGRectUnion(ImageBounds, v34);
            x = v33.origin.x;
            y = v33.origin.y;
            width = v33.size.width;
            height = v33.size.height;
          }

          v14 += GlyphCount;
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, length, &v24, v28, 16);
      }

      while (v13);
    }
  }

  return x;
}

double sub_276D6906C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v10 = *(a1 + 424);
  if (objc_msgSend_count(v10, v11, v12))
  {
    v14 = *(a1 + 216);
    v13 = *(a1 + 224);

    if (v13 != v14)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = *(a1 + 424);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v59, v63, 16);
      if (v18)
      {
        v55 = *v60;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v60 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v59 + 1) + 8 * i);
            if (objc_msgSend_type(v20, v16, v17) == 4)
            {
              v21 = objc_msgSend_positionCount(v20, v16, v17);
              if (v21 == objc_msgSend_charIndexCount(v20, v22, v23))
              {
                objc_msgSend_textPosition(v20, v16, v17);
                v56 = v25;
                v57 = v24;
                v28 = objc_msgSend_positions(v20, v26, v27);
                v31 = objc_msgSend_charIndexes(v20, v29, v30);
                v34 = objc_msgSend_positionCount(v20, v32, v33);
                if (v34)
                {
                  v35 = 0;
                  v36 = 1;
                  do
                  {
                    v37 = *(v31 + 8 * v35);
                    v39 = v37 >= a2;
                    v38 = v37 - a2;
                    v39 = !v39 || v38 >= a3;
                    if (!v39)
                    {
                      r1 = height;
                      v40 = width;
                      v41 = y;
                      v42 = x;
                      v44 = *(a1 + 32);
                      v43 = *(a1 + 40);
                      v45 = *(*(a1 + 216) + 8);
                      v46 = *(v28 + 16 * v35);
                      objc_msgSend_ascent(v20, v16, v17);
                      v48 = v47;
                      objc_msgSend_advance(v20, v49, v50);
                      v67.size.width = v51;
                      v67.origin.x = v46 + v57 + v43 + v45;
                      v67.origin.y = v56 + v44 - v48;
                      v65.origin.x = v42;
                      v65.origin.y = v41;
                      v65.size.width = v40;
                      v65.size.height = r1;
                      v67.size.height = v48;
                      v66 = CGRectUnion(v65, v67);
                      x = v66.origin.x;
                      y = v66.origin.y;
                      width = v66.size.width;
                      height = v66.size.height;
                    }

                    v35 = v36;
                  }

                  while (v34 > v36++);
                }
              }
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v59, v63, 16);
        }

        while (v18);
      }
    }
  }

  else
  {
  }

  return x;
}

uint64_t sub_276D69338(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 24) & 0x80) != 0 || *(a1 + 256) != *(a1 + 248))
  {
    return 1;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 424);
  v1 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v9, v13, 16);
  if (v1)
  {
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_type(*(*(&v9 + 1) + 8 * i), v5, v6, v9) == 4)
        {
          v1 = 1;
          goto LABEL_15;
        }
      }

      v1 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v9, v13, 16);
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v1;
}

double sub_276D69474(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(a1 + 200);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_size(v3, v4, v5);
    v8 = v7;
    v10 = v9;
    v13 = objc_msgSend_labelType(v6, v11, v12);
    objc_msgSend_height(v6, v14, v15);
    v17 = v16;
    objc_msgSend_width(v6, v18, v19);
    if ((v13 - 2) < 2)
    {
      goto LABEL_3;
    }

    if (v13 != 1)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 25) & 0x20) != 0)
    {
      objc_msgSend_width(v6, v20, v21);
      v17 = v39;
      objc_msgSend_height(v6, v40, v41);
      v44 = v42;
      v23 = v8;
    }

    else
    {
LABEL_3:
      v44 = v22;
      v23 = v10;
      v10 = v8;
    }

    v24 = *(a1 + 120);
    v25 = *(a1 + 136);
    v26 = *(a1 + 104);
    objc_msgSend_baselineOffset(v6, v20, v21);
    v28 = v27;
    objc_msgSend_labelIndent(v6, v29, v30);
    v32 = v31;
    if (objc_msgSend_isLabelRTL(v6, v33, v34))
    {
      v37 = *(a1 + 56);
      objc_msgSend_labelIndent(v6, v35, v36);
      v32 = v37 - v38 - v44;
    }

    v45.origin.y = v26 + (v24 + v25 - v17) * 0.5;
    v45.origin.x = v32;
    v45.size.width = v10;
    v45.size.height = v23;
    v46 = CGRectOffset(v45, 0.0, *(a1 + 144));
    v47 = CGRectOffset(v46, 0.0, -v28);
    *&v2 = CGRectOffset(v47, *(a1 + 40), *(a1 + 48));
  }

LABEL_10:

  return v2;
}

double sub_276D69638(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(a1 + 200);
  v6 = v3;
  if (v3)
  {
    if ((objc_msgSend_labelType(v3, v4, v5) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v2 = sub_276D69474(a1);
      if ((*(a1 + 25) & 0x20) != 0)
      {
        if (objc_msgSend_isLabelTateChuYoko(v6, v8, v9))
        {
          *&v38[0] = 0;
          v24 = objc_msgSend_textLine(v6, v22, v23);
          CTLineGetTypographicBounds(v24, v38, 0, 0);
          v25 = *v38;
          objc_msgSend_baselineOffset(v6, v26, v27);
          v2 = v2 + v25;
        }

        else
        {
          objc_msgSend_baselineOffset(v6, v22, v23);
        }
      }

      else
      {
        v12 = objc_msgSend_labelFont(v6, v8, v9);
        if (v12)
        {
          if (objc_msgSend_labelType(v6, v10, v11) == 2)
          {
            memset(v38, 0, sizeof(v38));
            sub_276D38FF4(v12, v13, v14, v38);
          }

          objc_msgSend_baselineOffset(v6, v13, v14);
        }

        else
        {
          v28 = objc_msgSend_textLine(v6, v10, v11);
          if (CTLineGetGlyphCount(v28))
          {
            v30 = MEMORY[0x277D81150];
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "CGPoint TSWPLineFragment::labelTextPosition() const");
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 1242, 0, "No label font but we need to render something");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
          }
        }
      }
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "CGPoint TSWPLineFragment::labelTextPosition() const");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1264, 0, "Text position only applies to text and numbers.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }
  }

  return v2;
}

double sub_276D698EC(uint64_t a1, char a2)
{
  v4 = *(a1 + 8) + *a1 + ((*(a1 + 24) << 52) >> 63);
  if (*a1 <= v4)
  {
    v5 = *(a1 + 8) + *a1 + ((*(a1 + 24) << 52) >> 63);
  }

  else
  {
    v5 = *a1;
  }

  if (*a1 >= v4)
  {
    v6 = (*(a1 + 8) + *a1 + ((*(a1 + 24) << 52) >> 63));
  }

  else
  {
    v6 = *a1;
  }

  sub_276D65948(a1, v6, v5 - v6, a2, 1, 1, 0, 0, __p);
  sub_276D398C4(__p);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v15 = *(a1 + 216);
    v16 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 224) - v15) >> 3);
    if (v16 >= 2)
    {
      v17 = v16 - 1;
      for (i = v15 + 104; (*(i + 96) & 2) == 0; i += 104)
      {
        if (!--v17)
        {
          return v8;
        }
      }

      v19 = *(i + 8);
      v20 = sub_276DD1F38(i);
      v24.size.width = CTLineGetTypographicBounds(v20, 0, 0, 0);
      v24.origin.x = v19 + *(a1 + 40);
      v23.origin.x = v8;
      v23.origin.y = v10;
      v23.size.width = v12;
      v23.size.height = v14;
      v24.origin.y = v10;
      v24.size.height = v14;
      *&v8 = CGRectUnion(v23, v24);
    }
  }

  return v8;
}

void sub_276D69A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_276D69A6C(uint64_t a1)
{
  v2 = *(a1 + 216);
  v3 = sub_276DD1F38(v2);
  CTLineGetTypographicBounds(v3, 0, 0, 0);
  return *(a1 + 40) + *(v2 + 8);
}

uint64_t sub_276D69ADC(uint64_t a1)
{
  v2 = sub_276D67300(a1);
  v3 = *v2;
  if (*v2 == v2[1])
  {
    v3 = a1;
  }

  return *v3;
}

uint64_t sub_276D69B10(uint64_t a1)
{
  v2 = sub_276D67300(a1);
  v3 = v2[1];
  if (*v2 == v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 - 64;
  }

  return *v4;
}

const char *sub_276D69B48(const char **a1, _BYTE *a2)
{
  v4 = sub_276D67300(a1);
  v5 = *v4;
  if (*v4 == *(v4 + 8))
  {
    v5 = a1;
  }

  v6 = *v5;
  *a2 = 1;
  if (a1[1])
  {
    *a2 = sub_276D69BB0(a1, v6) ^ 1;
  }

  return v6;
}

uint64_t sub_276D69BB0(void *a1, const char *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  if (v2)
  {
    return 0;
  }

  v5 = MEMORY[0x277D81490];
  if (v2 >= 0)
  {
    v5 = a1;
  }

  v6 = (*v5 + v5[1]);
  if (v6 == a2 || (v2 & 0x800) != 0 && v6 - 1 == a2)
  {
    return (v2 >> 12) & 1;
  }

  v8 = a1[26];
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPWritingDirection TSWPLineFragment::writingDirectionForCharIndex(TSWPCharIndex) const");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2460, 0, "invalid nil value for '%{public}s'", "_textSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = a1[26];
  }

  v17 = objc_msgSend_charIndexMappedFromStorage_(v8, a2, a2);
  v18 = a1[27];
  v19 = a1[28];
  if (v19 == v18 && v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSWPWritingDirection TSWPLineFragment::writingDirectionForCharIndex(TSWPCharIndex) const");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 2464, 0, "bad character index: %d", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    return 0;
  }

  v7 = 0;
  if (v19 != v18 && v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = sub_276DD1F38(v18);
    v29 = CTLineGetGlyphRuns(v28);
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v36, v40, 16);
    if (v7)
    {
      v31 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v36 + 1) + 8 * i);
          StringRange = CTRunGetStringRange(v33);
          if (v17 >= StringRange.location && v17 - StringRange.location < StringRange.length)
          {
            v7 = CTRunGetStatus(v33) & 1;
            goto LABEL_29;
          }
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, StringRange.length, &v36, v40, 16);
      }

      while (v7);
    }

LABEL_29:
  }

  return v7;
}

const char *sub_276D69EA4(const char **a1, _BYTE *a2)
{
  v4 = sub_276D67300(a1);
  v5 = v4[1];
  if (*v4 == v5)
  {
    v6 = a1;
  }

  else
  {
    v6 = (v5 - 64);
  }

  v7 = *v6;
  *a2 = 1;
  if (a1[1])
  {
    *a2 = sub_276D69BB0(a1, v7);
  }

  return v7;
}

CFIndex sub_276D69F0C(uint64_t a1)
{
  v3 = a1 + 216;
  v2 = *(a1 + 216);
  if (*(v3 + 8) == v2)
  {
    return 0;
  }

  v4 = sub_276DD1F38(v2);

  return CTLineGetGlyphCount(v4);
}

const void *sub_276D69F48(unint64_t *a1, const char *a2, BOOL *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a1[27];
  v6 = a1[28];
  if (v6 == v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CTFontRef TSWPLineFragment::fontAtCharIndex(TSWPCharIndex, BOOL &) const");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1644, 0, "No line refs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v7 = a1[27];
    v6 = a1[28];
  }

  if (v6 == v7)
  {
    return 0;
  }

  v15 = a1[26];
  v16 = *a1;
  v17 = a1[3];
  v18 = v17 < 0;
  if (v17 < 0)
  {
    v19 = MEMORY[0x277D81490];
  }

  else
  {
    v19 = a1;
  }

  v20 = v19[1];
  v21 = *MEMORY[0x277D81490];
  if (!v18)
  {
    v21 = *a1;
  }

  v22 = v21 + v20;
  if (v16 <= a2)
  {
    v16 = a2;
  }

  if (v22 >= v16)
  {
    v23 = objc_msgSend_charIndexMappedFromStorage_(v15, a2, v16);
  }

  else
  {
    v23 = objc_msgSend_charIndexMappedFromStorage_(v15, a2, v22);
  }

  v24 = v23;
  *a3 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = sub_276DD1F38(a1[27]);
  v26 = CTLineGetGlyphRuns(v25);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v38, v42, 16);
  if (v28)
  {
    v29 = *v39;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v38 + 1) + 8 * i);
        StringRange = CTRunGetStringRange(v31);
        if (v24 >= StringRange.location && v24 - StringRange.location < StringRange.length)
        {
          Attributes = CTRunGetAttributes(v31);
          Value = CFDictionaryGetValue(Attributes, @"TSWPUnadjustedFont");
          v34 = Value;
          if (!Value)
          {
            v34 = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
          }

          *a3 = (CTRunGetStatus(v31) & 4) != 0;
          goto LABEL_30;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, StringRange.length, &v38, v42, 16);
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0;
LABEL_30:

  return v34;
}

void sub_276D6A1CC(uint64_t a1, const char *a2, unsigned __int8 a3, int a4, char a5)
{
  v49 = a3;
  v5 = MEMORY[0x277D81490];
  if (*(a1 + 24) < 0)
  {
    v6 = MEMORY[0x277D81490];
  }

  else
  {
    v6 = a1;
  }

  v9 = v6;
  v7 = *v6;
  v8 = v9[1];
  v10 = &a2[-v7] < v8 && a2 >= v7;
  v11 = (v7 + v8);
  if (!v10 && v11 != a2)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGFloat TSWPLineFragment::wpOffsetForInsertionPoint(TSWPCharIndex, BOOL, BOOL, BOOL) const");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1677, 0, "invalid charIndex for line fragment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    return;
  }

  v16 = sub_276D6A428(a1, a2, &v49, a4);
  v17 = *(a1 + 216);
  if (*(a1 + 224) == v17)
  {
    v34 = 0.0;
    if (a5)
    {
      return;
    }

    goto LABEL_20;
  }

  v18 = v16;
  v19 = sub_276D67300(a1);
  v23 = *v19;
  v22 = v19[1];
  if (v22 != *v19)
  {
    v24 = (v22 - *v19) >> 6;
    if (v18 < v24 && *(v23 + (v18 << 6) + 48) != v49)
    {
      ++v18;
    }

    if (v18 == v24)
    {
      v25 = *(v17 + 8);
      v26 = *(v22 - 24);
    }

    else
    {
      v25 = *(v23 + (v18 << 6) + 32);
      v26 = *(v17 + 8);
    }

LABEL_39:
    v37 = v25 + v26;
    goto LABEL_40;
  }

  v36 = *(a1 + 24);
  if (v36)
  {
    if (v49 == 1)
    {
      if (v36 < 0)
      {
        v40 = v5;
      }

      else
      {
        v40 = a1;
      }

      v41 = *v40 == a2;
    }

    else
    {
      v41 = 0;
    }

    v42 = objc_msgSend_geometry(*(a1 + 416), v20, v21);
    objc_msgSend_frame(v42, v43, v44);
    v46 = v45;
    v48 = v47;

    v25 = *(v17 + 8);
    v26 = 0.0;
    if (v41 == ((v36 >> 12) & 1))
    {
      if ((*(a1 + 25) & 0x20) != 0)
      {
        v26 = v48;
      }

      else
      {
        v26 = v46;
      }
    }

    goto LABEL_39;
  }

  v37 = *(v17 + 8);
  if ((v36 & 0x800) != 0)
  {
    v38 = -7.0;
    if ((v36 & 0x1000) == 0)
    {
      v38 = 7.0;
    }

    v39 = v38 + v37;
    if (!v49)
    {
      v37 = v39;
    }
  }

LABEL_40:
  v34 = v37 + *(a1 + 40);
  if ((a5 & 1) == 0)
  {
LABEL_20:
    v35 = fmin(v34, CGRectGetMaxX(*(a1 + 40)));
    fmax(v35, CGRectGetMinX(*(a1 + 40)));
  }
}

uint64_t sub_276D6A428(uint64_t a1, const char *a2, _BYTE *a3, int a4)
{
  v6 = a2;
  if (!objc_msgSend_length(*(a1 + 208), a2, a3))
  {
    goto LABEL_28;
  }

  v9 = *(a1 + 24) & 0x1000;
  if (*(a1 + 24) < 0)
  {
    v10 = MEMORY[0x277D81490];
  }

  else
  {
    v10 = a1;
  }

  v11 = objc_msgSend_charRangeRemappedFromStorage_(*(a1 + 208), v8, *v10, v10[1]);
  v14 = v11;
  v15 = v12;
  if ((a4 & 1) != 0 || v11 >= v6)
  {
    IsRTL = TSWPPrimaryInputMethodIsRTL(v11, v12, v13);
  }

  else
  {
    v16 = TSWPPreviousCharIndexFromTextSource(v6, *(a1 + 208));
    IsRTL = sub_276D69BB0(a1, v16);
  }

  v18 = IsRTL;
  v19 = &v15[v14];
  if (v15)
  {
    v20 = v19 == v6;
  }

  else
  {
    v20 = 0;
  }

  if (v20 && *a3 == 1)
  {
    if (!a4)
    {
      v6 = TSWPPreviousCharIndexFromTextSource(v6, *(a1 + 208));
      v25 = sub_276D69BB0(a1, v6);
      if (v25 != (v9 >> 12) && v25 == (v18 & 1))
      {
        *a3 = 0;
        goto LABEL_28;
      }
    }

LABEL_16:
    if (v9)
    {
LABEL_17:
      v21 = sub_276D69B48(a1, a3);
LABEL_27:
      v6 = v21;
      goto LABEL_28;
    }

LABEL_26:
    v21 = sub_276D69EA4(a1, a3);
    goto LABEL_27;
  }

  if (v14 > v6 && (*a3 & 1) == 0)
  {
LABEL_25:
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (a4)
  {
    goto LABEL_28;
  }

  v22 = sub_276D69BB0(a1, v6);
  v23 = v22;
  if (v14 != v6 || (*a3 & 1) == 0)
  {
    if (v19 - 1 == v6)
    {
      if ((*a3 & 1) == 0)
      {
        if (v22 != (v9 >> 12) && v22 != (v18 & 1))
        {
          goto LABEL_16;
        }

        goto LABEL_28;
      }
    }

    else if ((*a3 & 1) == 0)
    {
      v26 = sub_276D37528(v6, *(a1 + 208));
      goto LABEL_42;
    }

    v26 = TSWPPreviousCharIndexFromTextSource(v6, *(a1 + 208));
LABEL_42:
    v27 = v26;
    if (v23 != sub_276D69BB0(a1, v26) && v23 != (v18 & 1))
    {
      *a3 ^= 1u;
      v6 = v27;
    }

    goto LABEL_28;
  }

  if (v22 != (v9 >> 12) && v22 != (v18 & 1))
  {
    goto LABEL_25;
  }

LABEL_28:

  return sub_276D6A648(a1, v6);
}

uint64_t sub_276D6A648(uint64_t a1, unint64_t a2)
{
  v4 = sub_276D67300(a1);
  v5 = v4;
  if ((*(a1 + 25) & 0x10) != 0)
  {
    result = 0;
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = *v4;
    v7 = v4[1];
    if (*v4 == v7)
    {
      return 0;
    }

    result = ((v7 - v6) >> 6) - 1;
  }

  v9 = v7 - v6;
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 6;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    for (i = (v6 + 8); ; i += 8)
    {
      v13 = *(i - 1);
      v15 = a2 >= v13;
      v14 = a2 - v13;
      v15 = !v15 || v14 >= *i;
      if (!v15)
      {
        break;
      }

      if (v11 == ++v10)
      {
        return result;
      }
    }

    return v10;
  }

  return result;
}

unint64_t sub_276D6A6EC(uint64_t a1, const char *a2, int a3, double a4)
{
  v6 = *(a1 + 216);
  if (*(a1 + 224) == v6)
  {
    goto LABEL_40;
  }

  v7 = *(a1 + 40);
  v8 = a4 - v7;
  v9 = v8 - *(v6 + 8);
  if (v9 <= *(a1 + 72) - v7 + 1.0)
  {
    v12 = sub_276D67300(a1);
    v13 = *v12;
    if (*v12 == v12[1])
    {
      v13 = a1;
    }

    v11 = *v13;
    goto LABEL_41;
  }

  v10 = a2;
  if (v9 >= 0.0)
  {
    if (v8 >= *(a1 + 240) && (a3 & 1) != 0)
    {
      goto LABEL_40;
    }
  }

  else if (a3)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_45;
  }

  v14 = sub_276D67300(a1);
  v15 = *v14;
  v16 = v14[1] - *v14;
  if (v16)
  {
    v17 = v15[4];
    v18 = v15[5];
    v19 = v17 + (v18 - v17) * 0.5;
    v20 = v9 > v19;
    if (v10 || (v9 >= v17 ? (v21 = v9 > v19) : (v21 = 1), v21))
    {
      v23 = 0;
      v24 = v16 >> 6;
      v25 = v15 + 13;
      v26 = 0.0;
      while (1)
      {
        v22 = v23;
        v27 = v19;
        if (!v10 && v9 >= v19 && v9 <= v18)
        {
          break;
        }

        v29 = (v9 < v26 || v20) && v9 > v17;
        if (v10 != 1)
        {
          v29 = 1;
        }

        ++v23;
        if (v29 != 1 || v23 >= v24)
        {
          break;
        }

        v17 = *(v25 - 1);
        v18 = *v25;
        v19 = v17 + (*v25 - v17) * 0.5;
        v20 = v9 > v19;
        v25 += 8;
        v26 = v27;
        if (!v10)
        {
          v26 = v27;
          if (v9 >= v17)
          {
            v26 = v27;
            if (v9 <= v19)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v22 = -1;
    }

    if (v9 < 0.0 && !a3)
    {
      v22 = 0;
      goto LABEL_38;
    }

    if (v22 != -1)
    {
LABEL_38:
      v11 = *&v15[8 * v22];
      if ((*(a1 + 25) & 0x40) != 0)
      {
        v11 = *a1 + v11 - *(a1 + 16);
      }

      goto LABEL_41;
    }
  }

LABEL_40:
  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:
  if ((a3 & 1) == 0 && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *a1;
    if ((*(a1 + 25) & 0x10) != 0)
    {
      v11 += *(a1 + 8);
    }
  }

LABEL_45:
  if ((v11 != 0x7FFFFFFFFFFFFFFFLL || (a3 & 1) == 0) && (v11 < *a1 || v11 > *(a1 + 8) + *a1))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPCharIndex TSWPLineFragment::charIndexForWPOffsetWithDirection(CGFloat, TSWPWritingDirection, BOOL) const");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 1901, 0, "TSWPLineFragment::charIndexForWPOffset: out-of-bounds result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
  }

  return v11;
}

uint64_t sub_276D6A99C(double *a1, const char *a2, char a3, unsigned __int8 *a4, char a5, double a6)
{
  v42 = 1;
  v9 = *(a1 + 27);
  if (*(a1 + 28) == v9)
  {
    goto LABEL_20;
  }

  v11 = a2;
  v12 = a6 - a1[5];
  v13 = v12 - *(v9 + 8);
  v14 = sub_276DD1F38(*(a1 + 27));
  if (v13 >= COERCE_DOUBLE(CTLineGetBoundsWithOptions(v14, 0)))
  {
    if (v12 < a1[30] || (a3 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_21;
  }

  if (a3)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

LABEL_7:
  if (v11 && (a5 & 1) == 0)
  {
    v16 = sub_276DD1F38(v9);
    v43.y = 0.0;
    v43.x = v13;
    StringIndexForPosition = CTLineGetStringIndexForPosition(v16, v43);
    if ((StringIndexForPosition & 0x8000000000000000) == 0)
    {
      v18 = StringIndexForPosition;
      v19 = *(a1 + 3) < 0 ? MEMORY[0x277D81490] : a1;
      v20 = objc_msgSend_charRangeMappedFromStorage_(*(a1 + 26), a2, *v19, v19[1]);
      v21 = v18 < v20 || v18 - v20 >= a2;
      if (!v21 || &a2[v20] == v18)
      {
        v22 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 26), a2, v18);
LABEL_58:
        v15 = v22;
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  v31 = sub_276D67300(a1);
  v32 = *v31;
  v33 = v31[1] - *v31;
  if (!v33)
  {
    v42 = 1;
LABEL_51:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_55;
  }

  v34 = v33 >> 6;
  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(v32 + 32);
  if (v36 <= v13)
  {
    v38 = 0;
    v39 = v35 - 1;
    v40 = v32 + 40;
    while (1)
    {
      if ((v36 + *v40) * 0.5 > v13 && v11 != 0)
      {
        v42 = *(v40 + 8);
        goto LABEL_53;
      }

      if (v39 == v38)
      {
        break;
      }

      v36 = *(v40 + 56);
      v40 += 64;
      ++v38;
      if (v36 > v13)
      {
        v37 = v11 & *(v40 - 56) ^ 1;
        --v38;
        goto LABEL_50;
      }
    }

    v42 = v11 & *(v40 + 8) ^ 1;
    v38 = v39;
  }

  else
  {
    v37 = 1;
    v38 = -1;
LABEL_50:
    v42 = v37;
    if (v38 == -1)
    {
      goto LABEL_51;
    }
  }

LABEL_53:
  v15 = *(v32 + (v38 << 6));
  if ((*(a1 + 25) & 0x40) != 0)
  {
    v15 = *a1 + v15 - *(a1 + 2);
  }

LABEL_55:
  if (v15 == 0x7FFFFFFFFFFFFFFFLL && (a3 & 1) == 0)
  {
    v22 = sub_276D69B48(a1, &v42);
    goto LABEL_58;
  }

LABEL_21:
  if ((a3 & 1) == 0 && v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = *a1;
    v42 = 1;
  }

LABEL_24:
  if ((v15 != 0x7FFFFFFFFFFFFFFFLL || (a3 & 1) == 0) && (v15 < *a1 || v15 > *(a1 + 1) + *a1))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPCharIndex TSWPLineFragment::charIndexForWPOffset(CGFloat, BOOL, BOOL, BOOL *, BOOL) const");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 1977, 0, "TSWPLineFragment::charIndexForWPOffset: out-of-bounds result: %lu {%lu, %lu}", v15, *a1, *(a1 + 1));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  if (a4)
  {
    *a4 = v42;
    return v15;
  }

  else
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v15 + (v42 ^ 1);
    }
  }

  return result;
}

void sub_276D6ACD4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_276D34ED8();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_276D6D860(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

BOOL sub_276D6ADDC(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[7];
  v3 = a2[7];
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = *a1;
      v6 = *a2;
    }

    else
    {
      v5 = *a2;
      v6 = *a1;
    }

    v4 = v5 >= v6;
  }

  return !v4;
}

void sub_276D6AE18(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      sub_276D34ED8();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_276D6D8B8(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

uint64_t sub_276D6AF00(uint64_t a1, const char *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D81490];
  if (*(a1 + 24) < 0)
  {
    v5 = MEMORY[0x277D81490];
  }

  else
  {
    v5 = a1;
  }

  v8 = v5;
  v6 = *v5;
  v7 = v8[1];
  v10 = a2 >= v6;
  v9 = &a2[-v6];
  v10 = !v10 || v9 >= v7;
  v11 = v10;
  if (v11 == 1)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSUInteger TSWPLineFragment::characterCountOfGlyphAtCharIndex(const TSWPCharIndex) const");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 2615, 0, "invalid charIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = *(a1 + 216);
  if (*(a1 + 224) == v19)
  {
    return 0;
  }

  v20 = *(a1 + 8) ? v11 : 1;
  if (v20)
  {
    return 0;
  }

  v21 = sub_276DD1F38(v19);
  v23 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 208), v22, a2);
  v24 = *(a1 + 376);
  if (v24)
  {
    v26 = v24;
    v27 = objc_msgSend_dropCapStyleAtCharIndex_(*(a1 + 208), v25, v23);

    if (v27)
    {
      objc_msgSend_rangeOfDropCapAtCharIndex_(*(a1 + 208), v28, v23);
      return v29;
    }
  }

  if (v23 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = CTLineGetGlyphRuns(v21);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v49, v53, 16);
  if (!v33)
  {

LABEL_50:
    if (*(a1 + 24) < 0)
    {
      v46 = v4;
    }

    else
    {
      v46 = a1;
    }

    v45 = *v46 + v46[1];
    return v45 - a2;
  }

  obj = v31;
  v34 = *v50;
  v35 = v23 + 1;
  v36 = -1;
  while (2)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v50 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v49 + 1) + 8 * i);
      GlyphCount = CTRunGetGlyphCount(v38);
      sub_276D6D3E8(buffer, GlyphCount);
      v55.location = 0;
      v55.length = 0;
      CTRunGetStringIndices(v38, v55, buffer[0]);
      if (GlyphCount >= 1)
      {
        v41 = 0;
        while (1)
        {
          v42 = buffer[0][v41];
          if (objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v40, v42, obj) > a2)
          {
            v43 = v36 >= v42 ? v42 : v36;
            v36 = v36 == -1 ? v42 : v43;
            if (v36 == v35)
            {
              break;
            }
          }

          if (GlyphCount == ++v41)
          {
            goto LABEL_39;
          }
        }

        v36 = v35;
      }

LABEL_39:
      if (buffer[0])
      {
        buffer[1] = buffer[0];
        operator delete(buffer[0]);
      }

      if (v36 == v35)
      {
        v36 = v35;
        goto LABEL_47;
      }
    }

    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v49, v53, 16);
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_47:

  v4 = MEMORY[0x277D81490];
  if (v36 == -1)
  {
    goto LABEL_50;
  }

  v45 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 208), v44, v36);
  return v45 - a2;
}

double sub_276D6B284(uint64_t a1, int a2, double a3)
{
  v107 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) >= 2)
  {
    v9 = *(a1 + 88);
    v10 = 0.0;
  }

  else
  {
    if (sub_276D69F0C(a1) != 1 || (v6 = a3, (*(a1 + 25) & 8) == 0))
    {
      v7 = *(a1 + 216);
      if (*(a1 + 224) == v7)
      {
        v6 = 0.0;
      }

      else
      {
        v8 = sub_276DD1F38(v7);
        v6 = CTLineGetTrailingWhitespaceWidth(v8) + a3 - *(a1 + 240);
      }
    }

    if (a2 == 2)
    {
      v10 = v6 * 0.5;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(a1 + 216);
    v12 = *(a1 + 224) - v11;
    if (v12)
    {
      v13 = 0x4EC4EC4EC4EC4EC5 * (v12 >> 3);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = (v11 + 8);
      do
      {
        *v14 = v10 + *v14;
        v14 += 13;
        --v13;
      }

      while (v13);
    }

    v15 = *(a1 + 248);
    v16 = *(a1 + 256) - v15;
    if (v16)
    {
      v17 = 0x4EC4EC4EC4EC4EC5 * (v16 >> 3);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = (v15 + 8);
      do
      {
        *v18 = v10 + *v18;
        v18 += 13;
        --v17;
      }

      while (v17);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v19 = *(a1 + 336);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v98, v106, 16);
    if (v23)
    {
      v24 = *v99;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v99 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v98 + 1) + 8 * i);
          objc_msgSend_start(v26, v21, v22);
          objc_msgSend_setStart_(v26, v28, v29, v10 + v27);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v98, v106, 16);
      }

      while (v23);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v30 = *(a1 + 344);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v94, v105, 16);
    if (v34)
    {
      v35 = *v95;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v95 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v94 + 1) + 8 * j);
          objc_msgSend_start(v37, v32, v33);
          objc_msgSend_setStart_(v37, v39, v40, v10 + v38);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v94, v105, 16);
      }

      while (v34);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v41 = *(a1 + 352);
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v90, v104, 16);
    if (v45)
    {
      v46 = *v91;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v91 != v46)
          {
            objc_enumerationMutation(v41);
          }

          v48 = *(*(&v90 + 1) + 8 * k);
          objc_msgSend_start(v48, v43, v44);
          objc_msgSend_setStart_(v48, v50, v51, v10 + v49);
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v90, v104, 16);
      }

      while (v45);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v52 = *(a1 + 360);
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v86, v103, 16);
    if (v56)
    {
      v57 = *v87;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v87 != v57)
          {
            objc_enumerationMutation(v52);
          }

          v59 = *(*(&v86 + 1) + 8 * m);
          objc_msgSend_start(v59, v54, v55);
          objc_msgSend_setStart_(v59, v61, v62, v10 + v60);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v86, v103, 16);
      }

      while (v56);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v63 = *(a1 + 368);
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v82, v102, 16);
    if (v67)
    {
      v68 = *v83;
      do
      {
        for (n = 0; n != v67; ++n)
        {
          if (*v83 != v68)
          {
            objc_enumerationMutation(v63);
          }

          objc_msgSend_adjustAlignmentBy_(*(*(&v82 + 1) + 8 * n), v65, v66, v10, v82);
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v82, v102, 16);
      }

      while (v67);
    }

    *(a1 + 240) = v10 + *(a1 + 240);
    v9 = v10 + *(a1 + 88);
    *(a1 + 88) = v9;
  }

  v70 = *(a1 + 72);
  v71 = *(a1 + 80);
  v72 = *(a1 + 96);
  IsNull = CGRectIsNull(*(&v9 - 2));
  v74 = 0.0;
  v75 = 0.0;
  if (!IsNull)
  {
    v75 = *(a1 + 40) - *(a1 + 72);
  }

  if ((*(a1 + 26) & 4) != 0)
  {
    v74 = 50.0;
  }

  v76 = (*(a1 + 120) + *(a1 + 136)) * 0.25 + v74;
  if (v76 < v75)
  {
    v76 = v75;
  }

  if (*(a1 + 88) < a3 + v76 * 2.0)
  {
    TSURectWithOriginAndSize();
    *(a1 + 72) = v77;
    *(a1 + 80) = v78;
    *(a1 + 88) = v79;
    *(a1 + 96) = v80;
  }

  *(a1 + 56) = a3;
  return v10;
}

BOOL sub_276D6B7F4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a2 + 224) == *(a2 + 216))
  {
    return 0;
  }

  result = 0;
  v5 = *(a2 + 24);
  if ((v5 & 4) == 0 && ((v5 >> 13) & 1) != ((*(a1 + 25) & 0x20) == 0))
  {
    result = CGRectEqualToRect(*(a2 + 40), *(a1 + 40));
    if (result)
    {
      if (a1 != a2)
      {
        sub_276D6F5AC(a1 + 216, *(a2 + 216), *(a2 + 224), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 224) - *(a2 + 216)) >> 3));
      }

      objc_storeStrong((a1 + 336), *(a2 + 336));
      objc_storeStrong((a1 + 344), *(a2 + 344));
      objc_storeStrong((a1 + 352), *(a2 + 352));
      objc_storeStrong((a1 + 360), *(a2 + 360));
      objc_storeStrong((a1 + 424), *(a2 + 424));
      v6 = *(a2 + 432);
      if (v6)
      {
        objc_storeStrong((a1 + 432), v6);
      }

      *(a1 + 240) = *(a2 + 240);
      objc_storeStrong((a1 + 480), *(a2 + 480));
      return 1;
    }
  }

  return result;
}

uint64_t sub_276D6B934(uint64_t a1)
{
  result = *(a1 + 224);
  v3 = *(a1 + 216);
  while (result != v3)
  {
    result = sub_276DD1EBC(result - 104);
  }

  *(a1 + 224) = v3;
  return result;
}

uint64_t sub_276D6B974(void *a1, const char *a2, CGFloat *a3, double *a4, void *a5, void *a6, void *a7)
{
  v72 = *MEMORY[0x277D85DE8];
  if (a1[35] != a1[34])
  {
    v13 = a1[26];
    if (!v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSWPLineFragment::isInsideTateChuYokoLineAtCharIndex(TSWPCharIndex, CGFloat &, CGFloat &, CGFloat &, CGFloat &, CGFloat &) const");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2784, 0, "invalid nil value for '%{public}s'", "_textSource");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      v13 = a1[26];
    }

    v21 = objc_msgSend_charIndexMappedFromStorage_(v13, a2, a2);
    v22 = a1[34];
    v23 = a1[35] - v22;
    if (v23)
    {
      v24 = 0;
      v25 = 0x4EC4EC4EC4EC4EC5 * (v23 >> 3);
      v26 = 1;
      while (1)
      {
        v27 = v22 + 104 * v24;
        v28 = *(v27 + 24);
        v29 = v21 - v28;
        if (v21 > v28 && v21 < *(v27 + 32) + v28)
        {
          break;
        }

        v24 = v26;
        v45 = v25 > v26++;
        if (!v45)
        {
          return 0;
        }
      }

      v31 = sub_276DD1F38(v27);
      v32 = v29 + CTLineGetStringRange(v31).location;
      v33 = sub_276DD1F38(v27);
      *a3 = CTLineGetOffsetForStringIndex(v33, v32, 0);
      v34 = sub_276DD1F38(v27);
      *a4 = CTLineGetTypographicBounds(v34, 0, 0, 0);
      v35 = sub_276DD1F38(v27);
      CTLineGetGlyphRuns(v35);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v36 = sub_276DD1F38(v27);
      v37 = CTLineGetGlyphRuns(v36);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v67, v71, 16);
      v40 = v39;
      if (v39)
      {
        v41 = *v68;
        do
        {
          v42 = 0;
          do
          {
            if (*v68 != v41)
            {
              objc_enumerationMutation(v37);
            }

            v43 = *(*(&v67 + 1) + 8 * v42);
            StringRange = CTRunGetStringRange(v43);
            v45 = StringRange.location >= v32 || v32 > StringRange.location + StringRange.length;
            if (!v45)
            {
              Attributes = CTRunGetAttributes(v43);
              Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              sub_276D38FF4(Value, v56, v57, &v61);
              v58 = v63;
              *a5 = v62;
              *a6 = v58;
              *a7 = *(&v63 + 1);

              return 1;
            }

            ++v42;
          }

          while (v40 != v42);
          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, StringRange.length, &v67, v71, 16);
        }

        while (v40);
      }

      v46 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "BOOL TSWPLineFragment::isInsideTateChuYokoLineAtCharIndex(TSWPCharIndex, CGFloat &, CGFloat &, CGFloat &, CGFloat &, CGFloat &) const");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v48, v50, 2819, 0, "Could not find the CTRun for the tate chu yoko run.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
    }
  }

  return 0;
}

uint64_t sub_276D6BD14(uint64_t result, int a2)
{
  v2 = 2;
  if (!a2)
  {
    v2 = 0;
  }

  *(result + 24) = *(result + 24) & 0xFFFFFFFFFFFFFFFDLL | v2;
  return result;
}

BOOL sub_276D6BD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a1)
  {
    return 0;
  }

  v30 = v3;
  v31 = v4;
  if (!CGRectEqualToRect(*(a1 + 40), *(a2 + 40)))
  {
    return 1;
  }

  if (!CGRectEqualToRect(*(a1 + 72), *(a2 + 72)))
  {
    return 1;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 1;
  }

  if (*a1 != *a2 + a3)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) + a3)
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 1;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 1;
  }

  v10 = *(a2 + 216);
  v9 = *(a2 + 224);
  v11 = v9 - v10;
  if (v9 - v10 != *(a1 + 224) - *(a1 + 216))
  {
    return 1;
  }

  if (v9 != v10)
  {
    v12 = 0;
    v13 = 0x4EC4EC4EC4EC4EC5 * (v11 >> 3);
    v14 = 1;
    do
    {
      v15 = 104 * v12;
      v16 = *(a2 + 216) + v15;
      v17 = *(a1 + 216) + v15;
      v18 = *(v16 + 8) == *(v17 + 8) && *(v16 + 16) == *(v17 + 16);
      if (!v18 || !CFEqual(*v16, *v17))
      {
        return 1;
      }

      if (*(v16 + 24) != *(v17 + 24) || *(v16 + 32) != *(v17 + 32))
      {
        return 1;
      }

      if (*(v16 + 96) != *(v17 + 96))
      {
        return 1;
      }

      if (*(v16 + 40) != *(v17 + 40))
      {
        return 1;
      }

      v20 = *(v16 + 48);
      v21 = *(v16 + 80);
      *&t1.c = *(v16 + 64);
      *&t1.tx = v21;
      *&t1.a = v20;
      v22 = *(v17 + 48);
      v23 = *(v17 + 80);
      *&v28.c = *(v17 + 64);
      *&v28.tx = v23;
      *&v28.a = v22;
      if (!CGAffineTransformEqualToTransform(&t1, &v28))
      {
        return 1;
      }

      v12 = v14;
    }

    while (v13 > v14++);
  }

  v25 = *(a1 + 200);
  v26 = *(a2 + 200);
  if (!v25)
  {
    return v26 || (*(a1 + 24) & 1) != 0;
  }

  return !v26 || (objc_msgSend_isEqualToListLabel_(v25, v8, v26) & 1) == 0;
}

double sub_276D6BF6C(uint64_t a1, int a2, double a3)
{
  v3 = *(a1 + 24);
  v4 = 0.0;
  if ((v3 & 0x100000000) == 0)
  {
    v5 = *(a1 + 136);
    v6 = *(a1 + 144);
    v7 = *(a1 + 112);
    v8 = *(a1 + 120);
    v9 = v5 + v6 + fmax(v7, v8);
    if (a2 <= 1)
    {
      if (!a2)
      {
        if ((v3 & 0x10) != 0)
        {
          v12 = v5 + v7;
        }

        else if (a3 <= 1.0)
        {
          v12 = v9 * a3;
          if (v12 < v7)
          {
            v12 = *(a1 + 112);
          }
        }

        else
        {
          v12 = v9 + (a3 + -1.0) * (v6 + v8 + v5);
        }

        v10 = v12 + *(a1 + 152);
        return v10 + *(a1 + 104) + *(a1 + 160);
      }

      if (a2 == 1)
      {
        v11 = v9 + *(a1 + 152);
        if (v11 >= a3)
        {
          v10 = v11;
        }

        else
        {
          v10 = a3;
        }

        return v10 + *(a1 + 104) + *(a1 + 160);
      }
    }

    else
    {
      v10 = a3;
      switch(a2)
      {
        case 2:
          return v10 + *(a1 + 104) + *(a1 + 160);
        case 3:
          v10 = fmin(v9 + *(a1 + 152), a3);
          return v10 + *(a1 + 104) + *(a1 + 160);
        case 4:
          v10 = fmax(v9 + *(a1 + 152) + a3, 0.0);
          return v10 + *(a1 + 104) + *(a1 + 160);
      }
    }

    v10 = v9;
    return v10 + *(a1 + 104) + *(a1 + 160);
  }

  return v4;
}

double sub_276D6C15C(double *a1, const char *a2, char a3, double a4)
{
  v5 = a2;
  v6 = a1[15];
  v8 = a1[17];
  v7 = a1[18];
  v9 = a1[13];
  v10 = v7 + v6 + v8;
  v11 = v8 + v7 + fmax(a1[14], v6);
  v12 = a1[20];
  v13 = v9 + a1[19] + v11;
  v14 = v12 + v13;
  if (a2 == 2)
  {
    v15 = v9 + a4 + v12;
  }

  else if (a2 == 1)
  {
    v15 = fmax(v14, a4);
  }

  else
  {
    v15 = v12 + v13;
    if (!a2)
    {
      v15 = v12 + v13;
      if (a4 > 1.0)
      {
        v15 = v12 + v13;
        if ((a3 & 1) == 0)
        {
          v15 = v14 + (a4 + -1.0) * v10;
        }
      }
    }
  }

  if (v15 <= 0.0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGFloat TSWPLineFragment::heightForHeightInfo(TSWPLineSpacingMode, CGFloat, BOOL) const");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 2992, 0, "bad lineheight; mode: %lu, amount: %g, text: %g, total: %g", v5, *&a4, *&v10, *&v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  return v15;
}

BOOL sub_276D6C2CC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = round(CGRectGetMinX(*(a1 + 40)));
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  if (v10 != round(CGRectGetMinX(v13)))
  {
    return 1;
  }

  v12 = round(CGRectGetMaxX(*(a1 + 40)));
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  return v12 != round(CGRectGetMaxX(v14));
}

uint64_t sub_276D6C37C(uint64_t a1, float64_t a2, float64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 48) = a3 + *(a1 + 48);
  v5.f64[0] = a2;
  v5.f64[1] = a3;
  *(a1 + 72) = vaddq_f64(v5, *(a1 + 72));
  v5.f64[0] = a3;
  v5.f64[1] = a2;
  *(a1 + 32) = vaddq_f64(v5, *(a1 + 32));
  result = *(a1 + 376);
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_offsetBy_, a5);
  }

  return result;
}

id sub_276D6C3C0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 416);
    v5 = v2;
    if (v2)
    {
      v6 = objc_msgSend_info(v2, v3, v4);
      v9 = objc_msgSend_partitioner(v6, v7, v8);
      v1 = objc_msgSend_hintForLayout_(v9, v10, v5);
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_276D6C480(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_setStartPos_(*(a1 + 384), a2, a3);
  v5 = *(a1 + 384);

  return MEMORY[0x2821F9670](v5, sel_setEndPos_, v4);
}

uint64_t sub_276D6C4CC(uint64_t a1, char *a2, void *a3)
{
  objc_msgSend_startPos(*(a1 + 384), a2, a3);
  *a2 = v6;
  result = objc_msgSend_endPos(*(a1 + 384), v7, v8);
  *a3 = v10;
  return result;
}

void sub_276D6C514(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  objc_msgSend_setHyphenationAttr_(*(a1 + 384), v5, v7);
  objc_msgSend_setHyphenationChar_(*(a1 + 384), v6, a3);
  *(a1 + 392) = a3;
}

uint64_t sub_276D6C58C(uint64_t a1, char *a2, uint64_t a3)
{
  *a2 = objc_msgSend_hyphenationChar(*(a1 + 384), a2, a3);
  v5 = *(a1 + 384);

  return MEMORY[0x2821F9670](v5, sel_hyphenationAttr, v4);
}

uint64_t sub_276D6C5F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  *(a1 + 448) = v4;
  if ((v4 & 2) != 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPLineFragment::saveLayoutState()");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 3072, 0, "bad starting line fragment state: hyphenated");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (*(a1 + 216) != *(a1 + 224))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPLineFragment::saveLayoutState()");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 3073, 0, "bad starting line fragment state: line vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (objc_msgSend_count(*(a1 + 424), a2, a3))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "void TSWPLineFragment::saveLayoutState()");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 3074, 0, "bad starting line fragment state: adornments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (objc_msgSend_count(*(a1 + 336), v19, v20))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "void TSWPLineFragment::saveLayoutState()");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 3075, 0, "bad starting line fragment state: _underlines positions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  if (objc_msgSend_count(*(a1 + 344), v28, v29))
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "void TSWPLineFragment::saveLayoutState()");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 3076, 0, "bad starting line fragment state: _strikesthrough positions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
  }

  if (objc_msgSend_count(*(a1 + 352), v37, v38))
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "void TSWPLineFragment::saveLayoutState()");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 3077, 0, "bad starting line fragment state: _textBackgrounds positions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
  }

  result = objc_msgSend_count(*(a1 + 360), v46, v47);
  if (result)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "void TSWPLineFragment::saveLayoutState()");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 3078, 0, "bad starting line fragment state: _textHighlights positions");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
  }

  if (*(a1 + 432))
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "void TSWPLineFragment::saveLayoutState()");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 3079, 0, "expected nil value for '%{public}s'", "_breakLine");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
  }

  if (*(a1 + 480))
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "void TSWPLineFragment::saveLayoutState()");
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v75, v72, v74, 3080, 0, "expected nil value for '%{public}s'", "_paragraphString");

    v78 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v78, v76, v77);
  }

  return result;
}

void sub_276D6CAB4(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 24) = *(a1 + 448) & 0xFFFFFFFFFFFFFFFDLL;
  v4 = *(a1 + 224);
  v5 = *(a1 + 216);
  while (v4 != v5)
  {
    v4 = sub_276DD1EBC(v4 - 104);
  }

  *(a1 + 224) = v5;
  objc_msgSend_removeAllObjects(*(a1 + 424), a2, a3);
  objc_msgSend_removeAllObjects(*(a1 + 336), v6, v7);
  objc_msgSend_removeAllObjects(*(a1 + 344), v8, v9);
  objc_msgSend_removeAllObjects(*(a1 + 352), v10, v11);
  objc_msgSend_removeAllObjects(*(a1 + 360), v12, v13);
  v14 = *(a1 + 480);
  *(a1 + 480) = 0;

  v15 = *(a1 + 432);
  *(a1 + 432) = 0;
}

void sub_276D6CB4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 432);
  if (v4)
  {
    objc_msgSend_start(*(a1 + 432), a2, a3);
    objc_msgSend_setStart_(v4, v5, v6);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 424);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v53, v57, 16);
  if (v10)
  {
    v52 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        if (objc_msgSend_type(v12, v8, v9) == 2)
        {
          v13 = objc_msgSend_positionCount(v12, v8, v9);
          v16 = objc_msgSend_positions(v12, v14, v15);
          v19 = objc_msgSend_glyphCount(v12, v17, v18);
          v22 = objc_msgSend_glyphs(v12, v20, v21);
          if (v13 != v19)
          {
            v23 = MEMORY[0x277D81150];
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPLineFragment::adjustBreakLine()");
            v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 3113, 0, "invisibles count mismatch");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
          }

          v30 = *(a1 + 24);
          if ((v30 & 0x800) != 0)
          {
            if (v13)
            {
              v31 = 0;
              v32 = *(v16 + 16 * v13 - 16);
              v33 = &word_280A570B0;
              while (1)
              {
                v34 = *v33;
                v33 += 20;
                if (v34 == *(v22 + 2 * v19 - 2))
                {
                  break;
                }

                if (++v31 == 10)
                {
                  v35 = MEMORY[0x277D81150];
                  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSWPLineFragment::adjustBreakLine()");
                  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineFragment.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 3127, 0, "Failed to find glyph index");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
                  v30 = *(a1 + 24);
                  LODWORD(v31) = 10;
                  break;
                }
              }

              v42 = v32 + *(*(a1 + 216) + 8);
              v43 = *(a1 + 40);
              v44 = *(a1 + 56);
              if ((v30 & 0x1000) != 0)
              {
                v48 = fmin(v42, 0.0);
                v47 = v44 - v48;
                v43 = v43 + v48;
              }

              else
              {
                if (v31 <= 9)
                {
                  v45 = v31;
                }

                else
                {
                  v45 = 3;
                }

                v46 = v42 + *(&unk_280A57090 + 5 * v45 + 1);
                if (v44 >= v46)
                {
                  v47 = *(a1 + 56);
                }

                else
                {
                  v47 = v46;
                }
              }

              v49 = *(a1 + 48);
              v50 = *(a1 + 64);
              *(a1 + 72) = CGRectUnion(*(a1 + 72), *&v43);
            }
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v53, v57, 16);
    }

    while (v10);
  }
}

id sub_276D6CEE4()
{
  if (qword_280A581A8 != -1)
  {
    sub_276F4F284();
  }

  v1 = qword_280A581A0;

  return v1;
}

void sub_276D6CF28(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], a2, a3, 0.156800002, 1.0);
  v4 = qword_280A581A0;
  qword_280A581A0 = v3;
}

id sub_276D6CF74(uint64_t a1)
{
  v1 = *(a1 + 440);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = sub_276D6CEE4();
  }

  return v2;
}

void sub_276D6CFC8(void ***a1)
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
        v4 = sub_276DD1EBC(v4 - 104);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276D6D04C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276D6D04C(a1, *a2);
    sub_276D6D04C(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_276D6D0A0(void **a1)
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
        v3 = sub_276DD1EBC(v3 - 104);
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

void sub_276D6D100(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_276D6D150(a1, a2);
  }

  sub_276D34ED8();
}

void sub_276D6D150(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276D6D1AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_276D34ED8();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_276D6D150(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  sub_276DD1E84(104 * v2, a2);
  v15 = (104 * v2 + 104);
  v7 = a1[1];
  v8 = 104 * v2 + *a1 - v7;
  sub_276D6D2F4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_276D6D398(&v13);
  return v12;
}

void sub_276D6D2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276D6D398(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276D6D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276DD1E84(a4, v8);
      v8 += 104;
      a4 += 104;
      v7 -= 104;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276DD1EBC(v6);
      v6 += 104;
    }
  }

  return result;
}

void sub_276D6D374(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    do
    {
      v4 = sub_276DD1EBC(v4) - 104;
      v2 += 104;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276D6D398(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    sub_276DD1EBC(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_276D6D3E8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_276D6D460(result, a2);
  }

  return result;
}

void sub_276D6D444(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D6D460(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_276D34EF0(a1, a2);
  }

  sub_276D34ED8();
}

void *sub_276D6D49C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_276D6D514(result, a2);
  }

  return result;
}

void sub_276D6D4F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D6D514(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_276D6D54C(a1, a2);
  }

  sub_276D34ED8();
}

void sub_276D6D54C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_276D34F38();
}

void *sub_276D6D590(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_276D6D66C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_276D6D6C4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_276D6D6C4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_276D6D860(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_276D34F38();
}

void sub_276D6D8B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_276D34F38();
}

__n128 sub_276D6D900(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = &a2[-8];
  v11 = &a2[-12];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 6;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if ((*a3)(a2 - 4, v12))
        {
          goto LABEL_77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v127 = (*a3)(v12 + 4, v12);
      v128 = (*a3)(v12 + 8, v12 + 4);
      if (v127)
      {
        if (v128)
        {
          v247 = v12[2];
          v274 = v12[3];
          v193 = *v12;
          v220 = v12[1];
          v129 = v12[9];
          *v12 = v12[8];
          v12[1] = v129;
          v130 = v12[11];
          v12[2] = v12[10];
          v12[3] = v130;
          v12[10] = v247;
          v12[11] = v274;
          v12[8] = v193;
          v12[9] = v220;
        }

        else
        {
          v249 = v12[2];
          v276 = v12[3];
          v195 = *v12;
          v222 = v12[1];
          v146 = v12[5];
          *v12 = v12[4];
          v12[1] = v146;
          v147 = v12[7];
          v12[2] = v12[6];
          v12[3] = v147;
          v12[6] = v249;
          v12[7] = v276;
          v12[4] = v195;
          v12[5] = v222;
          if ((*a3)(v12 + 8, v12 + 4))
          {
            v149 = v12[6];
            v148 = v12[7];
            v151 = v12[4];
            v150 = v12[5];
            v152 = v12[9];
            v12[4] = v12[8];
            v12[5] = v152;
            v153 = v12[11];
            v12[6] = v12[10];
            v12[7] = v153;
            v12[8] = v151;
            v12[9] = v150;
            v12[10] = v149;
            v12[11] = v148;
          }
        }
      }

      else if (v128)
      {
        v139 = v12[6];
        v138 = v12[7];
        v141 = v12[4];
        v140 = v12[5];
        v142 = v12[9];
        v12[4] = v12[8];
        v12[5] = v142;
        v143 = v12[11];
        v12[6] = v12[10];
        v12[7] = v143;
        v12[8] = v141;
        v12[9] = v140;
        v12[10] = v139;
        v12[11] = v138;
        if ((*a3)(v12 + 4, v12))
        {
          v248 = v12[2];
          v275 = v12[3];
          v194 = *v12;
          v221 = v12[1];
          v144 = v12[5];
          *v12 = v12[4];
          v12[1] = v144;
          v145 = v12[7];
          v12[2] = v12[6];
          v12[3] = v145;
          v12[6] = v248;
          v12[7] = v275;
          v12[4] = v194;
          v12[5] = v221;
        }
      }

      if (!(*a3)(v9, v12 + 8))
      {
        return result;
      }

      v155 = v12[10];
      v154 = v12[11];
      v157 = v12[8];
      v156 = v12[9];
      v158 = v9[3];
      v160 = *v9;
      v159 = v9[1];
      v12[10] = v9[2];
      v12[11] = v158;
      v12[8] = v160;
      v12[9] = v159;
      *v9 = v157;
      v9[1] = v156;
      v9[2] = v155;
      v9[3] = v154;
      if (!(*a3)(v12 + 8, v12 + 4))
      {
        return result;
      }

      v162 = v12[6];
      v161 = v12[7];
      v164 = v12[4];
      v163 = v12[5];
      v165 = v12[9];
      v12[4] = v12[8];
      v12[5] = v165;
      v166 = v12[11];
      v12[6] = v12[10];
      v12[7] = v166;
      v12[8] = v164;
      v12[9] = v163;
      v12[10] = v162;
      v12[11] = v161;
LABEL_102:
      if ((*a3)(v12 + 4, v12))
      {
        v250 = v12[2];
        v277 = v12[3];
        v196 = *v12;
        v223 = v12[1];
        v167 = v12[5];
        *v12 = v12[4];
        v12[1] = v167;
        v168 = v12[7];
        v12[2] = v12[6];
        v12[3] = v168;
        result = v196;
        v12[6] = v250;
        v12[7] = v277;
        v12[4] = v196;
        v12[5] = v223;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_276D6E55C(v12, v12 + 4, v12 + 8, v12 + 12, a2 - 4, a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_276D6E814(v12, a2, a3);
      }

      else
      {

        sub_276D6E900(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_276D6F19C(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = v17(&v12[4 * (v15 >> 1)], v12);
      v19 = (*a3)(a2 - 4, v16);
      if (v18)
      {
        if (v19)
        {
          v224 = a1[2];
          v251 = a1[3];
          v170 = *a1;
          v197 = a1[1];
          v20 = *v9;
          v21 = a2[-3];
          v22 = a2[-1];
          a1[2] = a2[-2];
          a1[3] = v22;
          *a1 = v20;
          a1[1] = v21;
          goto LABEL_27;
        }

        v230 = a1[2];
        v257 = a1[3];
        v176 = *a1;
        v203 = a1[1];
        v40 = *v16;
        v41 = v16[1];
        v42 = v16[3];
        a1[2] = v16[2];
        a1[3] = v42;
        *a1 = v40;
        a1[1] = v41;
        v16[2] = v230;
        v16[3] = v257;
        *v16 = v176;
        v16[1] = v203;
        if ((*a3)(a2 - 4, v16))
        {
          v224 = v16[2];
          v251 = v16[3];
          v170 = *v16;
          v197 = v16[1];
          v43 = *v9;
          v44 = a2[-3];
          v45 = a2[-1];
          v16[2] = a2[-2];
          v16[3] = v45;
          *v16 = v43;
          v16[1] = v44;
LABEL_27:
          *v9 = v170;
          a2[-3] = v197;
          a2[-2] = v224;
          a2[-1] = v251;
        }
      }

      else if (v19)
      {
        v226 = v16[2];
        v253 = v16[3];
        v172 = *v16;
        v199 = v16[1];
        v28 = *v9;
        v29 = a2[-3];
        v30 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v30;
        *v16 = v28;
        v16[1] = v29;
        *v9 = v172;
        a2[-3] = v199;
        a2[-2] = v226;
        a2[-1] = v253;
        if ((*a3)(v16, a1))
        {
          v227 = a1[2];
          v254 = a1[3];
          v173 = *a1;
          v200 = a1[1];
          v31 = *v16;
          v32 = v16[1];
          v33 = v16[3];
          a1[2] = v16[2];
          a1[3] = v33;
          *a1 = v31;
          a1[1] = v32;
          v16[2] = v227;
          v16[3] = v254;
          *v16 = v173;
          v16[1] = v200;
        }
      }

      v46 = &v16[-4];
      v47 = (*a3)(v16 - 4, a1 + 4);
      v48 = (*a3)(a2 - 8, v16 - 4);
      if (v47)
      {
        if (v48)
        {
          v50 = a1[6];
          v49 = a1[7];
          v52 = a1[4];
          v51 = a1[5];
          v53 = a2[-5];
          v55 = *v10;
          v54 = a2[-7];
          a1[6] = a2[-6];
          a1[7] = v53;
          a1[4] = v55;
          a1[5] = v54;
          *v10 = v52;
          a2[-7] = v51;
          a2[-6] = v50;
          goto LABEL_39;
        }

        v180 = a1[4];
        v207 = a1[5];
        v234 = a1[6];
        v261 = a1[7];
        v69 = v16[-2];
        v68 = v16[-1];
        v70 = v16[-3];
        a1[4] = *v46;
        a1[5] = v70;
        a1[6] = v69;
        a1[7] = v68;
        v16[-2] = v234;
        v16[-1] = v261;
        *v46 = v180;
        v16[-3] = v207;
        if ((*a3)(a2 - 8, v16 - 4))
        {
          v235 = v16[-2];
          v262 = v16[-1];
          v181 = *v46;
          v208 = v16[-3];
          v71 = *v10;
          v72 = a2[-7];
          v73 = a2[-5];
          v16[-2] = a2[-6];
          v16[-1] = v73;
          *v46 = v71;
          v16[-3] = v72;
          *v10 = v181;
          a2[-7] = v208;
          a2[-6] = v235;
          v49 = v262;
LABEL_39:
          a2[-5] = v49;
        }
      }

      else if (v48)
      {
        v231 = v16[-2];
        v258 = v16[-1];
        v177 = *v46;
        v204 = v16[-3];
        v56 = *v10;
        v57 = a2[-7];
        v58 = a2[-5];
        v16[-2] = a2[-6];
        v16[-1] = v58;
        *v46 = v56;
        v16[-3] = v57;
        *v10 = v177;
        a2[-7] = v204;
        a2[-6] = v231;
        a2[-5] = v258;
        if ((*a3)(v16 - 4, a1 + 4))
        {
          v178 = a1[4];
          v205 = a1[5];
          v232 = a1[6];
          v259 = a1[7];
          v60 = v16[-2];
          v59 = v16[-1];
          v61 = v16[-3];
          a1[4] = *v46;
          a1[5] = v61;
          a1[6] = v60;
          a1[7] = v59;
          v16[-2] = v232;
          v16[-1] = v259;
          *v46 = v178;
          v16[-3] = v205;
        }
      }

      v74 = (*a3)(v16 + 4, a1 + 8);
      v75 = (*a3)(a2 - 12, v16 + 4);
      if (v74)
      {
        if (v75)
        {
          v77 = a1[10];
          v76 = a1[11];
          v79 = a1[8];
          v78 = a1[9];
          v80 = a2[-9];
          v82 = *v11;
          v81 = a2[-11];
          a1[10] = a2[-10];
          a1[11] = v80;
          a1[8] = v82;
          a1[9] = v81;
          *v11 = v79;
          a2[-11] = v78;
          a2[-10] = v77;
          goto LABEL_48;
        }

        v184 = a1[8];
        v211 = a1[9];
        v238 = a1[10];
        v265 = a1[11];
        v90 = v16[6];
        v89 = v16[7];
        v91 = v16[5];
        a1[8] = v16[4];
        a1[9] = v91;
        a1[10] = v90;
        a1[11] = v89;
        v16[6] = v238;
        v16[7] = v265;
        v16[4] = v184;
        v16[5] = v211;
        if ((*a3)(a2 - 12, v16 + 4))
        {
          v239 = v16[6];
          v266 = v16[7];
          v185 = v16[4];
          v212 = v16[5];
          v92 = *v11;
          v93 = a2[-11];
          v94 = a2[-9];
          v16[6] = a2[-10];
          v16[7] = v94;
          v16[4] = v92;
          v16[5] = v93;
          *v11 = v185;
          a2[-11] = v212;
          a2[-10] = v239;
          v76 = v266;
LABEL_48:
          a2[-9] = v76;
        }
      }

      else if (v75)
      {
        v236 = v16[6];
        v263 = v16[7];
        v182 = v16[4];
        v209 = v16[5];
        v83 = *v11;
        v84 = a2[-11];
        v85 = a2[-9];
        v16[6] = a2[-10];
        v16[7] = v85;
        v16[4] = v83;
        v16[5] = v84;
        *v11 = v182;
        a2[-11] = v209;
        a2[-10] = v236;
        a2[-9] = v263;
        if ((*a3)(v16 + 4, a1 + 8))
        {
          v183 = a1[8];
          v210 = a1[9];
          v237 = a1[10];
          v264 = a1[11];
          v87 = v16[6];
          v86 = v16[7];
          v88 = v16[5];
          a1[8] = v16[4];
          a1[9] = v88;
          a1[10] = v87;
          a1[11] = v86;
          v16[6] = v237;
          v16[7] = v264;
          v16[4] = v183;
          v16[5] = v210;
        }
      }

      v95 = (*a3)(v16, v16 - 4);
      v96 = (*a3)(v16 + 4, v16);
      if (v95)
      {
        if (v96)
        {
          v240 = v16[-2];
          v267 = v16[-1];
          v186 = *v46;
          v213 = v16[-3];
          v97 = v16[5];
          *v46 = v16[4];
          v16[-3] = v97;
          v98 = v16[7];
          v16[-2] = v16[6];
          v16[-1] = v98;
          goto LABEL_57;
        }

        v243 = v16[-2];
        v270 = v16[-1];
        v189 = *v46;
        v216 = v16[-3];
        v103 = v16[1];
        *v46 = *v16;
        v16[-3] = v103;
        v104 = v16[3];
        v16[-2] = v16[2];
        v16[-1] = v104;
        v16[2] = v243;
        v16[3] = v270;
        *v16 = v189;
        v16[1] = v216;
        if ((*a3)(v16 + 4, v16))
        {
          v240 = v16[2];
          v267 = v16[3];
          v186 = *v16;
          v213 = v16[1];
          v105 = v16[5];
          *v16 = v16[4];
          v16[1] = v105;
          v106 = v16[7];
          v16[2] = v16[6];
          v16[3] = v106;
LABEL_57:
          v16[6] = v240;
          v16[7] = v267;
          v16[4] = v186;
          v16[5] = v213;
        }
      }

      else if (v96)
      {
        v241 = v16[2];
        v268 = v16[3];
        v187 = *v16;
        v214 = v16[1];
        v99 = v16[5];
        *v16 = v16[4];
        v16[1] = v99;
        v100 = v16[7];
        v16[2] = v16[6];
        v16[3] = v100;
        v16[6] = v241;
        v16[7] = v268;
        v16[4] = v187;
        v16[5] = v214;
        if ((*a3)(v16, v16 - 4))
        {
          v242 = v16[-2];
          v269 = v16[-1];
          v188 = *v46;
          v215 = v16[-3];
          v101 = v16[1];
          *v46 = *v16;
          v16[-3] = v101;
          v102 = v16[3];
          v16[-2] = v16[2];
          v16[-1] = v102;
          v16[2] = v242;
          v16[3] = v269;
          *v16 = v188;
          v16[1] = v215;
        }
      }

      v244 = a1[2];
      v271 = a1[3];
      v190 = *a1;
      v217 = a1[1];
      v107 = *v16;
      v108 = v16[1];
      v109 = v16[3];
      a1[2] = v16[2];
      a1[3] = v109;
      *a1 = v107;
      a1[1] = v108;
      v16[2] = v244;
      v16[3] = v271;
      *v16 = v190;
      v16[1] = v217;
      goto LABEL_59;
    }

    v23 = v17(v12, &v12[4 * (v15 >> 1)]);
    v24 = (*a3)(a2 - 4, a1);
    if (v23)
    {
      if (v24)
      {
        v225 = v16[2];
        v252 = v16[3];
        v171 = *v16;
        v198 = v16[1];
        v25 = *v9;
        v26 = a2[-3];
        v27 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v27;
        *v16 = v25;
        v16[1] = v26;
LABEL_36:
        *v9 = v171;
        a2[-3] = v198;
        a2[-2] = v225;
        a2[-1] = v252;
        goto LABEL_59;
      }

      v233 = v16[2];
      v260 = v16[3];
      v179 = *v16;
      v206 = v16[1];
      v62 = *a1;
      v63 = a1[1];
      v64 = a1[3];
      v16[2] = a1[2];
      v16[3] = v64;
      *v16 = v62;
      v16[1] = v63;
      a1[2] = v233;
      a1[3] = v260;
      *a1 = v179;
      a1[1] = v206;
      if ((*a3)(a2 - 4, a1))
      {
        v225 = a1[2];
        v252 = a1[3];
        v171 = *a1;
        v198 = a1[1];
        v65 = *v9;
        v66 = a2[-3];
        v67 = a2[-1];
        a1[2] = a2[-2];
        a1[3] = v67;
        *a1 = v65;
        a1[1] = v66;
        goto LABEL_36;
      }
    }

    else if (v24)
    {
      v228 = a1[2];
      v255 = a1[3];
      v174 = *a1;
      v201 = a1[1];
      v34 = *v9;
      v35 = a2[-3];
      v36 = a2[-1];
      a1[2] = a2[-2];
      a1[3] = v36;
      *a1 = v34;
      a1[1] = v35;
      *v9 = v174;
      a2[-3] = v201;
      a2[-2] = v228;
      a2[-1] = v255;
      if ((*a3)(a1, v16))
      {
        v229 = v16[2];
        v256 = v16[3];
        v175 = *v16;
        v202 = v16[1];
        v37 = *a1;
        v38 = a1[1];
        v39 = a1[3];
        v16[2] = a1[2];
        v16[3] = v39;
        *v16 = v37;
        v16[1] = v38;
        a1[2] = v229;
        a1[3] = v256;
        *a1 = v175;
        a1[1] = v202;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 4, a1) & 1) == 0)
    {
      v12 = sub_276D6E9D0(a1, a2, a3);
      goto LABEL_66;
    }

    v110 = sub_276D6EB30(a1, a2, a3);
    if ((v111 & 1) == 0)
    {
      goto LABEL_64;
    }

    v112 = sub_276D6EC90(a1, v110, a3);
    v12 = &v110[4];
    if (sub_276D6EC90(v110 + 4, a2, a3))
    {
      a4 = -v14;
      a2 = v110;
      if (v112)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v112)
    {
LABEL_64:
      sub_276D6D900(a1, v110, a3, -v14, a5 & 1);
      v12 = &v110[4];
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v113 = (*a3)(v12 + 4, v12);
  v114 = (*a3)(v9, v12 + 4);
  if ((v113 & 1) == 0)
  {
    if (!v114)
    {
      return result;
    }

    v132 = v12[6];
    v131 = v12[7];
    v134 = v12[4];
    v133 = v12[5];
    v135 = v9[3];
    v137 = *v9;
    v136 = v9[1];
    v12[6] = v9[2];
    v12[7] = v135;
    v12[4] = v137;
    v12[5] = v136;
    *v9 = v134;
    v9[1] = v133;
    v9[2] = v132;
    v9[3] = v131;
    goto LABEL_102;
  }

  if (v114)
  {
LABEL_77:
    v246 = v12[2];
    v273 = v12[3];
    v192 = *v12;
    v219 = v12[1];
    v124 = *v9;
    v125 = v9[1];
    v126 = v9[3];
    v12[2] = v9[2];
    v12[3] = v126;
    *v12 = v124;
    v12[1] = v125;
    *v9 = v192;
    v9[1] = v219;
    v9[2] = v246;
    result = v273;
    v9[3] = v273;
    return result;
  }

  v245 = v12[2];
  v272 = v12[3];
  v191 = *v12;
  v218 = v12[1];
  v115 = v12[5];
  *v12 = v12[4];
  v12[1] = v115;
  v116 = v12[7];
  v12[2] = v12[6];
  v12[3] = v116;
  v12[6] = v245;
  v12[7] = v272;
  v12[4] = v191;
  v12[5] = v218;
  if ((*a3)(v9, v12 + 4))
  {
    v117 = v12[6];
    result = v12[7];
    v119 = v12[4];
    v118 = v12[5];
    v120 = v9[3];
    v122 = *v9;
    v121 = v9[1];
    v12[6] = v9[2];
    v12[7] = v120;
    v12[4] = v122;
    v12[5] = v121;
    *v9 = v119;
    v9[1] = v118;
    v9[2] = v117;
    v9[3] = result;
  }

  return result;
}

__n128 sub_276D6E55C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = a1[2];
      v14 = a1[3];
      v17 = *a1;
      v16 = a1[1];
      v18 = a3[3];
      v20 = *a3;
      v19 = a3[1];
      a1[2] = a3[2];
      a1[3] = v18;
      *a1 = v20;
      a1[1] = v19;
LABEL_9:
      *a3 = v17;
      a3[1] = v16;
      a3[2] = v15;
      a3[3] = v14;
      goto LABEL_10;
    }

    v36 = a1[2];
    v35 = a1[3];
    v38 = *a1;
    v37 = a1[1];
    v39 = a2[3];
    v41 = *a2;
    v40 = a2[1];
    a1[2] = a2[2];
    a1[3] = v39;
    *a1 = v41;
    a1[1] = v40;
    *a2 = v38;
    a2[1] = v37;
    a2[2] = v36;
    a2[3] = v35;
    if ((*a6)(a3, a2))
    {
      v15 = a2[2];
      v14 = a2[3];
      v17 = *a2;
      v16 = a2[1];
      v42 = a3[3];
      v44 = *a3;
      v43 = a3[1];
      a2[2] = a3[2];
      a2[3] = v42;
      *a2 = v44;
      a2[1] = v43;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v22 = a2[2];
    v21 = a2[3];
    v24 = *a2;
    v23 = a2[1];
    v25 = a3[3];
    v27 = *a3;
    v26 = a3[1];
    a2[2] = a3[2];
    a2[3] = v25;
    *a2 = v27;
    a2[1] = v26;
    *a3 = v24;
    a3[1] = v23;
    a3[2] = v22;
    a3[3] = v21;
    if ((*a6)(a2, a1))
    {
      v29 = a1[2];
      v28 = a1[3];
      v31 = *a1;
      v30 = a1[1];
      v32 = a2[3];
      v34 = *a2;
      v33 = a2[1];
      a1[2] = a2[2];
      a1[3] = v32;
      *a1 = v34;
      a1[1] = v33;
      *a2 = v31;
      a2[1] = v30;
      a2[2] = v29;
      a2[3] = v28;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v46 = a3[2];
    v45 = a3[3];
    v48 = *a3;
    v47 = a3[1];
    v49 = a4[3];
    v51 = *a4;
    v50 = a4[1];
    a3[2] = a4[2];
    a3[3] = v49;
    *a3 = v51;
    a3[1] = v50;
    *a4 = v48;
    a4[1] = v47;
    a4[2] = v46;
    a4[3] = v45;
    if ((*a6)(a3, a2))
    {
      v53 = a2[2];
      v52 = a2[3];
      v55 = *a2;
      v54 = a2[1];
      v56 = a3[3];
      v58 = *a3;
      v57 = a3[1];
      a2[2] = a3[2];
      a2[3] = v56;
      *a2 = v58;
      a2[1] = v57;
      *a3 = v55;
      a3[1] = v54;
      a3[2] = v53;
      a3[3] = v52;
      if ((*a6)(a2, a1))
      {
        v60 = a1[2];
        v59 = a1[3];
        v62 = *a1;
        v61 = a1[1];
        v63 = a2[3];
        v65 = *a2;
        v64 = a2[1];
        a1[2] = a2[2];
        a1[3] = v63;
        *a1 = v65;
        a1[1] = v64;
        *a2 = v62;
        a2[1] = v61;
        a2[2] = v60;
        a2[3] = v59;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v68 = a4[2];
    v67 = a4[3];
    v70 = *a4;
    v69 = a4[1];
    v71 = a5[3];
    v73 = *a5;
    v72 = a5[1];
    a4[2] = a5[2];
    a4[3] = v71;
    *a4 = v73;
    a4[1] = v72;
    *a5 = v70;
    a5[1] = v69;
    a5[2] = v68;
    a5[3] = v67;
    if ((*a6)(a4, a3))
    {
      v75 = a3[2];
      v74 = a3[3];
      v77 = *a3;
      v76 = a3[1];
      v78 = a4[3];
      v80 = *a4;
      v79 = a4[1];
      a3[2] = a4[2];
      a3[3] = v78;
      *a3 = v80;
      a3[1] = v79;
      *a4 = v77;
      a4[1] = v76;
      a4[2] = v75;
      a4[3] = v74;
      if ((*a6)(a3, a2))
      {
        v82 = a2[2];
        v81 = a2[3];
        v84 = *a2;
        v83 = a2[1];
        v85 = a3[3];
        v87 = *a3;
        v86 = a3[1];
        a2[2] = a3[2];
        a2[3] = v85;
        *a2 = v87;
        a2[1] = v86;
        *a3 = v84;
        a3[1] = v83;
        a3[2] = v82;
        a3[3] = v81;
        if ((*a6)(a2, a1))
        {
          v88 = a1[2];
          result = a1[3];
          v90 = *a1;
          v89 = a1[1];
          v91 = a2[3];
          v93 = *a2;
          v92 = a2[1];
          a1[2] = a2[2];
          a1[3] = v91;
          *a1 = v93;
          a1[1] = v92;
          *a2 = v90;
          a2[1] = v89;
          a2[2] = v88;
          a2[3] = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_276D6E814(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v25 = v3;
    v26 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v12 = v10[1];
          v21 = *v10;
          v22 = v12;
          v13 = v10[3];
          v23 = v10[2];
          v24 = v13;
          v14 = v9;
          while (1)
          {
            v15 = (v6 + v14);
            v16 = *(v6 + v14 + 16);
            v15[4] = *(v6 + v14);
            v15[5] = v16;
            v17 = *(v6 + v14 + 48);
            v15[6] = *(v6 + v14 + 32);
            v15[7] = v17;
            if (!v14)
            {
              break;
            }

            v14 -= 64;
            result = (*a3)(&v21, v6 + v14);
            if ((result & 1) == 0)
            {
              v18 = (v6 + v14 + 64);
              goto LABEL_10;
            }
          }

          v18 = v6;
LABEL_10:
          v19 = v22;
          *v18 = v21;
          v18[1] = v19;
          v20 = v24;
          v18[2] = v23;
          v18[3] = v20;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t sub_276D6E900(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v22 = v3;
    v23 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = (result - 64);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = v6[1];
          v18 = *v6;
          v19 = v11;
          v12 = v6[3];
          v20 = v6[2];
          v21 = v12;
          v13 = v9;
          do
          {
            v14 = v13[5];
            v13[8] = v13[4];
            v13[9] = v14;
            v15 = v13[7];
            v13[10] = v13[6];
            v13[11] = v15;
            result = (*a3)(&v18, v13);
            v13 -= 4;
          }

          while ((result & 1) != 0);
          v16 = v19;
          v13[8] = v18;
          v13[9] = v16;
          v17 = v21;
          v13[10] = v20;
          v13[11] = v17;
        }

        v7 = v6 + 4;
        v9 += 4;
      }

      while (v6 + 4 != a2);
    }
  }

  return result;
}

__int128 *sub_276D6E9D0(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  if ((*a3)(&v28, a2 - 4))
  {
    v8 = a1;
    do
    {
      v8 += 4;
    }

    while (((*a3)(&v28, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 4;
    do
    {
      v8 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v10 = (*a3)(&v28, v9);
      v9 = v8 + 4;
    }

    while (!v10);
  }

  if (v8 < v4)
  {
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v8[3];
    v34 = v8[2];
    v35 = v13;
    v32 = v11;
    v33 = v12;
    v14 = *v4;
    v15 = v4[1];
    v16 = v4[3];
    v8[2] = v4[2];
    v8[3] = v16;
    *v8 = v14;
    v8[1] = v15;
    v17 = v32;
    v18 = v33;
    v19 = v35;
    v4[2] = v34;
    v4[3] = v19;
    *v4 = v17;
    v4[1] = v18;
    do
    {
      v8 += 4;
    }

    while (!(*a3)(&v28, v8));
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  v20 = v8 - 4;
  if (v8 - 4 != a1)
  {
    v21 = *v20;
    v22 = *(v8 - 3);
    v23 = *(v8 - 1);
    a1[2] = *(v8 - 2);
    a1[3] = v23;
    *a1 = v21;
    a1[1] = v22;
  }

  v24 = v28;
  v25 = v29;
  v26 = v31;
  *(v8 - 2) = v30;
  *(v8 - 1) = v26;
  *v20 = v24;
  *(v8 - 3) = v25;
  return v8;
}

__int128 *sub_276D6EB30(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v27) & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 4];
  if (v6 == 4)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 4;
    }

    while (((*a3)(a2, &v27) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 4;
    }

    while (!(*a3)(a2, &v27));
  }

  if (v9 < a2)
  {
    v11 = &a1[v6];
    v12 = a2;
    do
    {
      v14 = v11[1];
      v31 = *v11;
      v13 = v31;
      v32 = v14;
      v16 = v11[3];
      v33 = v11[2];
      v15 = v33;
      v34 = v16;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v12[1];
      *v11 = *v12;
      v11[1] = v19;
      v11[2] = v18;
      v11[3] = v17;
      v12[2] = v15;
      v12[3] = v16;
      *v12 = v13;
      v12[1] = v14;
      do
      {
        v11 += 4;
      }

      while (((*a3)(v11, &v27) & 1) != 0);
      do
      {
        v12 -= 4;
      }

      while (!(*a3)(v12, &v27));
    }

    while (v11 < v12);
    v10 = v11 - 4;
  }

  if (v10 != a1)
  {
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[3];
    a1[2] = v10[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
  }

  v23 = v27;
  v24 = v28;
  v25 = v30;
  v10[2] = v29;
  v10[3] = v25;
  *v10 = v23;
  v10[1] = v24;
  return v10;
}

BOOL sub_276D6EC90(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 4;
      v17 = (*a3)(a1 + 4, a1);
      v18 = (*a3)(v16, a1 + 4);
      if (v17)
      {
        if (v18)
        {
          v20 = a1[2];
          v19 = a1[3];
          v22 = *a1;
          v21 = a1[1];
          v23 = v16[3];
          v25 = *v16;
          v24 = v16[1];
          a1[2] = v16[2];
          a1[3] = v23;
          *a1 = v25;
          a1[1] = v24;
        }

        else
        {
          v76 = a1[2];
          v75 = a1[3];
          v78 = *a1;
          v77 = a1[1];
          v79 = a1[5];
          *a1 = a1[4];
          a1[1] = v79;
          v80 = a1[7];
          a1[2] = a1[6];
          a1[3] = v80;
          a1[4] = v78;
          a1[5] = v77;
          a1[6] = v76;
          a1[7] = v75;
          if (!(*a3)(v16, a1 + 4))
          {
            return 1;
          }

          v20 = a1[6];
          v19 = a1[7];
          v22 = a1[4];
          v21 = a1[5];
          v81 = v16[3];
          v83 = *v16;
          v82 = v16[1];
          a1[6] = v16[2];
          a1[7] = v81;
          a1[4] = v83;
          a1[5] = v82;
        }

        *v16 = v22;
        v16[1] = v21;
        result = 1;
        v16[2] = v20;
        v16[3] = v19;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v45 = a1[6];
      v44 = a1[7];
      v47 = a1[4];
      v46 = a1[5];
      v48 = v16[3];
      v50 = *v16;
      v49 = v16[1];
      a1[6] = v16[2];
      a1[7] = v48;
      a1[4] = v50;
      a1[5] = v49;
      *v16 = v47;
      v16[1] = v46;
      v16[2] = v45;
      v16[3] = v44;
LABEL_50:
      if ((*a3)(a1 + 4, a1))
      {
        v126 = a1[2];
        v125 = a1[3];
        v128 = *a1;
        v127 = a1[1];
        v129 = a1[5];
        *a1 = a1[4];
        a1[1] = v129;
        v130 = a1[7];
        a1[2] = a1[6];
        a1[3] = v130;
        a1[4] = v128;
        a1[5] = v127;
        a1[6] = v126;
        a1[7] = v125;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_276D6E55C(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4, a3);
      return 1;
    }

    v35 = a2 - 4;
    v36 = (*a3)(a1 + 4, a1);
    v37 = (*a3)(a1 + 8, a1 + 4);
    if ((v36 & 1) == 0)
    {
      if (v37)
      {
        v64 = a1[6];
        v63 = a1[7];
        v66 = a1[4];
        v65 = a1[5];
        v67 = a1[9];
        a1[4] = a1[8];
        a1[5] = v67;
        v68 = a1[11];
        a1[6] = a1[10];
        a1[7] = v68;
        a1[8] = v66;
        a1[9] = v65;
        a1[10] = v64;
        a1[11] = v63;
        if ((*a3)(a1 + 4, a1))
        {
          v70 = a1[2];
          v69 = a1[3];
          v72 = *a1;
          v71 = a1[1];
          v73 = a1[5];
          *a1 = a1[4];
          a1[1] = v73;
          v74 = a1[7];
          a1[2] = a1[6];
          a1[3] = v74;
          a1[4] = v72;
          a1[5] = v71;
          a1[6] = v70;
          a1[7] = v69;
        }
      }

      goto LABEL_47;
    }

    if (v37)
    {
      v39 = a1[2];
      v38 = a1[3];
      v41 = *a1;
      v40 = a1[1];
      v42 = a1[9];
      *a1 = a1[8];
      a1[1] = v42;
      v43 = a1[11];
      a1[2] = a1[10];
      a1[3] = v43;
    }

    else
    {
      v105 = a1[2];
      v104 = a1[3];
      v107 = *a1;
      v106 = a1[1];
      v108 = a1[5];
      *a1 = a1[4];
      a1[1] = v108;
      v109 = a1[7];
      a1[2] = a1[6];
      a1[3] = v109;
      a1[4] = v107;
      a1[5] = v106;
      a1[6] = v105;
      a1[7] = v104;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_47;
      }

      v39 = a1[6];
      v38 = a1[7];
      v41 = a1[4];
      v40 = a1[5];
      v110 = a1[9];
      a1[4] = a1[8];
      a1[5] = v110;
      v111 = a1[11];
      a1[6] = a1[10];
      a1[7] = v111;
    }

    a1[8] = v41;
    a1[9] = v40;
    a1[10] = v39;
    a1[11] = v38;
LABEL_47:
    if (!(*a3)(v35, a1 + 8))
    {
      return 1;
    }

    v113 = a1[10];
    v112 = a1[11];
    v115 = a1[8];
    v114 = a1[9];
    v116 = v35[3];
    v118 = *v35;
    v117 = v35[1];
    a1[10] = v35[2];
    a1[11] = v116;
    a1[8] = v118;
    a1[9] = v117;
    *v35 = v115;
    v35[1] = v114;
    v35[2] = v113;
    v35[3] = v112;
    if (!(*a3)(a1 + 8, a1 + 4))
    {
      return 1;
    }

    v120 = a1[6];
    v119 = a1[7];
    v122 = a1[4];
    v121 = a1[5];
    v123 = a1[9];
    a1[4] = a1[8];
    a1[5] = v123;
    v124 = a1[11];
    a1[6] = a1[10];
    a1[7] = v124;
    a1[8] = v122;
    a1[9] = v121;
    a1[10] = v120;
    a1[11] = v119;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if ((*a3)(a2 - 4, a1))
    {
      v9 = a1[2];
      v8 = a1[3];
      v11 = *a1;
      v10 = a1[1];
      v12 = a2[-1];
      v14 = *v7;
      v13 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v12;
      *a1 = v14;
      a1[1] = v13;
      *v7 = v11;
      a2[-3] = v10;
      result = 1;
      a2[-2] = v9;
      a2[-1] = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v26 = a1 + 8;
  v27 = (*a3)(a1 + 4, a1);
  v28 = (*a3)(a1 + 8, a1 + 4);
  if (v27)
  {
    if (v28)
    {
      v30 = a1[2];
      v29 = a1[3];
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[9];
      *a1 = *v26;
      a1[1] = v33;
      v34 = a1[11];
      a1[2] = a1[10];
      a1[3] = v34;
    }

    else
    {
      v85 = a1[2];
      v84 = a1[3];
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[5];
      *a1 = a1[4];
      a1[1] = v88;
      v89 = a1[7];
      a1[2] = a1[6];
      a1[3] = v89;
      a1[4] = v87;
      a1[5] = v86;
      a1[6] = v85;
      a1[7] = v84;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_33;
      }

      v30 = a1[6];
      v29 = a1[7];
      v32 = a1[4];
      v31 = a1[5];
      v90 = a1[9];
      a1[4] = *v26;
      a1[5] = v90;
      v91 = a1[11];
      a1[6] = a1[10];
      a1[7] = v91;
    }

    *v26 = v32;
    a1[9] = v31;
    a1[10] = v30;
    a1[11] = v29;
  }

  else if (v28)
  {
    v52 = a1[6];
    v51 = a1[7];
    v54 = a1[4];
    v53 = a1[5];
    v55 = a1[9];
    a1[4] = *v26;
    a1[5] = v55;
    v56 = a1[11];
    a1[6] = a1[10];
    a1[7] = v56;
    *v26 = v54;
    a1[9] = v53;
    a1[10] = v52;
    a1[11] = v51;
    if ((*a3)(a1 + 4, a1))
    {
      v58 = a1[2];
      v57 = a1[3];
      v60 = *a1;
      v59 = a1[1];
      v61 = a1[5];
      *a1 = a1[4];
      a1[1] = v61;
      v62 = a1[7];
      a1[2] = a1[6];
      a1[3] = v62;
      a1[4] = v60;
      a1[5] = v59;
      a1[6] = v58;
      a1[7] = v57;
    }
  }

LABEL_33:
  v92 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v93 = 0;
  v94 = 0;
  while (1)
  {
    if ((*a3)(v92, v26))
    {
      v95 = v92[1];
      v131 = *v92;
      v132 = v95;
      v96 = v92[3];
      v133 = v92[2];
      v134 = v96;
      v97 = v93;
      while (1)
      {
        v98 = (a1 + v97);
        v99 = *(a1 + v97 + 144);
        v98[12] = *(a1 + v97 + 128);
        v98[13] = v99;
        v100 = *(a1 + v97 + 176);
        v98[14] = *(a1 + v97 + 160);
        v98[15] = v100;
        if (v97 == -128)
        {
          break;
        }

        v97 -= 64;
        if (((*a3)(&v131, v98 + 4) & 1) == 0)
        {
          v101 = (a1 + v97 + 192);
          goto LABEL_41;
        }
      }

      v101 = a1;
LABEL_41:
      v102 = v132;
      *v101 = v131;
      v101[1] = v102;
      v103 = v134;
      v101[2] = v133;
      v101[3] = v103;
      if (++v94 == 8)
      {
        return &v92[4] == a2;
      }
    }

    v26 = v92;
    v93 += 64;
    v92 += 4;
    if (v92 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_276D6F19C(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 6;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + (v10 << 6));
      do
      {
        a5 = sub_276D6F398(a1, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v15 = v13[2];
          v14 = v13[3];
          v17 = *v13;
          v16 = v13[1];
          v18 = *(a1 + 48);
          v20 = *a1;
          v19 = *(a1 + 16);
          v13[2] = *(a1 + 32);
          v13[3] = v18;
          *v13 = v20;
          v13[1] = v19;
          *a1 = v17;
          *(a1 + 16) = v16;
          *(a1 + 32) = v15;
          *(a1 + 48) = v14;
          a5 = sub_276D6F398(a1, a4, v9, a1);
        }

        v13 += 4;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v36 = v7;
        v21 = 0;
        v37 = *a1;
        v38 = *(a1 + 16);
        v39 = *(a1 + 32);
        v40 = *(a1 + 48);
        v22 = a1;
        do
        {
          v23 = &v22[4 * v21];
          v24 = v23 + 4;
          v25 = (2 * v21) | 1;
          v26 = 2 * v21 + 2;
          if (v26 < v9)
          {
            v27 = v23 + 8;
            if ((*a4)(v23 + 4, v23 + 8))
            {
              v24 = v27;
              v25 = v26;
            }
          }

          v28 = *v24;
          v29 = v24[1];
          v30 = v24[3];
          v22[2] = v24[2];
          v22[3] = v30;
          *v22 = v28;
          v22[1] = v29;
          v22 = v24;
          v21 = v25;
        }

        while (v25 <= ((v9 - 2) >> 1));
        v7 = v36 - 4;
        if (v24 == &v36[-4])
        {
          v24[2] = v39;
          v24[3] = v40;
          *v24 = v37;
          v24[1] = v38;
        }

        else
        {
          v31 = *v7;
          v32 = v36[-3];
          v33 = v36[-1];
          v24[2] = v36[-2];
          v24[3] = v33;
          *v24 = v31;
          v24[1] = v32;
          *v7 = v37;
          v36[-3] = v38;
          v36[-2] = v39;
          v36[-1] = v40;
          sub_276D6F4E8(a1, &v24[4], a4, (&v24[4] - a1) >> 6);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_276D6F398(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 4))
      {
        v14 += 4;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v17 = v7[1];
        v27 = *v7;
        v28 = v17;
        v18 = v7[3];
        v29 = v7[2];
        v30 = v18;
        do
        {
          v19 = v14;
          v20 = *v14;
          v21 = v14[1];
          v22 = v14[3];
          v7[2] = v14[2];
          v7[3] = v22;
          *v7 = v20;
          v7[1] = v21;
          if (v9 < v13)
          {
            break;
          }

          v23 = (2 * v13) | 1;
          v14 = (a1 + (v23 << 6));
          v24 = 2 * v13 + 2;
          if (v24 < a3)
          {
            if ((*a2)((a1 + (v23 << 6)), v14 + 4))
            {
              v14 += 4;
              v23 = v24;
            }
          }

          v7 = v19;
          v13 = v23;
        }

        while (!(*a2)(v14, &v27));
        result = v27;
        v25 = v28;
        v26 = v30;
        v19[2] = v29;
        v19[3] = v26;
        *v19 = result;
        v19[1] = v25;
      }
    }
  }

  return result;
}

double sub_276D6F4E8(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + (v6 >> 1 << 6));
    v11 = (a2 - 64);
    if ((*a3)(v10, (a2 - 64)))
    {
      v13 = v11[1];
      v21 = *v11;
      v22 = v13;
      v14 = v11[3];
      v23 = v11[2];
      v24 = v14;
      do
      {
        v15 = v10;
        v16 = *v10;
        v17 = v10[1];
        v18 = v10[3];
        v11[2] = v10[2];
        v11[3] = v18;
        *v11 = v16;
        v11[1] = v17;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + (v9 << 6));
        v11 = v15;
      }

      while (((*a3)(v10, &v21) & 1) != 0);
      v19 = v22;
      *v15 = v21;
      v15[1] = v19;
      result = *&v23;
      v20 = v24;
      v15[2] = v23;
      v15[3] = v20;
    }
  }

  return result;
}

uint64_t sub_276D6F5AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((*(result + 16) - *result) >> 3) < a4)
  {
    sub_276D6D0A0(result);
    if (a4 <= 0x276276276276276)
    {
      v9 = 0x9D89D89D89D89D8ALL * ((v7[2] - *v7) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((v7[2] - *v7) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v10 = 0x276276276276276;
      }

      else
      {
        v10 = v9;
      }

      sub_276D6D100(v7, v10);
    }

    sub_276D34ED8();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_276DD1EC0(v8, v6);
        v6 += 104;
        v8 += 104;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 104;
      result = sub_276DD1EBC(v11);
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
        sub_276DD1EC0(v8, v14);
        v14 += 104;
        v8 += 104;
        v13 -= 104;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_276D6F754(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

uint64_t sub_276D6F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_276DD1E84(a4, v6);
      v6 += 104;
      a4 += 104;
      v7 -= 104;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_276D6F7B4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    do
    {
      v4 = sub_276DD1EBC(v4) - 104;
      v2 += 104;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276D6F7E8(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    return 0;
  }

  else
  {
    return *(*a1 + 16 * a2);
  }
}

uint64_t sub_276D6F80C(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 16);
  }
}

void **sub_276D6F828(void **result, __int128 *a2)
{
  v2 = result;
  v16 = *a2;
  v3 = *(a2 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = (v8 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_276D34ED8();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = result;
    if (v12)
    {
      sub_276D6FCE8(result, v12);
    }

    v13 = (16 * (v8 >> 4));
    *v13 = v16;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *v2;
    *v2 = 0;
    v2[1] = v6;
    v15 = v2[2];
    v2[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    result = sub_276D6FD30(v17);
  }

  else
  {
    *v5 = v16;
    *(v5 + 1) = v3;
    v6 = v5 + 16;
  }

  v2[1] = v6;
  return result;
}

void sub_276D6F944(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_276D5EEA0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276D6F95C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 - 8);
  if (v3)
  {
    sub_276D5EEA0(v3);
  }

  *(a1 + 8) = v2 - 16;
}

uint64_t sub_276D6F9AC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_276D6FDB8(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_276D5EEA0(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__n64 sub_276D6FA34(uint64_t *a1, char a2)
{
  result.n64_u64[0] = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  v7 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    if (a2)
    {
      v9 = *(v6 - 16);
      v6 -= 16;
      v11.origin.x = v9[9];
      v11.origin.y = v9[10];
      v11.size.width = v9[11];
      v11.size.height = v9[12] - v9[20];
      *result.n64_u64 = CGRectUnion(*result.n64_u64, v11);
      v7 = *a1;
    }

    while (v6 != v7)
    {
      v10 = *(v6 - 16);
      v6 -= 16;
      *result.n64_u64 = CGRectUnion(*result.n64_u64, *(v10 + 72));
    }
  }

  return result;
}

uint64_t sub_276D6FAB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      v7 = *v3;
      v3 += 2;
      result = sub_276D64E30(v7, a2, a3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_276D6FB14(uint64_t result, uint64_t a2, uint64_t a3, float64_t a4, float64_t a5)
{
  v5 = *result;
  v6 = *(result + 8);
  if (*result != v6)
  {
    do
    {
      v9 = *v5;
      v5 += 2;
      result = sub_276D6C37C(v9, a4, a5, a2, a3);
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_276D6FB64(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *(*v2 + 32);
    if (v5 == a2)
    {
      ++v4;
    }

    else if (v5 > a2)
    {
      return v4;
    }

    v2 += 16;
  }

  while (v2 != v3);
  return v4;
}

uint64_t sub_276D6FBAC(void *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = v2 - *a1 + 16;
  while (v2 != *a1)
  {
    v4 = *(v2 - 16);
    v2 -= 16;
    v3 -= 16;
    if (*v4 < a2)
    {
      return v3 >> 4;
    }
  }

  return 0;
}

uint64_t sub_276D6FBE4(char **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v6 = 0;
    v9 = *a1;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v2;
      v7 = *(v2 + 1);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_276D5EEA0(v7);
      }

      if (v8 == a2)
      {
        break;
      }

      ++v6;
      v2 += 16;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = a1[1];
  }

  if (v6 >= (v9 - v2) >> 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

NSUInteger sub_276D6FC80(uint64_t **a1)
{
  v1 = MEMORY[0x277D81490];
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    return *MEMORY[0x277D81490];
  }

  v4 = **a1;
  if (*(v4 + 24) < 0)
  {
    v4 = MEMORY[0x277D81490];
  }

  v5.location = *v4;
  if (v3 >= 0x11)
  {
    v6 = *(v2 - 2);
    if ((v6[1].length & 0x8000000000000000) == 0)
    {
      v1 = v6;
    }

    v5.length = *(v4 + 8);
    v5.location = NSUnionRange(v5, *v1).location;
  }

  return v5.location;
}

void sub_276D6FCE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_276D34F38();
}

void **sub_276D6FD30(void **a1)
{
  sub_276D6FD64(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276D6FD64(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_276D5EEA0(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

__int128 *sub_276D6FDB8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_276D5EEA0(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__CFString *sub_276D70720(unint64_t a1, const char *a2)
{
  if (a1 < 9)
  {
    return off_27A6F4130[a1];
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *NSStringFromTSWPSelectionType(TSWPSelectionType)");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 80, 0, "Unknown selection type: %d", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return @"<UNKNOWN SELECTION TYPE>";
}

void sub_276D71284()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276D72B30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276D73114(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276D731CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

BOOL sub_276D7355C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = sub_276D39898(a1[5], 0, a2, a3, a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t sub_276D739E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 32);
  v4 = *v2;
  if (v3 < *v2)
  {
    *(v1 + 32) = v3 + 1;
    goto LABEL_8;
  }

  if (v4 == *(v1 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 24));
    v2 = *(v1 + 40);
    v4 = *v2;
  }

  *v2 = v4 + 1;
  v5 = MEMORY[0x277CA3230](*(v1 + 24));
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) + 8 * v6;
  *(v1 + 32) = v6 + 1;
  *(v7 + 8) = v5;
LABEL_8:

  return TSPNSRangeCopyToMessage();
}

void sub_276D73CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a9);

  _Unwind_Resume(a1);
}

void sub_276D74220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_276D742D8(uint64_t a1, int a2)
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

void sub_276D74398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

id sub_276D74424(void *a1, const char *a2)
{
  v2 = objc_msgSend_valueForProperty_(a1, a2, 94);
  v5 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4);

  if (v5 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

uint64_t sub_276D744B4(void *a1, const char *a2, int a3)
{
  LODWORD(result) = objc_msgSend_intValueForProperty_(a1, a2, 105);
  v5 = result & 0xC;
  v6 = v5 == 8 || v5 == 4;
  v7 = result ^ 0xCLL;
  if (!v6)
  {
    v7 = result;
  }

  if (a3)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

double sub_276D744FC(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_cap(a1, a2, a3) == 1 || (v6 = objc_msgSend_cap(a1, v4, v5), result = 0.0, v6 == 2))
  {
    objc_msgSend_width(a1, v4, v5);
    return v8 * 0.5;
  }

  return result;
}

void sub_276D7454C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  *a1 = &unk_2885FE760;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = a6;
  *&v20 = 0xFFFFFFFFLL;
  *(&v20 + 1) = 0xFFFFFFFFLL;
  *(a1 + 40) = v20;
  v25 = objc_msgSend_wpKind(v15, v21, v22, v19);
  v26 = a9;
  *(a1 + 56) = v25;
  if (a9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = objc_msgSend_characterCount(v15, v23, v24);
  }

  *(a1 + 64) = v26;
  *(a1 + 72) = objc_msgSend_attachmentCount(v15, v23, v24);
  sub_276DD24D4(a1 + 80);
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  operator new();
}

void sub_276D747C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10)
{
  a10 = v12 + 108;
  sub_276D8D138(&a10);
  sub_276DD2914(v12 + 10);

  _Unwind_Resume(a1);
}

uint64_t sub_276D74874(uint64_t result, const char *a2)
{
  v3 = result;
  v4 = *(result + 96);
  v5 = *(result + 104);
  if (v4 != *MEMORY[0x277D81490] || v5 != *(MEMORY[0x277D81490] + 8))
  {
    v7 = &a2[-v4] < v5 && a2 >= v4;
    v8 = (v5 + v4);
    if (!v7 && v8 != a2)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPLayoutState::setCharIndex(TSWPCharIndex)");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutState.h");
      v14 = NSStringFromRange(v3[6]);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v13, 118, 0, "charIndex %lu is outside of paragraphRange: %{public}@", a2, v14);

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }
  }

  v3->location = a2;
  return result;
}

uint64_t sub_276D749A8(uint64_t a1)
{
  *a1 = &unk_2885FE760;
  (*(**(a1 + 896) + 24))(*(a1 + 896));
  v2 = *(a1 + 896);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (a1 + 864);
  sub_276D8D138(&v4);
  sub_276DD2914(a1 + 80);
  return a1;
}

void sub_276D74A74(uint64_t a1)
{
  sub_276D749A8(a1);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276D74AAC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v199 = *MEMORY[0x277D85DE8];
  v181 = a2;
  v8 = *(a1 + 8);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "BOOL TSWPLayoutChore::layOutIntoTarget(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, BOOL *)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 340, 0, "invalid nil value for '%{public}s'", "_storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = *(a1 + 8);
  }

  objc_msgSend_wpKind(v8, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_willLayoutIntoTarget(v181, v16, v17);
  }

  v18 = *(a1 + 80);
  v180 = (a1 + 80);
  v19 = *(a1 + 64);
  if (v18 > v19)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "BOOL TSWPLayoutChore::layOutIntoTarget(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, BOOL *)");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    v26 = objc_msgSend_wpKind(*(a1 + 8), v24, v25);
    v27 = *(a1 + 80);
    v28 = *(a1 + 64);
    v31 = objc_msgSend_length(*(a1 + 8), v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v32, v21, v23, 349, 0, "Attempt to lay out past end of storage (kind:%lu) %lu vs %lu vs %lu", v26, v27, v28, v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    v18 = *(a1 + 80);
    v19 = *(a1 + 64);
  }

  if (v18 <= v19)
  {
    if (objc_msgSend_textIsVertical(v181, v16, v17))
    {
      objc_msgSend_currentSize(v181, v36, v37);
      v41 = v40;
    }

    else
    {
      objc_msgSend_currentSize(v181, v36, v37);
      v41 = v42;
    }

    v43 = objc_msgSend_columns(v181, v38, v39);
    if (!objc_msgSend_count(v43, v44, v45))
    {
      v48 = *(a1 + 8);
      v49 = *(a1 + 80);
      v50 = objc_msgSend_styleProvider(*(a1 + 24), v46, v47);
      objc_msgSend_fixColumnBoundsForTarget_storage_charIndex_firstColumnIndex_precedingHeight_height_alreadyHasMargins_styleProvider_(TSWPLayoutManager, v51, v181, v48, v49, 0, 0, v50, 0.0, v41);
    }

    if (!objc_msgSend_count(v43, v46, v47))
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "BOOL TSWPLayoutChore::layOutIntoTarget(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, BOOL *)");
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 360, 0, "No columns to lay out into");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
    }

    if (objc_msgSend_count(v43, v52, v53))
    {
      v61 = *v180;
      v62 = sub_276DD2940(v180);
      sub_276D754E4(a1, v181, 0, v61, v62, a3);

      v177 = sub_276D75BA0(a1, v180);
      v196 = 0;
      v194 = 0;
      *(a1 + 928) = 0;
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v178 = v43;
      v63 = v43;
      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v190, v198, 16);
      v67 = MEMORY[0x277D81490];
      if (v66)
      {
        v68 = *v191;
        do
        {
          for (i = 0; i != v66; ++i)
          {
            if (*v191 != v68)
            {
              objc_enumerationMutation(v63);
            }

            objc_msgSend_setAnchoredRange_(*(*(&v190 + 1) + 8 * i), v65, *v67, v67[1]);
          }

          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v190, v198, 16);
        }

        while (v66);
      }

      v70 = rint(v41);
      while (1)
      {
        v189 = 0.0;
        v188 = 1;
        v187 = 0;
        v71 = v70;
        v195 = 0;
        do
        {
          v72 = *(a1 + 256);
          v73 = sub_276D75CE4(a1, v181, a3, &v189, &v188, &v195, &v187, v41, v71);
          v71 = rint(v41 - v189);
          if (v71 <= 0.0)
          {
            v76 = 1;
          }

          else
          {
            v76 = v73;
          }
        }

        while (v76 != 1);
        v77 = objc_msgSend_count(v63, v74, v75);
        v80 = v187;
        v81 = v77 - v187;
        if (v77 > v187)
        {
          v82 = objc_msgSend_lastObject(v63, v78, v79);
          v85 = objc_msgSend_anchoredRange(v82, v83, v84);
          v87 = v86;
          objc_msgSend_removeObjectsInRange_(v63, v86, v80, v81);
          if (v85 != *v67 || v87 != v67[1])
          {
            v91 = objc_msgSend_lastObject(v63, v88, v89);
            v200.location = objc_msgSend_anchoredRange(v91, v92, v93);
            v201.location = v85;
            v201.length = v87;
            v94 = NSUnionRange(v200, v201);
            v96 = objc_msgSend_lastObject(v63, v94.length, v95);
            objc_msgSend_setAnchoredRange_(v96, v97, v94.location, v94.length);
          }

          if (*(a1 + 928) == 1)
          {
            v98 = objc_msgSend_currentAnchoredDrawableLayouts(*(a1 + 888), v88, v89);
            v100 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v98, v99, &unk_2885FE770);
            objc_msgSend_wpBounds(v82, v101, v102);
            v104 = v103;
            v107 = objc_msgSend_lastObject(v63, v105, v106);
            objc_msgSend_wpBounds(v107, v108, v109);
            v111 = v104 > v110;

            if (v111)
            {
              v114 = objc_msgSend_count(v100, v112, v113);
              *(a1 + 928) = sub_276D76E2C(a1, v100, v114, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 0.0);
            }
          }
        }

        if (!objc_msgSend_wpKind(*(a1 + 8), v78, v79))
        {
          v119 = objc_msgSend_count(v63, v115, v116);
          v120 = -INFINITY;
          if (v72 < v119)
          {
            v121 = v72;
            do
            {
              v122 = objc_msgSend_objectAtIndexedSubscript_(v63, v117, v121);
              objc_msgSend_wpBounds(v122, v123, v124);
              MaxY = CGRectGetMaxY(v202);
              objc_msgSend_contentBlockBottom(v122, v126, v127);
              if (v120 >= v128)
              {
                v128 = v120;
              }

              if (MaxY >= v128)
              {
                v120 = MaxY;
              }

              else
              {
                v120 = v128;
              }

              ++v121;
            }

            while (v119 != v121);
          }

          v130 = objc_msgSend_count(v63, v117, v118);
          if (v72 < v130)
          {
            do
            {
              v131 = objc_msgSend_objectAtIndexedSubscript_(v63, v129, v72);
              objc_msgSend_wpBounds(v131, v132, v133);
              objc_msgSend_setWpBounds_(v131, v134, v135);

              ++v72;
            }

            while (v130 != v72);
          }
        }

        if (!sub_276D774F8(a1, &v196, &v194, v181))
        {
          break;
        }

        v136 = sub_276D77934(a1);
        sub_276D77748(a1, v136);
        v137 = sub_276DD2A08(v180);
        objc_msgSend_removeAllFootnoteReferenceStorages(v137, v138, v139);
      }

      sub_276D77A1C(a1, v181);
      sub_276D77C40(a1, v177, v186);
      sub_276DD2914(v186);
      sub_276D77D60(a1, v181, a4);
      if (*(a1 + 80) == *(a1 + 64) && !*(a1 + 56))
      {
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v170 = objc_msgSend_columns(v181, v140, v141);
        v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v171, &v182, v197, 16);
        if (v174)
        {
          v175 = *v183;
          while (2)
          {
            for (j = 0; j != v174; ++j)
            {
              if (*v183 != v175)
              {
                objc_enumerationMutation(v170);
              }

              if (objc_msgSend_lineCount(*(*(&v182 + 1) + 8 * j), v172, v173))
              {
                v142 = 0;
                goto LABEL_81;
              }
            }

            v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v172, &v182, v197, 16);
            if (v174)
            {
              continue;
            }

            break;
          }
        }

        v142 = 1;
LABEL_81:
      }

      else
      {
        v142 = 0;
      }

      sub_276DD2A30(v180, 0);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_didLayoutIntoTarget(v181, v143, v144);
      }

      v145 = *(a1 + 80);
      v146 = *(a1 + 64);
      v147 = v195;
      v148 = IsParagraphBreakingCharacter(v195);
      if (v147 == 8232)
      {
        v149 = 1;
      }

      else
      {
        v149 = v148;
      }

      if (sub_276DD2B08(v180))
      {
        v152 = 0;
      }

      else if (*(a1 + 88) >= *(a1 + 64))
      {
        v152 = sub_276D781D8(a1, v181, v151);
      }

      else
      {
        v152 = 1;
      }

      v153 = objc_msgSend_columns(v181, v150, v151);
      v156 = objc_msgSend_lastObject(v153, v154, v155);
      isLastLineFragmentPartitioned = objc_msgSend_isLastLineFragmentPartitioned(v156, v157, v158);

      v162 = objc_msgSend_columns(v181, v160, v161);
      v165 = objc_msgSend_lastObject(v162, v163, v164);
      v168 = objc_msgSend_layoutResultFlags(v165, v166, v167);

      v35 = (v145 < v146) | v149 | (v168 >> 14) & 1 | v152 | v142 | isLastLineFragmentPartitioned;
      v43 = v178;
    }

    else
    {
      LOBYTE(v35) = 0;
    }
  }

  else
  {
    LOBYTE(v35) = 0;
  }

  return v35 & 1;
}

void sub_276D754E4(uint64_t a1, void *a2, uint64_t a3, const char *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v97 = a5;
  *(a1 + 888) = v11;
  IsVertical = objc_msgSend_textIsVertical(v11, v12, v13);
  if (((IsVertical ^ ((*(a1 + 32) & 0x10) == 0)) & 1) == 0)
  {
    v15 = 16;
    if (!IsVertical)
    {
      v15 = 0;
    }

    *(a1 + 32) = *(a1 + 32) & 0xFFFFFFFFFFFFFFEFLL | v15;
    (*(**(a1 + 896) + 24))(*(a1 + 896));
    v16 = *(a1 + 896);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_forceWesternLineBreaking(*(a1 + 16), v17, v18);
    }

    operator new();
  }

  sub_276DD24D4(obj);
  sub_276DD2918(a1 + 80, obj);
  sub_276DD2914(obj);
  sub_276DD2948(a1 + 80, v97);
  *(a1 + 176) = *MEMORY[0x277D81490];
  sub_276D74874(a1 + 80, a4);
  v21 = objc_msgSend_columns(v11, v19, v20);
  if (objc_msgSend_count(v21, v22, v23))
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(v21, v24, a3);
    sub_276DD2968(a1 + 80, v26);

    v27 = *(a1 + 8);
    v28 = *(a1 + 80);
    v32 = objc_msgSend_styleProvider(*(a1 + 24), v29, v30);
    if (v27)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v27, v31, v28, v32);
      var0 = obj[0].var0;
    }

    else
    {
      var0 = 0;
      memset(obj, 0, 72);
    }

    objc_storeStrong((a1 + 104), var0);
    objc_storeStrong((a1 + 112), obj[0].var1);
    v34 = *&obj[0].var4;
    *(a1 + 120) = *&obj[0].var2;
    *(a1 + 136) = v34;
    *(a1 + 152) = *&obj[0].var6;
    *(a1 + 168) = obj[0].var7.length;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(obj);
  }

  v35 = sub_276D7B078(a1, v24, v25);
  v38 = v35;
  if (v35)
  {
    v39 = objc_msgSend_anchoredRange(v35, v36, v37);
    a4 = (v39 + v40);
  }

  *(a1 + 88) = a4;

  *(a1 + 96) = 0x7FFFFFFFFFFFFFFFLL;
  v43 = objc_msgSend_footnoteHeightMeasurer(v11, v41, v42);
  sub_276DD2A10(a1 + 80, v43);

  v46 = objc_msgSend_footnoteMarkProvider(v11, v44, v45);
  sub_276DD2A20(a1 + 80, v46);

  sub_276D7B0FC(a1, v47);
  sub_276D78C18(a1, 0, 0x7FFFFFFFFFFFFFFFLL);
  v48 = sub_276DD2960(a1 + 80);

  if (v48)
  {
    v51 = sub_276DD2960(a1 + 80);
    *(a1 + 256) = objc_msgSend_columnIndex(v51, v52, v53);

    if (*(a1 + 256) != a3)
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "void TSWPLayoutChore::protectedSetUpLayoutState(TSDLayout<TSWPLayoutTarget> *__strong, NSUInteger, TSWPCharIndex, __strong id<TSDHint>, TSWPLayoutFlags)");
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 844, 0, "Column index mismatch");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
    }
  }

  v61 = objc_msgSend_textWrapper(*(a1 + 16), v49, v50);
  sub_276DD2A30(a1 + 80, v61);

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_textColorOverride(*(a1 + 16), v62, v63);
    v66 = LABEL_23:;
    goto LABEL_25;
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_textColorOverride(v11, v64, v65);
    goto LABEL_23;
  }

  v66 = 0;
LABEL_25:
  sub_276DD2AF0(a1 + 80, v66);
  objc_msgSend_maxSize(v11, v67, v68);
  objc_msgSend_position(v11, v69, v70);
  TSURectWithOriginAndSize();
  *(a1 + 584) = v71;
  *(a1 + 592) = v72;
  *(a1 + 600) = v73;
  *(a1 + 608) = v74;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 431) = objc_msgSend_shouldHyphenate(v11, v75, v76);
  }

  else
  {
    v77 = objc_msgSend_documentRoot(*(a1 + 8), v75, v76);
    *(a1 + 431) = objc_msgSend_shouldHyphenate(v77, v78, v79);
  }

  *(a1 + 488) = 0x4032000000000000;
  sub_276D7B338(a1);
  *(a1 + 640) = a6;
  if (objc_opt_respondsToSelector())
  {
    shouldIgnoreAnchoredAttachments = objc_msgSend_shouldIgnoreAnchoredAttachments(v11, v80, v81);
    sub_276DD2B10(a1 + 80, shouldIgnoreAnchoredAttachments);
  }

  if (objc_opt_respondsToSelector())
  {
    v85 = objc_msgSend_restrictedLayoutCharRange(v11, v83, v84);
    v87 = v86;
  }

  else
  {
    v85 = *MEMORY[0x277D81490];
    v87 = *(MEMORY[0x277D81490] + 8);
  }

  sub_276DD2B28(a1 + 80, v85, v87);
  if (objc_opt_respondsToSelector())
  {
    v90 = objc_msgSend_supportsPageNumbers(v11, v88, v89);
  }

  else
  {
    v90 = 1;
  }

  *(a1 + 664) = v90;
  if (objc_opt_respondsToSelector())
  {
    v93 = objc_msgSend_alwaysIncludesSpaceBefore(v11, v91, v92);
  }

  else
  {
    v93 = 0;
  }

  *(a1 + 665) = v93;
  if (objc_opt_respondsToSelector())
  {
    v96 = objc_msgSend_alwaysIncludesSpaceAfter(v11, v94, v95);
  }

  else
  {
    v96 = 0;
  }

  *(a1 + 666) = v96;
}

uint64_t sub_276D75BA0(uint64_t *a1, const char *a2)
{
  v4 = a1[109];
  if ((0x7D6343EB1A1F58D1 * ((v4 - a1[108]) >> 4)) >= 6)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "size_t TSWPLayoutChore::pPushLayoutState(const TSWPLayoutState &)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 892, 0, "Too many layoutStates pushed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = a1[109];
  }

  if (v4 >= a1[110])
  {
    v12 = sub_276D8D1BC(a1 + 108, a2);
  }

  else
  {
    sub_276DD288C(v4, a2);
    v12 = v4 + 784;
    a1[109] = v4 + 784;
  }

  a1[109] = v12;
  return 0x7D6343EB1A1F58D1 * ((v12 - a1[108]) >> 4);
}

uint64_t sub_276D75CE4(uint64_t a1, void *a2, uint64_t a3, double *a4, _DWORD *a5, __int16 *a6, unsigned int *a7, double a8, double a9)
{
  v287 = *MEMORY[0x277D85DE8];
  v253 = a2;
  v13 = 0;
  v284 = a9;
  v283 = 0x4028000000000000;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    v15 = &v286[v13];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = *v14;
    v17 = v14[1];
    *(v15 + 1) = *v14;
    *(v15 + 2) = v17;
    *(v15 + 3) = v16;
    *(v15 + 4) = v17;
    *(v15 + 10) = 0;
    v13 += 88;
  }

  while (v13 != 880);
  v20 = sub_276D89E04(a1, v253, *a7, v286);
  v21 = *(a1 + 208);
  v22 = *(a1 + 224);
  if (v20 == 0.0)
  {
    v31 = 0;
  }

  else
  {
    v23 = *(a1 + 240);
    v24 = *(a1 + 248);
    v25 = objc_msgSend_columns(v253, v18, v19);
    v30 = v24 + v23;
    if (objc_msgSend_count(v25, v26, v27) >= v30)
    {
      v32 = objc_msgSend_columns(v253, v28, v29);
      v34 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, v30 - 1);
      v31 = objc_msgSend_layoutResultFlags(v34, v35, v36);
    }

    else
    {
      v31 = 0;
    }
  }

  v37 = rint(v20 + v21 + v22);
  v250 = v31;
  if ((v31 & 0x200) == 0)
  {
    v37 = a9;
  }

  v282 = v37;
  v258 = (v31 & 0x200) >> 9;
  v281 = v258;
  v248 = sub_276D75BA0(a1, (a1 + 80));
  v40 = 0;
  v41 = 0;
  LOBYTE(v254) = 0;
  v252 = 0;
  v251 = *(a1 + 928);
  v247 = a3;
  v259 = a3;
  while (1)
  {
    *a6 = 0;
    v279 = 0;
    *(a1 + 256) = *a7;
    v280 = v40 + 1;
    if (v41)
    {
      v42 = sub_276D77934(a1);
      v43 = *(a1 + 80);
      if (*v42 <= v43)
      {
        v44 = *(a1 + 80);
      }

      else
      {
        v44 = *v42;
      }

      if (*v42 >= v43)
      {
        v45 = *(a1 + 80);
      }

      else
      {
        v45 = *v42;
      }

      v46 = sub_276D77934(a1);
      sub_276D77748(a1, v46);
      v47 = sub_276DD2A08(a1 + 80);
      v48 = v47 == 0;

      if (!v48)
      {
        sub_276D88328(a1, v45, v44 - v45);
      }

      sub_276DBCB14(*(a1 + 896), v49);
    }

    v50 = *(a1 + 80);
    if (v50 > *(a1 + 64))
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "BOOL TSWPLayoutChore::pLayOutPiece(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 3971, 0, "Bad _state.charIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
      v50 = *(a1 + 80);
    }

    v58 = *(a1 + 888);
    v59 = *(a1 + 8);
    v60 = *a7;
    v61 = *a4;
    v62 = v282;
    v63 = objc_msgSend_styleProvider(*(a1 + 24), v38, v39);
    objc_msgSend_fixColumnBoundsForTarget_storage_charIndex_firstColumnIndex_precedingHeight_height_alreadyHasMargins_styleProvider_(TSWPLayoutManager, v64, v58, v59, v50, v60, 0, v63, v61, v62);

    LOBYTE(v274) = 0;
    LOBYTE(v273[0]) = 0;
    v256 = *a7;
    v255 = *(a1 + 248);
    v67 = objc_msgSend_columns(v253, v65, v66);
    v263 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, *a7);

    objc_msgSend_wpBounds(v263, v69, v70);
    v260 = (v255 + v256);
    if (v73 <= 0.0 && (objc_msgSend_autosizeFlags(v253, v71, v72) & 1) == 0)
    {
      v122 = 1;
      goto LABEL_67;
    }

    v74 = v259;
    if ((v252 & ~BYTE4(v251)) & v258)
    {
      v74 = v259 | 0x10000;
    }

    v75 = *a7;
    if (v260 <= v75)
    {
      v76 = *a7;
    }

    else
    {
      v76 = v255 + v256;
    }

    if (v260 >= v75)
    {
      v77 = *a7;
    }

    else
    {
      v77 = v255 + v256;
    }

    *(a1 + 928) = v251;
    v259 = v74;
    v254 = sub_276D78260(a1, v74 & 0xFFFFFFFFFFFFFFFELL, v77, v76 - v77, *(a1 + 888), a6, &v279, &v274, v273);
    if (*(a1 + 56) == 2)
    {
      goto LABEL_43;
    }

    v78 = sub_276DD2A08(a1 + 80);
    v79 = v78 == 0;

    if (v79)
    {
      goto LABEL_43;
    }

    v80 = sub_276DD2A08(a1 + 80);
    objc_msgSend_footnoteBlockHeightForTarget_(v80, v81, *(a1 + 888));
    v83 = v82;

    if (v83 <= 0.0)
    {
      goto LABEL_43;
    }

    v86 = *(a1 + 608);
    v87 = v83 + *a4;
    v88 = v86 - v87;
    if (v62 <= v86 - v87)
    {
      goto LABEL_43;
    }

    v282 = v86 - v87;
    v89 = *(a1 + 888);
    v90 = *(a1 + 8);
    started = objc_msgSend_startCharIndex(v263, v84, v85);
    v92 = *a7;
    v93 = *a4;
    v96 = objc_msgSend_styleProvider(*(a1 + 24), v94, v95);
    objc_msgSend_fixColumnBoundsForTarget_storage_charIndex_firstColumnIndex_precedingHeight_height_alreadyHasMargins_styleProvider_(TSWPLayoutManager, v97, v89, v90, started, v92, 0, v96, v93, v88);

    if (v76 - v77 < 2)
    {
      a9 = v88;
LABEL_43:
      v98 = v279;
      v99 = *a6;
      v100 = *a7;
      v101 = sub_276D77934(a1);
      if (v99 == 5)
      {
        v103 = 0;
      }

      else
      {
        v103 = v98;
      }

      v104 = sub_276D8A258(a1, (v103 & (v254 ^ 1u)), v100, v101, v286, a9, v102, v260, v250, &v283, &v284, &v282, a4, &v281, &v280);
      LOBYTE(v258) = v281;
      if ((v104 & 1) == 0)
      {
        v122 = 0;
LABEL_67:
        v88 = a9;
        goto LABEL_68;
      }

      if ((v281 & 1) == 0)
      {
LABEL_62:
        v88 = a9;
        goto LABEL_63;
      }

      if ((v252 & 1) == 0)
      {
        if ((v259 & 0x20000) != 0)
        {
          LOBYTE(v258) = 1;
          BYTE4(v251) = 1;
LABEL_61:
          v252 = 1;
          goto LABEL_62;
        }

        v108 = objc_msgSend_columns(v253, v105, v106);
        v109 = v77;
        if (v76 <= v77)
        {
LABEL_53:
          v114 = objc_msgSend_objectAtIndexedSubscript_(v108, v107, v77);
          v117 = objc_msgSend_range(v114, v115, v116);

          v119 = *(a1 + 8);
          if (v119)
          {
            objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v119, v118, v117, 0);
          }

          else
          {
            memset(&v278, 0, sizeof(v278));
          }

          v120 = TSWPParagraphEnumerator::paragraphTextRange(&v278, v118);
          BYTE4(v251) = objc_msgSend_phoneticsExistOnRange_(*(a1 + 8), v121, v120, v121);
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v278);
        }

        else
        {
          while (1)
          {
            v110 = objc_msgSend_objectAtIndexedSubscript_(v108, v107, v109);
            v113 = objc_msgSend_requiresGlyphVectorsForHeightMeasurement(v110, v111, v112);

            if (v113)
            {
              break;
            }

            if (v76 == ++v109)
            {
              goto LABEL_53;
            }
          }

          BYTE4(v251) = 1;
        }
      }

      LOBYTE(v258) = 1;
      goto LABEL_61;
    }

    if (*a5 >= 2u && sub_276D8A010(a1, v77, v76 - v77, 0) > v88)
    {
      break;
    }

    *(a1 + 576) = 1;
LABEL_63:

    v40 = v280;
    v41 = 1;
    a9 = v88;
    if (v280 >= 0x10)
    {
      v122 = 0;
      goto LABEL_69;
    }
  }

  v122 = 1;
LABEL_68:

LABEL_69:
  if (v258)
  {
    v124 = objc_msgSend_columns(v253, v38, v39);
    v125 = *a7;
    if (v260 > v125)
    {
      do
      {
        v126 = objc_msgSend_objectAtIndexedSubscript_(v124, v123, v125);
        v129 = objc_msgSend_layoutResultFlags(v126, v127, v128);
        objc_msgSend_setLayoutResultFlags_(v126, v130, v129 | 0x200);

        ++v125;
      }

      while (v255 + v256 != v125);
    }

    if ((v259 & 0x30000) == 0x10000)
    {
      v131 = sub_276D77934(a1);
      sub_276DD288C(v277, v131);
      sub_276D8A6E8(a1, v277, v247);
      sub_276DD2914(v277);
    }

    LOBYTE(v259) = v247;
  }

  if (*a5 < 2u)
  {
    if ((v122 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_148;
  }

  LOBYTE(v278.var0) = 0;
  v132 = *a7;
  if (v260 <= v132)
  {
    v133 = *a7;
  }

  else
  {
    v133 = v255 + v256;
  }

  if (v260 >= v132)
  {
    v134 = *a7;
  }

  else
  {
    v134 = v255 + v256;
  }

  v135 = objc_msgSend_columns(*(a1 + 888), v38, v39);
  if (sub_276D8A010(a1, v134, v133 - v134, &v278) > v88 || (v278.var0 & 1) == 0)
  {
    goto LABEL_128;
  }

  if (*(sub_276D77934(a1) + 168) != 1)
  {
    if (!v122)
    {
      goto LABEL_155;
    }

    goto LABEL_128;
  }

  v136 = sub_276D77934(a1);
  v138 = objc_msgSend_objectAtIndexedSubscript_(v135, v137, *(v136 + 176));
  objc_msgSend_textHeight(v138, v139, v140);
  v142 = v141;
  if (objc_msgSend_lineCount(v138, v143, v144) != 1)
  {

    if ((v122 & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_128;
  }

  v145 = *(sub_276D77934(a1) + 346);
  v146 = v88 - v142 < v142 ? v145 : 0;

  if ((v122 | v146))
  {
LABEL_128:
    if (*(a1 + 56) != 2)
    {
      v213 = sub_276DD2A08(a1 + 80);
      v214 = !v213 || v260 == v132;
      v215 = !v214;

      if (v215)
      {
        v218 = objc_msgSend_objectAtIndexedSubscript_(v135, v216, v134);
        if (!v218)
        {
          v219 = MEMORY[0x277D81150];
          v220 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, "BOOL TSWPLayoutChore::pLayOutPiece(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)");
          v222 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v219, v223, v220, v222, 4103, 0, "Nil first column in column array");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v224, v225);
        }

        v228 = objc_msgSend_objectAtIndexedSubscript_(v135, v217, v133 - 1);
        if (!v228)
        {
          v229 = MEMORY[0x277D81150];
          v230 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v226, "BOOL TSWPLayoutChore::pLayOutPiece(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)");
          v232 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v231, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v229, v233, v230, v232, 4106, 0, "Nil last column in column array");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v234, v235);
        }

        v236 = objc_msgSend_range(v218, v226, v227);
        v239 = objc_msgSend_range(v228, v237, v238);
        if (v236 <= v239 + v240)
        {
          v241 = v239 + v240;
        }

        else
        {
          v241 = v236;
        }

        if (v236 >= v239 + v240)
        {
          v242 = (v239 + v240);
        }

        else
        {
          v242 = v236;
        }

        sub_276D88328(a1, v242, v241 - v242);
      }
    }

    v243 = sub_276D77934(a1);
    sub_276D77748(a1, v243);
    *a6 = 10;

LABEL_148:
    v208 = 1;
    goto LABEL_149;
  }

LABEL_155:

LABEL_92:
  v148 = objc_msgSend_columns(*(a1 + 888), v38, v39);
  if (*(a1 + 248))
  {
    v149 = 0;
    v150 = 0;
    do
    {
      v151 = objc_msgSend_objectAtIndexedSubscript_(v148, v147, *a7 + v150);
      v154 = v151;
      if (v259)
      {
        objc_msgSend_wpBounds(v151, v152, v153);
        v290.origin.x = v155;
        v290.origin.y = v156;
        v290.size.width = v157;
        v290.size.height = v158;
        v159 = &v286[88 * v149];
        if (CGRectEqualToRect(*(v159 + 16), v290))
        {
          v162 = objc_msgSend_lineFragmentArray(v154, v160, v161);
          v165 = sub_276D81604(a1, &v286[88 * v149], v162, v154, v259, *(v159 + 10));
        }

        else
        {
          objc_msgSend_erasableBounds_(v154, v160, 0);
          v172 = v171;
          v174 = v173;
          v176 = v175;
          v178 = v177;
          if (v154)
          {
            objc_msgSend_transformToWP(v154, v169, v170);
          }

          else
          {
            memset(&v278, 0, 48);
          }

          v288.origin.x = v172;
          v288.origin.y = v174;
          v288.size.width = v176;
          v288.size.height = v178;
          v291 = CGRectApplyAffineTransform(v288, &v278);
          v289 = CGRectUnion(*(v159 + 48), v291);
          v165 = sub_276D8AA38(v289.origin.x, v289.origin.y, v289.size.width, v289.size.height, v289.origin.x, v289.origin.y, v289.size.width, v289.size.height, v179, v154, 0, 0);
        }

        v180 = v165;
        v181 = v166;
        v182 = v167;
        v183 = v168;
        memset(&v278, 0, 48);
        if (v154)
        {
          objc_msgSend_transformFromWP(v154, v163, v164);
        }

        objc_msgSend_setTransformForColumn_andInvalidateWPRect_inTarget_(TSWPLayoutManager, v163, v154, *(a1 + 888), v180, v181, v182, v183);
        v276 = 0u;
        v275 = 0u;
        v274 = 0u;
        if (v154)
        {
          objc_msgSend_transformFromWP(v154, v184, v185);
        }

        v273[0] = *&v278.var0;
        v273[1] = *&v278.var2;
        v273[2] = *&v278.var4;
        v270 = v274;
        v271 = v275;
        v272 = v276;
        if ((TSUTransformsDifferOnlyByTranslation() & 1) == 0)
        {
          v188 = MEMORY[0x277D81150];
          v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v186, "BOOL TSWPLayoutChore::pLayOutPiece(TSDLayout<TSWPLayoutTarget> *__strong, TSWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)");
          v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v188, v192, v189, v191, 4142, 0, "Computed transform differs by more than translation");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v193, v194);
        }

        v264 = vsubq_f64(v276, *&v278.var4);
        v195 = vmovn_s64(vmvnq_s8(vceqq_f64(v264, *MEMORY[0x277CBF348])));
        if ((v195.i32[0] | v195.i32[1]))
        {
          v196 = objc_msgSend_lineFragmentArray(v154, v186, v187);
          v197 = **v196;
          for (i = (*v196)[1]; v197 != i; v197 += 2)
          {
            if ((*(*v197 + 24) & 4) != 0)
            {
              v199 = sub_276D649A0(*v197, 0);
              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              v200 = v199;
              v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v201, &v266, v285, 16);
              if (v204)
              {
                v205 = *v267;
                do
                {
                  for (j = 0; j != v204; ++j)
                  {
                    if (*v267 != v205)
                    {
                      objc_enumerationMutation(v200);
                    }

                    objc_msgSend_offsetGeometryBy_(*(*(&v266 + 1) + 8 * j), v202, v203, *&v264);
                  }

                  v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v202, &v266, v285, 16);
                }

                while (v204);
              }
            }
          }
        }
      }

      v149 = ++v150;
    }

    while (*(a1 + 248) > v150);
  }

  *a7 = v260;
  if (v279)
  {
    sub_276D7B0FC(a1, v147);
    v207 = *a7;
    *(a1 + 240) = v207;
    *(a1 + 256) = v207;
    v208 = 1;
    if (!((*a6 == 5) | v254 & 1) && *a4 < a8 && *(a1 + 80) < *(a1 + 40))
    {
      v209 = sub_276DD2970(a1 + 80);
      v212 = objc_msgSend_alwaysStartsNewTarget(v209, v210, v211);

      if (v212)
      {
        goto LABEL_125;
      }

      v208 = 0;
      ++*a5;
    }
  }

  else
  {
LABEL_125:
    v208 = 1;
  }

LABEL_149:
  sub_276D77C40(a1, v248, v265);
  sub_276DD2914(v265);
  for (k = 800; k != -80; k -= 88)
  {
    v245 = *&v286[k];
    if (v245)
    {
      sub_276D5EEA0(v245);
    }
  }

  return v208;
}

void sub_276D76BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  v24 = 800;
  while (1)
  {
    v25 = *(&STACK[0x8A0] + v24);
    if (v25)
    {
      sub_276D5EEA0(v25);
    }

    v24 -= 88;
    if (v24 == -80)
    {

      _Unwind_Resume(a1);
    }
  }
}

id sub_276D76DFC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_info(a2, a2, a3);

  return v3;
}

uint64_t sub_276D76E2C(uint64_t a1, void *a2, unsigned int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v105 = a2;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v15 = *(a1 + 256);
  r1[0] = a1;
  v18 = objc_msgSend_columns(*(a1 + 888), v16, v17);
  v20 = objc_msgSend_subarrayWithRange_(v18, v19, 0, v15);

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v21 = v20;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v118, v127, 16);
  if (v25)
  {
    v26 = *v119;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v119 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v118 + 1) + 8 * i);
        if ((objc_msgSend_onlyHasAnchoredDrawable(v28, v23, v24) & 1) == 0)
        {
          memset(&v115, 0, 32);
          v29 = *(r1[0] + 888);
          objc_msgSend_frameBounds(v28, v23, v24);
          objc_msgSend_rectInRoot_(v29, v30, v31);
          v115.a = v32;
          v115.b = v33;
          v115.c = v34;
          v115.d = v35;
          sub_276D67228(&v122, &v115);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v118, v127, 16);
    }

    while (v25);
  }

  v129.origin.x = a4;
  v129.origin.y = a5;
  v129.size.width = a6;
  v129.size.height = a7;
  MinX = CGRectGetMinX(v129);
  v130.origin.x = a4;
  v130.origin.y = a5;
  v130.size.width = a6;
  v130.size.height = a7;
  MinY = CGRectGetMinY(v130);
  v131.origin.x = a4;
  v131.origin.y = a5;
  v131.size.width = a6;
  v131.size.height = a7;
  Width = CGRectGetWidth(v131);
  *__p = 0u;
  v117 = 0u;
  v39 = *(r1[0] + 888);
  v40 = sub_276DD2960(r1[0] + 80);
  v43 = v40;
  if (v40)
  {
    objc_msgSend_transformFromWP(v40, v41, v42);
  }

  else
  {
    memset(&v115, 0, sizeof(v115));
  }

  v132.origin.x = MinX;
  v132.origin.y = MinY;
  v132.size.width = Width;
  v132.size.height = a8;
  v133 = CGRectApplyAffineTransform(v132, &v115);
  objc_msgSend_rectInRoot_(v39, v44, v45, v133.origin.x, v133.origin.y, v133.size.width, v133.size.height);
  __p[0] = v46;
  __p[1] = v47;
  *&v117 = v48;
  *(&v117 + 1) = v49;

  sub_276D67228(&v122, __p);
  __p[0] = 0;
  __p[1] = 0;
  *&v117 = 0;
  v52 = objc_msgSend_count(v105, v50, v51);
  v54 = objc_msgSend_subarrayWithRange_(v105, v53, v52 - a3, a3);
  obja = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v54, v55, &unk_2885FE7B0);

  v56 = objc_alloc(MEMORY[0x277CBEB58]);
  v59 = objc_msgSend_count(v105, v57, v58);
  v61 = objc_msgSend_initWithCapacity_(v56, v60, v59);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = obja;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v111, v126, 16);
  if (v65)
  {
    v66 = *v112;
    do
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v112 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v68 = objc_msgSend_owningAttachmentNoRecurse(*(*(&v111 + 1) + 8 * j), v63, v64, v104);
        v69 = sub_276D7AD14(r1[0], v68);
        v71 = TSUProtocolCast();
        if (v71)
        {
          objc_msgSend_addObject_(v61, v70, v71, &unk_288648E88);
        }

        v104 = &unk_288636CC0;
        v72 = TSUProtocolCast();
        v75 = v72;
        if (v72)
        {
          v76 = objc_msgSend_descendentWrappables(v72, v73, v74, &unk_288636CC0);
          objc_msgSend_addObjectsFromArray_(v61, v77, v76);
        }
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v111, v126, 16);
    }

    while (v65);
  }

  v109 = 0u;
  v110 = 0u;
  memset(&r1[1], 0, 32);
  v78 = v61;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, &r1[1], v125, 16);
  if (v82)
  {
    v83 = *r1[3];
    do
    {
      for (k = 0; k != v82; ++k)
      {
        if (*r1[3] != v83)
        {
          objc_enumerationMutation(v78);
        }

        v85 = *(r1[2] + 8 * k);
        if (objc_msgSend_wrapType(v85, v80, v81, v104) != 5)
        {
          memset(&v115, 0, 32);
          objc_msgSend_boundsInfluencingExteriorWrap(v85, v80, v81);
          v115.a = v86;
          v115.b = v87;
          v115.c = v88;
          v115.d = v89;
          sub_276D67228(__p, &v115);
        }
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v80, &r1[1], v125, 16);
    }

    while (v82);
  }

  if (*(r1[0] + 649))
  {
    v90 = 0.01;
  }

  else
  {
    v90 = 0.0;
  }

  v91 = v122;
  v92 = v123;
  while (1)
  {
    if (v91 == v92)
    {
      v102 = 0;
      goto LABEL_46;
    }

    v93 = __p[0];
    v94 = __p[1];
    if (__p[0] != __p[1])
    {
      break;
    }

LABEL_43:
    v91 += 4;
  }

  v95 = *(v91 + 1);
  r1[0] = *v91;
  v96 = *(v91 + 2);
  v97 = *(v91 + 3);
  while (1)
  {
    *&v134.origin.x = r1[0];
    v134.origin.y = v95;
    v134.size.width = v96;
    v134.size.height = v97;
    v135 = CGRectIntersection(v134, *v93);
    x = v135.origin.x;
    y = v135.origin.y;
    v100 = v135.size.width;
    height = v135.size.height;
    if (CGRectGetWidth(v135) > v90)
    {
      v136.origin.x = x;
      v136.origin.y = y;
      v136.size.width = v100;
      v136.size.height = height;
      if (CGRectGetHeight(v136) > v90)
      {
        break;
      }
    }

    if (++v93 == v94)
    {
      goto LABEL_43;
    }
  }

  v102 = 1;
LABEL_46:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  return v102;
}

void sub_276D773DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276D774F8(uint64_t a1, int *a2, unint64_t *a3, void *a4)
{
  v9 = a4;
  v10 = *a2;
  v11 = *a2 + 1;
  *a2 = v11;
  if (v10)
  {
    if (v11 != 2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "BOOL TSWPLayoutChore::targetHasOverlaps(uint &, TSWPCharIndex &, TSDLayout<TSWPLayoutTarget> *__strong)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 6751, 0, "Bad passCount");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = *(a1 + 88);
    if (v19 <= *a3)
    {
      v19 = *a3;
    }

    *(a1 + 88) = v19;
    v20 = objc_msgSend_columns(v9, v7, v8);
    v23 = objc_msgSend_lastObject(v20, v21, v22);

    v27 = objc_msgSend_anchoredRange(v23, v24, v25);
    v28 = *(a1 + 88);
    if (v28 < v27)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "BOOL TSWPLayoutChore::targetHasOverlaps(uint &, TSWPCharIndex &, TSDLayout<TSWPLayoutTarget> *__strong)");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 6755, 0, "anchored range start shouldn't go backwards");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      v28 = *(a1 + 88);
    }

    if (v27 <= v28)
    {
      v36 = v28;
    }

    else
    {
      v36 = v27;
    }

    if (v27 >= v28)
    {
      objc_msgSend_setAnchoredRange_(v23, v26, v28, v36 - v28);
    }

    else
    {
      objc_msgSend_setAnchoredRange_(v23, v26, v27, v36 - v27);
    }

    goto LABEL_18;
  }

  *a3 = *(a1 + 88);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_textWrapper(*(a1 + 16), v37, v38), v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
  {
LABEL_18:
    v40 = 0;
    goto LABEL_19;
  }

  v40 = sub_276D8CB4C(a1, v9);
LABEL_19:

  return v40;
}

uint64_t sub_276D77748(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 80;
  v5 = *(a1 + 576);
  if (a1 + 80 == a2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPLayoutChore::pRestoreState(const TSWPLayoutState &)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 6435, 0, "We should not restore from our own object.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (*(a2 + 96) == *(a1 + 176) && *(a2 + 104) == *(a1 + 184))
  {
    v17 = *(a1 + 504);
    v18 = *(a1 + 506);
    v19 = *(a1 + 520);
    result = sub_276DD2918(v4, a2);
    *(a1 + 504) = v17;
    *(a1 + 506) = v18;
    v16 = *(a1 + 512);
    if (!v16)
    {
      *(a1 + 512) = v19;
      v16 = v19;
    }
  }

  else
  {
    result = sub_276DD2918(v4, a2);
    v16 = *(a1 + 512);
  }

  *(a1 + 576) = v5;
  v20 = *(a1 + 184);
  if (v16 > v20 || *(a1 + 520) > v20)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPLayoutChore::pRestoreState(const TSWPLayoutState &)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 6458, 0, "Bad _typesetterCharIndex");

    v28 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v28, v26, v27);
  }

  return result;
}

uint64_t sub_276D77934(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (*(a1 + 864) == v1)
  {
    TSUSetCrashReporterInfo();
    v3 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "const TSWPLayoutState &TSWPLayoutChore::pTopLayoutState() const", "const TSWPLayoutState &TSWPLayoutChore::pTopLayoutState() const", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm", 913);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v5, v7, 913, 1, "_pushedStates stack is empty");

    TSUCrashBreakpoint();
    abort();
  }

  return v1 - 784;
}

void sub_276D77A1C(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v3 = MEMORY[0x277D81490];
  v4 = *MEMORY[0x277D81490];
  v5 = *(MEMORY[0x277D81490] + 8);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_columns(v27, v6, v7);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  v26 = a1;
  if (v12)
  {
    v13 = *v29;
    v14 = v4;
    v15 = v5;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        location = objc_msgSend_range(v17, v10, v11.location, v26);
        v20.location = location;
        v20.length = length;
        if (v14 != *v3 || v15 != v3[1])
        {
          v34.location = v14;
          v34.length = v15;
          v22 = NSUnionRange(v34, v20);
          length = v22.length;
          location = v22.location;
        }

        v14 = location;
        v15 = length;
        v23 = objc_msgSend_anchoredRange(v17, length, v20.location);
        v11.location = v23;
        v11.length = v10;
        if (v4 != *v3 || v5 != v3[1])
        {
          v35.location = v4;
          v35.length = v5;
          v25 = NSUnionRange(v35, v11);
          v10 = v25.length;
          v23 = v25.location;
        }

        v4 = v23;
        v5 = v10;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v28, v32, 16);
    }

    while (v12);
  }

  else
  {
    v14 = v4;
    v15 = v5;
  }

  sub_276D8AB58(v26, v14, v15, 0, v27);
  sub_276D8AB58(v26, v4, v5, 1, v27);
}

uint64_t sub_276D77C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 872);
  if (v3 == *(a1 + 864) || 0x7D6343EB1A1F58D1 * ((v3 - *(a1 + 864)) >> 4) != a2)
  {
    TSUSetCrashReporterInfo();
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "const TSWPLayoutState TSWPLayoutChore::pPopLayoutState(size_t)", "const TSWPLayoutState TSWPLayoutChore::pPopLayoutState(size_t)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm", 902);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 902, 1, "stack size is invalid");

    TSUCrashBreakpoint();
    abort();
  }

  sub_276DD288C(a3, v3 - 784);
  result = sub_276DD2914(*(a1 + 872) - 784);
  *(a1 + 872) = result;
  return result;
}

void sub_276D77D60(uint64_t a1, void *a2, _BYTE *a3)
{
  v74 = a2;
  if (!a3)
  {
    goto LABEL_39;
  }

  *a3 = 0;
  v7 = (a1 + 80);
  if (*(a1 + 80) >= *(a1 + 64))
  {
    goto LABEL_39;
  }

  v8 = objc_msgSend_columns(v74, v5, v6);
  v10 = objc_msgSend_rangeOfColumns_(TSWPColumn, v9, v8);
  v12 = v11;

  if (v10 + v12 != 0x7FFFFFFFFFFFFFFFLL && *v7 != v10 + v12)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "void TSWPLayoutChore::pHandleSync(TSDLayout<TSWPLayoutTarget> *__strong, BOOL *)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 4305, 0, "state should match the end of the columns laid out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v24 = objc_msgSend_dirtyRangesIntersecting_(*(a1 + 904), v13, v10, v12);
  if (!v24)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void TSWPLayoutChore::pHandleSync(TSDLayout<TSWPLayoutTarget> *__strong, BOOL *)");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 4308, 0, "invalid nil value for '%{public}s'", "targetDirtyRanges");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  v32 = objc_msgSend_superRange(v24, v22, v23);
  v34 = v33;
  v35 = *(a1 + 80);
  isEmpty = objc_msgSend_isEmpty(*(a1 + 904), v33, v36);
  if (v35 >= v32 + v34)
  {
    v40 = 1;
  }

  else
  {
    v40 = isEmpty;
  }

  if (v40 == 1)
  {
    v73 = objc_msgSend_nextTargetTopicNumberHints(*(a1 + 888), v38, v39);
    v43 = objc_msgSend_topicNumbers(*(a1 + 24), v41, v42);
    v72 = objc_msgSend_hintsForCharIndex_(v43, v44, *v7);

    if (v73 && !objc_msgSend_isEqual_(v73, v45, v72))
    {
      goto LABEL_33;
    }

    v76.location = TSWPParagraphEnumerator::paragraphTextRange((a1 + 104), v45);
    location = v76.location;
    length = v76.length;
    v77.location = v32;
    v77.length = v34;
    v48 = NSIntersectionRange(v76, v77);
    if (v34)
    {
      if (v48.length || v32 + v34 == location)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else if (v32 >= location && v32 - location < length)
    {
      goto LABEL_33;
    }

    v49 = sub_276DD29E0(a1 + 80);

    if (v49)
    {
      *a3 = *(a1 + 577);
    }

    else
    {
      v52 = objc_msgSend_nextTargetFirstColumn(v74, v50, v51);
      v55 = objc_msgSend_delta(v24, v53, v54);
      if (v52)
      {
        v58 = v55;
        if (objc_msgSend_range(v52, v56, v57) == *v7 - v55 && objc_msgSend_anchoredRange(v52, v59, v60) == *(a1 + 88) - v58 && (*(a1 + 576) & 1) == 0)
        {
          v63 = objc_msgSend_nextTargetFirstChildHint(*(a1 + 888), v61, v62);
          if ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend_isFirstHint(v63, v64, v65))
          {
            *a3 = 1;
          }
        }
      }
    }

    goto LABEL_33;
  }

LABEL_34:
  v66 = sub_276DD2A08(a1 + 80);
  if (v66)
  {
    v67 = sub_276DD2A08(a1 + 80);
    v69 = objc_msgSend_footnoteContainerIsOnSamePageAsTarget_(v67, v68, v74);

    if ((v69 & 1) == 0)
    {
      objc_msgSend_footnoteRangeForTextRange_(*(a1 + 8), v70, v10, v12);
      if (v71)
      {
        *a3 = 0;
      }
    }
  }

LABEL_39:
}

uint64_t sub_276D781D8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_columns(a2, a2, a3);
  v6 = objc_msgSend_lastObject(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_lineFragmentArray(v6, v7, v8);
    v10 = sub_276D88ACC(v9, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_276D78260(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v125 = *MEMORY[0x277D85DE8];
  v112 = a5;
  v116 = objc_msgSend_columns(v112, v13, v14);
  if (*(a1 + 264) == 1)
  {
    v17 = objc_msgSend_firstObject(v116, v15, v16);
    v20 = objc_msgSend_scaleTextPercent(v17, v18, v19);
    v21 = v20 < 0x64;
    if (v20 >= 0x64)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + 1;
    }

    v114 = v22;
  }

  else
  {
    v21 = 0;
    v23 = *(a1 + 272);
    v24 = (v23 * 100.0);
    if (v23 == 0.0)
    {
      v24 = 100;
    }

    v114 = v24;
  }

  v104 = sub_276D75BA0(a1, (a1 + 80));
  v109 = v21;
  v107 = *(a1 + 928);
  v28 = objc_msgSend_count(v116, v25, v26);
  v29 = a3 + a4;
  if (a3 + a4 > v28)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "BOOL TSWPLayoutChore::pLayOutColumns(TSWPLayoutFlags, NSRange, TSDLayout<TSWPLayoutTarget> *__strong, unichar &, BOOL &, BOOL &, BOOL &)");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    v126.location = a3;
    v126.length = a4;
    v34 = NSStringFromRange(v126);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v33, 580, 0, "Not enough columns: %lu, but need %{public}@", v28, v34);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
  }

  v38 = 0;
  v39 = a3 != 0;
  if (v28 <= a3)
  {
    v39 = 0;
  }

  v108 = v39;
  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  v115 = v40;
  v103 = 100;
  v105 = 40;
  v106 = v109;
  while (1)
  {
    v110 = v38;
    v41 = v109;
    while (1)
    {
      if (v41)
      {
        sub_276DBCB14(*(a1 + 896), v27);
        v44 = objc_msgSend_firstObject(v116, v42, v43);
        objc_msgSend_setScaleTextPercent_(v44, v45, v114);
        sub_276D78C18(a1, 0, 0x7FFFFFFFFFFFFFFFLL);
        objc_opt_class();
        v46 = TSUDynamicCast();
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v49 = objc_msgSend_children(v46, v47, v48);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v120, v124, 16);
        if (v53)
        {
          v54 = *v121;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v121 != v54)
              {
                objc_enumerationMutation(v49);
              }

              objc_msgSend_invalidateTextScalePercent(*(*(&v120 + 1) + 8 * i), v51, v52);
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v51, &v120, v124, 16);
          }

          while (v53);
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v111 = objc_msgSend_anchoredDrawablesForRelayout(*(a1 + 888), v56, v57);
      }

      else
      {
        v111 = 0;
      }

      v58 = objc_alloc(MEMORY[0x277CBEB18]);
      v62 = objc_msgSend_initWithArray_copyItems_(v58, v59, v111, 0);
      if (v108)
      {
        v63 = objc_msgSend_firstObject(v116, v60, v61);
        v65 = objc_msgSend_objectAtIndex_(v116, v64, a3 - 1);
        v68 = objc_msgSend_anchoredRange(v63, v66, v67);
        v70 = v69;
        v128.location = objc_msgSend_anchoredRange(v65, v69, v71);
        v128.length = v72;
        v127.location = v68;
        v127.length = v70;
        v73 = NSUnionRange(v127, v128);
        v74 = *(a1 + 8);
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = sub_276D79C64;
        v118[3] = &unk_27A6F38B8;
        v119 = v62;
        objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v74, v75, v73.location, v73.length, v118);
      }

      *(a1 + 928) = v107;
      v76 = a3;
      if (a3 < v115)
      {
        do
        {
          *(a1 + 256) = v76;
          v77 = objc_msgSend_objectAtIndexedSubscript_(v116, v60, v76);
          sub_276DD2968(a1 + 80, v77);

          v78 = sub_276DD2960(a1 + 80);
          objc_msgSend_setScaleTextPercent_(v78, v79, v114);

          if (*a8 != 1)
          {
            v85 = sub_276DD2960(a1 + 80);
            objc_msgSend_setStartCharIndex_(v85, v86, *(a1 + 80));

            objc_msgSend_maxSize(v112, v87, v88);
            v89 = sub_276DD2960(a1 + 80);
            objc_msgSend_maxSize(v89, v90, v91);

            objc_msgSend_wpKind(*(a1 + 8), v92, v93);
            sub_276D79D50(a1, a2, v62);
          }

          v80 = sub_276DD2960(a1 + 80);
          v82 = v80;
          v83 = *(a1 + 80);
          v84 = *(a1 + 88);
          if (*a9)
          {
            objc_msgSend_makeEmpty_anchoredRange_layoutResultFlags_(v80, v81, v83, v84, 0, 16);
          }

          else
          {
            objc_msgSend_makeEmpty_anchoredRange_layoutResultFlags_(v80, v81, v83, v84, 0, 0);
          }

          ++v76;
        }

        while (v76 != v115);
      }

      v38 = v110 + 1;
      if (*(a1 + 264))
      {
        break;
      }

      ++v110;
      v41 = v109;
      if ((v109 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    v94 = objc_msgSend_lastObject(v116, v60, v61);
    v97 = objc_msgSend_layoutResultFlags(v94, v95, v96) & 3;
    if (!(v109 & 1 | (v97 != 0)))
    {
      break;
    }

    if (((v110 == 0) & v106) == 1)
    {
      if (v97)
      {
        v98 = v114 - 1;
        v106 = 1;
        v103 = v114 - 1;
      }

      else
      {
        v106 = 0;
        v98 = 100;
      }
    }

    else
    {
      if (((v38 == 2) & v106) == 1 && !v97)
      {
        break;
      }

      v99 = v103;
      v100 = v105;
      if ((v103 - v105) > 1)
      {
        v106 = 0;
        if (v97)
        {
          v99 = v114;
        }

        else
        {
          v100 = v114;
        }

        v103 = v99;
        v105 = v100;
        v98 = (v100 + v99) >> 1;
      }

      else
      {
        if (!v97 || v114 == v105)
        {
          break;
        }

        v106 = 0;
        v98 = v105;
      }
    }

    v114 = v98;
    v101 = sub_276D77934(a1);
    sub_276D77748(a1, v101);
    *a8 = 0;

    v109 = 1;
  }

LABEL_60:
  sub_276D77C40(a1, v104, v117);
  sub_276DD2914(v117);

  return 0;
}

void sub_276D78C18(uint64_t a1, uint64_t a2, const char *a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1 + 80;
  }

  v6 = TSWPParagraphEnumerator::paragraphStyle((v5 + 24), 0);

  if (!v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSWPLayoutChore::pSetUpStateForParagraphIndex(TSWPLayoutState *, TSWPCharIndex)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 6142, 0, "Bad paragraphEnumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  *(v5 + 416) = 0x7FFFFFFFFFFFFFFFLL;
  v16 = TSWPParagraphEnumerator::paragraphStyle((v5 + 24), (v5 + 96));
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_276D74874(v5, a3);
  }

  v17 = *v5;
  v18 = *(v5 + 96);
  v19 = *(v5 + 104);
  v20 = *v5 < v18 || *v5 - v18 >= v19;
  if (v20 && (v17 != v19 + v18 || v17 != *(a1 + 64)))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPLayoutChore::pSetUpStateForParagraphIndex(TSWPLayoutState *, TSWPCharIndex)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    v25 = *v5;
    v26 = NSStringFromRange(*(v5 + 96));
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v24, 6162, 0, "charIndex %lu is outside of paragraphRange: %{public}@", v25, v26);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    v18 = *(v5 + 96);
    v19 = *(v5 + 104);
  }

  v30 = v19 + v18;
  v31 = *(a1 + 64);
  if (v30 > v31)
  {
    *(v5 + 104) = v31 - v18;
  }

  *(v5 + 208) = TSWPParagraphEnumerator::paragraphLevel((v5 + 24), v15);
  *(v5 + 256) = 0;
  *(v5 + 448) = *v5 == *(v5 + 96);
  v32 = *(v5 + 192);
  if (v32 == 0.0)
  {
    v33 = sub_276DD2960(v5);
    v36 = objc_msgSend_scaleTextPercent(v33, v34, v35);
  }

  else
  {
    v36 = v32 * 100.0;
  }

  v37 = sub_276DD2950(v5);

  if (v16 != v37)
  {
    sub_276DD2958(v5, v16);
    objc_msgSend_floatValueForProperty_(v16, v40, 87);
    *(v5 + 296) = v41;
    objc_msgSend_floatValueForProperty_(v16, v42, 88);
    *(v5 + 304) = v43;
    objc_opt_class();
    v45 = objc_msgSend_valueForProperty_(v16, v44, 85);
    v46 = TSUCheckedDynamicCast();

    if (v46)
    {
      objc_msgSend_amount(v46, v47, v48);
    }

    else
    {
      v49 = 1.0;
    }

    *(v5 + 288) = v49;
    *(v5 + 272) = objc_msgSend_mode(v46, v47, v48);
    objc_msgSend_baselineRule(v46, v50, v51);
    *(v5 + 280) = v52;
    objc_msgSend_floatValueForProperty_(v16, v53, 81);
    *(v5 + 216) = v54;
    objc_msgSend_floatValueForProperty_(v16, v55, 82);
    *(v5 + 224) = v56;
    objc_msgSend_floatValueForProperty_(v16, v57, 80);
    *(v5 + 232) = v58;
    *(v5 + 392) = objc_msgSend_intValueForProperty_(v16, v59, 91) != 0;
    *(v5 + 344) = objc_msgSend_intValueForProperty_(v16, v60, 92) != 0;
    *(v5 + 345) = objc_msgSend_intValueForProperty_(v16, v61, 89) != 0;
    *(v5 + 346) = objc_msgSend_intValueForProperty_(v16, v62, 90) != 0;
    v66 = objc_msgSend_valueForProperty_(v16, v63, 94);
    v221 = v66;
    if (v66)
    {
      v67 = objc_msgSend_null(MEMORY[0x277CBEB68], v64, v65);
      *(v5 + 377) = v66 != v67;
    }

    else
    {
      *(v5 + 377) = 0;
    }

    *(v5 + 360) = objc_msgSend_intValueForProperty_(v16, v64, 105);
    *(v5 + 376) = objc_msgSend_intValueForProperty_(v16, v68, 106) != 0;
    objc_opt_class();
    v70 = objc_msgSend_valueForProperty_(v16, v69, 98);
    v71 = TSUDynamicCast();

    if (v71)
    {
      objc_msgSend_width(v71, v72, v73);
      if (v74 <= 0.0)
      {
        v75 = 0;
      }

      else
      {
        v75 = v71;
      }
    }

    else
    {
      v75 = 0;
    }

    if (*(v5 + 360))
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    sub_276DD29C8(v5, v76);
    v77 = sub_276DD29C0(v5);
    if (v77)
    {
      v78 = sub_276DD29C0(v5);
      objc_msgSend_width(v78, v79, v80);
      v81 = (v5 + 384);
      *(v5 + 384) = v82;
    }

    else
    {
      v81 = (v5 + 384);
      *(v5 + 384) = 0;
    }

    objc_opt_class();
    v84 = objc_msgSend_valueForProperty_(v16, v83, 100);
    v87 = objc_msgSend_null(MEMORY[0x277CBEB68], v85, v86);

    if (v87 == v84)
    {
      v88 = 0;
    }

    else
    {
      v88 = v84;
    }

    v89 = TSUCheckedDynamicCast();

    v92 = sub_276DD29C0(v5);
    if (v92)
    {
      objc_msgSend_sizeValue(v89, v90, v91);
    }

    else
    {
      v93 = 0;
    }

    *(v5 + 368) = v93;

    v94 = sub_276DD29C0(v5);

    if (v94)
    {
      if (*(v5 + 360))
      {
        v95 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      *(v5 + 360) = 0;
    }

    v94 = sub_276DD29C0(v5);
    if (!v94 && *v81 == 0.0 && *(v5 + 368) == 0.0)
    {
      goto LABEL_60;
    }

    if (!*(v5 + 360))
    {
      goto LABEL_58;
    }

    v95 = 1;
LABEL_52:
    v97 = sub_276DD29C0(v5);
    if (v97)
    {
      v98 = *v81;

      if (v95)
      {
      }

      if (v98 > 0.0)
      {
LABEL_60:
        *(v5 + 352) = objc_msgSend_intValueForProperty_(v16, v96, 93) != 0;
        v107 = objc_msgSend_valueForProperty_(v16, v106, 84);
        sub_276DD29D8(v5, v107);

        objc_msgSend_floatValueForProperty_(v16, v108, 83);
        v110 = v109;
        v111 = v109 == 0.0;
        v112 = 36.0;
        if (!v111)
        {
          v112 = v110;
        }

        *(v5 + 400) = v112;
        v113 = *(a1 + 920);
        *(a1 + 920) = 0;

        if ((*(v5 + 352) & 1) == 0)
        {
          goto LABEL_75;
        }

        v115 = objc_msgSend_valueForProperty_(v16, v114, 39);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || objc_msgSend_isEqualToString_(v115, v116, @"__multilingual"))
        {
          v118 = objc_msgSend_documentRoot(*(a1 + 8), v116, v117);
          v121 = v118;
          if (v118)
          {
            v122 = objc_msgSend_hyphenationLocale(v118, v119, v120);
LABEL_72:
            v125 = *(a1 + 920);
            *(a1 + 920) = v122;

            goto LABEL_73;
          }

          if (objc_opt_respondsToSelector())
          {
            v122 = objc_msgSend_hyphenationLocale(*(a1 + 888), v123, v124);
            goto LABEL_72;
          }
        }

        else
        {
          if (!v115 || (objc_msgSend_isEqualToString_(v115, v116, @"__none") & 1) != 0)
          {
            goto LABEL_74;
          }

          v158 = objc_alloc(MEMORY[0x277CBEAF8]);
          v160 = objc_msgSend_initWithLocaleIdentifier_(v158, v159, v115);
          v121 = *(a1 + 920);
          *(a1 + 920) = v160;
        }

LABEL_73:

LABEL_74:
LABEL_75:
        v126 = *(a1 + 920);
        if (!v126)
        {
          *(v5 + 352) = 0;
        }

        sub_276DD2B00(v5, v126);

        goto LABEL_78;
      }

LABEL_59:
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "void TSWPLayoutChore::pSetUpStateForParagraphIndex(TSWPLayoutState *, TSWPCharIndex)");
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v103, v100, v102, 6216, 0, "Inconsistent Border and Stroke");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
      goto LABEL_60;
    }

    if ((v95 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_58:

    goto LABEL_59;
  }

LABEL_78:
  v127 = v36 / 100.0;
  *(v5 + 320) = vmulq_n_f64(*(v5 + 296), v127);
  v128 = *(v5 + 288) * v127;
  if (!*(v5 + 272))
  {
    v128 = *(v5 + 288);
  }

  *(v5 + 312) = v128;
  sub_276D8657C(a1, v38, v39);
  v129 = sub_276DD29B0(v5);
  v131 = objc_msgSend_charIndexMappedFromStorage_(v129, v130, *v5);

  v134 = TSWPParagraphEnumerator::dropCapStyle((v5 + 24), v132);
  if (v134)
  {
    v135 = 0;
  }

  else
  {
    v135 = TSWPParagraphEnumerator::paragraphListStyle((v5 + 24), v133);
  }

  sub_276DD2988(v5, v135);
  if (!v134)
  {
  }

  v136 = sub_276DD2980(v5);
  objc_msgSend_labelIndentForLevel_(v136, v137, *(v5 + 208));
  *(v5 + 248) = v138;

  v139 = sub_276DD2950(v5);
  objc_msgSend_floatValueForProperty_(v139, v140, 17);
  v142 = v141;

  v143 = sub_276DD2980(v5);
  v144 = (v127 * v142);
  objc_msgSend_textIndentForLevel_fontSize_(v143, v145, *(v5 + 208), v144);
  v147 = v146;

  v148 = v147 + *(v5 + 248);
  *(v5 + 240) = v148;
  *(v5 + 264) = v148 + *(v5 + 216);
  v150 = sub_276DD2980(v5);
  if (!v150)
  {
    goto LABEL_89;
  }

  if (!TSWPParagraphEnumerator::isFirstParagraph((v5 + 24)))
  {
    v152 = objc_msgSend_characterAtIndex_(*(a1 + 8), v151, *(v5 + 96) - 1);

    if (v152 != 11)
    {
      goto LABEL_90;
    }

LABEL_89:
    *(v5 + 348) = 0;
    *(v5 + 350) = 0;
    goto LABEL_100;
  }

LABEL_90:
  v153 = sub_276DD2980(v5);
  *(v5 + 348) = objc_msgSend_labelTypeForLevel_(v153, v154, *(v5 + 208)) != 0;

  v155 = *(v5 + 348);
  if ((v155 & 1) == 0)
  {
    v153 = sub_276DD2980(v5);
    objc_msgSend_textIndentForLevel_fontSize_(v153, v156, *(v5 + 208), v144);
    if (v157 <= 0.0 && *(v5 + 248) <= 0.0)
    {
      *(v5 + 350) = 0;
      goto LABEL_99;
    }
  }

  *(v5 + 350) = TSWPParagraphEnumerator::listRunsRightToLeft((v5 + 24));
  if ((v155 & 1) == 0)
  {
LABEL_99:
  }

LABEL_100:
  *(v5 + 349) = TSWPParagraphEnumerator::paragraphRunsRightToLeft((v5 + 24), v149);
  v161 = sub_276D89738(a1, v16);
  *(v5 + 396) = v161;
  if (v161 == 4)
  {
    *(v5 + 396) = *(v5 + 349);
  }

  *(v5 + 424) = 0;
  *(v5 + 426) = 0;
  v163 = *(v5 + 96);
  v162 = *(v5 + 104);
  if (v163 != sub_276DBCB94(*(a1 + 896)) || v162 != v164)
  {
    (*(**(a1 + 896) + 24))(*(a1 + 896));
  }

  if (sub_276DBCB8C(*(a1 + 896)))
  {
    v167 = objc_msgSend_attachmentIndexRangeForTextRange_(*(a1 + 8), v165, *(v5 + 96), *(v5 + 104));
    v168 = v166;
    if (v167 < &v166[v167])
    {
      do
      {
        if (*(v5 + 424) == 1)
        {
          break;
        }

        *&v223 = 0x7FFFFFFFFFFFFFFFLL;
        v170 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(*(a1 + 8), v166, v167, &v223);
        if (v223 != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_characterAtIndex_(*(a1 + 8), v169, v223) == 65532)
        {
          *(v5 + 424) = 1;
          if (objc_msgSend_isDrawable(v170, v171, v172))
          {
            if ((objc_msgSend_isAnchored(v170, v173, v174) & 1) == 0 && (objc_msgSend_isPartitioned(v170, v175, v176) & 1) == 0)
            {
              *(v5 + 425) = 1;
            }
          }
        }

        ++v167;
        --v168;
      }

      while (v168);
    }

    v177 = objc_msgSend_footnoteRangeForTextRange_(*(a1 + 8), v166, *(v5 + 96), *(v5 + 104));
    v178 = v165;
    if (v177 < &v165[v177])
    {
      do
      {
        if (*(v5 + 426))
        {
          break;
        }

        *&v223 = 0x7FFFFFFFFFFFFFFFLL;
        v179 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(*(a1 + 8), v165, v177, &v223);
        if ((objc_msgSend_hasHiddenTextAtCharIndex_(*(a1 + 8), v180, v223) & 1) == 0 && v223 != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_characterAtIndex_(*(a1 + 8), v165, v223) == 14)
        {
          *(v5 + 426) = 1;
        }

        ++v177;
        --v178;
      }

      while (v178);
    }
  }

  if (*(v5 + 448) == 1)
  {
    sub_276DD2A40(v5, 0);
    v181 = sub_276DD29B0(v5);
    v184 = objc_msgSend_objectForProperty_(v134, v182, 256);
    if (v184)
    {
      v185 = objc_msgSend_rangeOfDropCapAtCharIndex_(v181, v183, v131);
      v187 = v186;
      if (v186)
      {
        v188 = v185;
        v189 = objc_msgSend_characterAtIndex_(v181, v186, v131);
        if ((IsParagraphBreakingCharacter(v189) & 1) == 0 && sub_276D37E68(v181, v188, v187))
        {
          if (*(v5 + 184) == 1)
          {
            v190 = sub_276DD2960(v5);
            v193 = objc_msgSend_scaleTextPercent(v190, v191, v192);
          }

          else
          {
            v193 = 100;
          }

          v194 = sub_276DD2950(v5);
          FontForStyle = TSWPFastCreateFontForStyle(0, v194, v193);

          CFAutorelease(FontForStyle);
          if ((*(a1 + 32) & 0x10) != 0)
          {
            FontForStyle = sub_276D35910(FontForStyle);
          }

          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          sub_276D38FF4(FontForStyle, v196, v197, &v223);
          v199 = objc_msgSend_charRangeMappedToStorage_(v181, v198, v188, v187);
          v201 = v200;
          v202 = [TSWPFilteredStorage alloc];
          v204 = objc_msgSend_initWithStorage_subRange_(v202, v203, *(a1 + 8), v199, v201);
          v206 = objc_msgSend_characterStyleForDropCapAtCharIndex_effectiveRange_(v181, v205, v188, 0);
          v207 = sub_276DD2950(v5);
          v208 = [TSWPDropCapAdornment alloc];
          v209 = *(v5 + 349);
          v210 = (*(a1 + 32) >> 4) & 1;
          v222[2] = v225;
          v222[3] = v226;
          v222[4] = v227;
          v222[5] = v228;
          v222[0] = v223;
          v222[1] = v224;
          LODWORD(v220) = *(v5 + 272);
          v212 = objc_msgSend_initWithDropCapStyle_characterStyle_paragraphStyle_text_rightToLeft_vertical_fontHeightInfo_lineSpacingMode_lineSpacingAmount_(v208, v211, v134, v206, v207, v204, v209, v210, *(v5 + 312), v222, v220);
          sub_276DD2A40(v5, v212);
        }
      }
    }
  }

  if (__CFADD__(*(v5 + 96), *(v5 + 104)))
  {
    v213 = MEMORY[0x277D81150];
    v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, "void TSWPLayoutChore::pSetUpStateForParagraphIndex(TSWPLayoutState *, TSWPCharIndex)");
    v216 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v215, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutChore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v213, v217, v214, v216, 6391, 0, "Bad _state.paragraphRange.length");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v218, v219);
  }
}