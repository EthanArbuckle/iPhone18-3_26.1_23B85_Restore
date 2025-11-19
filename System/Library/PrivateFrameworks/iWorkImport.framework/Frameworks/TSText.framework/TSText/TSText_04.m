void sub_276DC7D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 72);
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v9 = *(a3 + 96);
  __p = 0;
  v84 = 0;
  v85 = 0;
  v10 = sub_276D648F8(a3);
  if (v10)
  {
    v11 = sub_276DCACE4(v10, a2, a3);
    v12 = *(a3 + 56);
    v13 = *(a3 + 64);
    v14 = v11 + v13;
    v15 = *(a3 + 48) + v13 - v14;
    *&v81 = *(a3 + 40);
    *(&v81 + 1) = v15;
    *&v82 = v12;
    *(&v82 + 1) = v14;
    sub_276D67228(&__p, &v81);
  }

  v16 = *(a3 + 56);
  v81 = *(a3 + 40);
  v82 = v16;
  v17 = sub_276D878D8((a3 + 104), a2) + *(a3 + 48);
  if ((*(a3 + 25) & 0x20) != 0)
  {
    v19 = floor(v17 - *(a3 + 120));
    v18 = 1.79999995;
    *(&v81 + 1) = v19 + 1.79999995 * -0.5;
  }

  else
  {
    v18 = floor(v17) + 1.79999995 + 1.79999995 * 0.5 - *(&v81 + 1);
  }

  *(&v82 + 1) = v18;
  sub_276D67228(&__p, &v81);
  v20 = sub_276D878D8((a3 + 104), a2);
  v21 = *(a3 + 48);
  v22 = *(a3 + 56);
  v23 = *(a3 + 64);
  *&v81 = *(a3 + 40);
  *&v82 = v22;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v24 = sub_276D64E0C(a3);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v77, v86, 16);
  v75 = v23;
  v76 = v21;
  v73 = v7;
  v74 = v6;
  if (v28)
  {
    v29 = *v78;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v78 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v34 = *(*(&v77 + 1) + 8 * i);
        if (objc_msgSend_type(v34, v26, v27) == 4)
        {
          objc_msgSend_textPosition(v34, v35, v36);
          v38 = v37;
          if (objc_msgSend_location(v34, v39, v40) == 1)
          {
            objc_msgSend_ascent(v34, v41, v42);
            v44 = -(v20 + v38 - v43);
            if (v32 < v44)
            {
              v32 = v44;
            }
          }

          else
          {
            objc_msgSend_descent(v34, v41, v42);
            v55 = v38 - v20 + v54;
            if (v31 < v55)
            {
              v31 = v55;
            }
          }
        }

        else if (objc_msgSend_type(v34, v35, v36) == 6)
        {
          objc_msgSend_textPosition(v34, v26, v27);
          v46 = v45;
          objc_msgSend_descent(v34, v47, v48);
          v50 = v49;
          v53 = *(objc_msgSend_rects(v34, v51, v52) + 24) * 0.5;
          if (v30 < v46 - v20 + v50 + v53)
          {
            v30 = v46 - v20 + v50 + v53;
          }
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v77, v86, 16);
    }

    while (v28);
  }

  else
  {
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  if (v30 >= v31)
  {
    v56 = v30;
  }

  else
  {
    v56 = v31;
  }

  *(&v81 + 1) = v76 + v75 - (v32 + v75);
  *(&v82 + 1) = v56 + v32 + v75;
  sub_276D67228(&__p, &v81);
  v58 = v73;
  v57 = v74;
  v59 = v8;
  if (*(a1 + 29) == 1)
  {
    v60 = v9;
    *&v57 = CGRectInset(*&v57, -10.0, 0.0);
    v9 = v61;
  }

  v63 = __p;
  v62 = v84;
  if (__p != v84)
  {
    do
    {
      v64 = v63[3];
      if (v64 != INFINITY)
      {
        v65 = *v63;
        v66 = *(v63 + 1);
        v67 = *(v63 + 2);
        v68 = v9;
        *&v57 = CGRectUnion(*&v57, *(&v64 - 3));
        v9 = v69;
        v62 = v84;
      }

      v63 += 4;
    }

    while (v63 != v62);
  }

  v70 = 50.0;
  if ((*(a3 + 24) & 0x40000) == 0)
  {
    v70 = 0.0;
  }

  v71 = v9;
  v72 = -((*(a3 + 120) + *(a3 + 136)) * 0.25 + v70);
  *(a3 + 72) = CGRectInset(*&v57, v72, v72);
  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }
}

void sub_276DC8114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276DC8188(uint64_t a1, void *a2, unint64_t **a3)
{
  v280[3] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *a3;
  v265 = v6;
  if (((*a3)[56] & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSWPCharIndex TSWPCoreTextTypesetter::layOutDropCap(TSWPDropCapAdornment *__strong, TSWPTypesetterParamBlock *const)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1709, 0, "layOutDropCap called when not first line of paragraph");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (*(a1 + 31) != 1 || ((v15 = *v7, v16 = *(a1 + 32), *v7 == v16) ? (v17 = v15 > *(a1 + 40) + v16) : (v17 = 1), v17))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSWPCharIndex TSWPCoreTextTypesetter::layOutDropCap(TSWPDropCapAdornment *__strong, TSWPTypesetterParamBlock *const)");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 1710, 0, "layOutDropCap called without paragraph being set up correctly");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    v15 = *v7;
  }

  v25 = a3[28];
  v26 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 56), v5, v15);
  v28 = v26;
  if (v26 == 0x7FFFFFFFFFFFFFFFLL || v26 > *(a1 + 48))
  {
    if (*v7 != *(a1 + 40) + *(a1 + 32))
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "TSWPCharIndex TSWPCoreTextTypesetter::layOutDropCap(TSWPDropCapAdornment *__strong, TSWPTypesetterParamBlock *const)");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 1719, 0, "bad start char index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    v28 = *(a1 + 48);
  }

  sub_276D644D4(v25, *(a1 + 56));
  *v25 = *v7;
  *(v25 + 16) = *(a1 + 32);
  v38 = objc_msgSend_text(v6, v36, v37);
  v259 = v7;
  v264 = a1;
  v41 = objc_msgSend_length(v38, v39, v40);

  v43 = v41 + v28;
  v44 = *(a1 + 48);
  if (v41 + v28 < v44)
  {
    while ((*(*(a1 + 64) + 2 * v43) & 0xFFFE) == 0x200E)
    {
      if (++v43 >= v44)
      {
        v43 = *(a1 + 48);
        break;
      }
    }
  }

  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  v47 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v42, v43);
  v48 = v46 + v45;
  if (v47 < v46 + v45)
  {
    v48 = v47;
  }

  *(v25 + 8) = v48 - *v25;
  v49 = sub_276DFD384(*(a1 + 216));
  v52 = objc_msgSend_string(v49, v50, v51);

  v258 = v52;
  sub_276D6B92C(v25, v52);
  *(v25 + 24) |= 0x100000000uLL;
  sub_276D64998(v25, v6);
  objc_msgSend_origin(v6, v53, v54);
  objc_msgSend_outdentInPoints(v6, v55, v56);
  objc_msgSend_size(v6, v57, v58);
  TSURectWithOriginAndSize();
  v62 = v61;
  *(v25 + 40) = v63;
  *(v25 + 48) = v64;
  *(v25 + 56) = v61;
  *(v25 + 64) = v65;
  if (v6)
  {
    objc_msgSend_heightInfo(v6, v59, v60);
  }

  else
  {
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
  }

  v66 = v276;
  *(v25 + 136) = v275;
  *(v25 + 152) = v66;
  v67 = v278;
  *(v25 + 168) = v277;
  *(v25 + 184) = v67;
  v68 = v274;
  *(v25 + 104) = v273;
  *(v25 + 120) = v68;
  v69 = objc_alloc(MEMORY[0x277CCAB48]);
  v72 = objc_msgSend_coreTextString(v6, v70, v71);
  v261 = v25;
  string = objc_msgSend_initWithString_attributes_(v69, v73, v72, 0);

  v74 = sub_276DFD384(*(a1 + 216));
  v260 = objc_msgSend_attributesAtIndex_effectiveRange_(v74, v75, 0, 0);

  v76 = *MEMORY[0x277CC49F8];
  v262 = objc_msgSend_objectForKeyedSubscript_(v260, v77, *MEMORY[0x277CC49F8]);
  v80 = 0;
  v81 = *MEMORY[0x277CC4A00];
  while (1)
  {
    v82 = objc_msgSend_text(v265, v78, v79);
    v85 = v80 < objc_msgSend_length(v82, v83, v84);

    if (!v85)
    {
      break;
    }

    v88 = objc_msgSend_text(v265, v86, v87);
    v91 = objc_msgSend_string(v88, v89, v90);
    v93 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v91, v92, v80);
    v95 = v94;

    if (!v95)
    {
      v104 = MEMORY[0x277D81150];
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "TSWPCharIndex TSWPCoreTextTypesetter::layOutDropCap(TSWPDropCapAdornment *__strong, TSWPTypesetterParamBlock *const)");
      v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v108, v105, v107, 1762, 0, "invalid composed character sequence range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110);
      break;
    }

    v97 = [TSWPDropCapRunDelegateState alloc];
    v99 = objc_msgSend_initWithCharacterRange_adornment_(v97, v98, v93, v95, v265);
    v100 = CTRunDelegateCreate(&stru_2885FEC30, v99);
    v279[0] = v76;
    v279[1] = @"TSWPDropCapRunDelegateStateAttribute";
    v280[0] = v262;
    v280[1] = v99;
    v279[2] = v81;
    v280[2] = v100;
    v102 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v101, v280, v279, 3);
    objc_msgSend_setAttributes_range_(string, v103, v102, v93, v95);
    CFRelease(v100);

    v80 = v93 + v95;
  }

  v111 = CTTypesetterCreateWithAttributedString(string);
  v282.location = 0;
  v282.length = 0;
  Line = CTTypesetterCreateLine(v111, v282);
  v113 = Line;
  if (*(v259 + 349))
  {
    v62 = v62 + *(v264 + 232);
    v114 = 1.0;
  }

  else
  {
    v114 = 0.0;
  }

  PenOffsetForFlush = CTLineGetPenOffsetForFlush(Line, v114, v62);
  v116 = MEMORY[0x277D81490];
  sub_276DD1DC0(&v273, v113, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 0, PenOffsetForFlush, 0.0);
  sub_276D64850(v261, &v273);
  if (*(v259 + 349) == 1)
  {
    *(v261 + 24) |= 0x1000uLL;
  }

  CFRelease(v113);
  CFRelease(v111);
  if (*(v264 + 27) == 1)
  {
    objc_msgSend_insetTextFrame(v265, v117, v118);
    v120 = v119;
    objc_msgSend_insetTextFrame(v265, v121, v122);
    v124 = v120 + v123 * 0.5;
    v125 = v261;
  }

  else
  {
    v125 = v261;
    v124 = *(v261 + 112);
  }

  *(v125 + 32) = v124 + *(v125 + 48);
  v256 = objc_msgSend_dropCapStyle(v265, v117, v118);
  v127 = objc_msgSend_characterStyleForDropCapAtCharIndex_effectiveRange_(*(v264 + 56), v126, 0, 0);
  v257 = v127;
  v129 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v128, 3);
  objc_msgSend_addObject_(v129, v130, v256);
  if (v127)
  {
    objc_msgSend_addObject_(v129, v131, v127);
  }

  v132 = sub_276DD2950(v259);
  objc_msgSend_addObject_(v129, v133, v132);

  v134 = sub_276D38764(v129, 23, 0);
  v136 = objc_msgSend_objectForKeyedSubscript_(v260, v135, @"TSWPStrikethrough");
  v139 = objc_msgSend_integerValue(v136, v137, v138);

  if (v139 == -1)
  {
    v142 = -1;
  }

  else
  {
    v142 = sub_276D38764(v129, 27, 0);
  }

  objc_msgSend_insetTextFrame(v265, v140, v141);
  v146 = v145;
  if (v145 > 0.0 || v142 == -1)
  {
    if (v134)
    {
      if (v265)
      {
        objc_msgSend_heightInfo(v265, v143, v144);
      }

      else
      {
        v272 = 0u;
        v270 = 0u;
        v271 = 0u;
        v268 = 0u;
        v269 = 0u;
        v267 = 0u;
      }

      sub_276D395EC(&v267, v134, *(v264 + 27), *(v264 + 76), 2, 0.0);
      v148 = v147;
      v150 = v149;
      objc_opt_class();
      v151 = TSWPResolvePropertyForStyles(v129, 25);
      v152 = TSUCheckedDynamicCast();
      v155 = objc_msgSend_CGColor(v152, v153, v154);

      if (!v155)
      {
        objc_opt_class();
        v156 = TSWPResolvePropertyForStyles(v129, 48);
        v157 = TSUCheckedDynamicCast();

        if (v157)
        {
          v160 = objc_msgSend_referenceColor(v157, v158, v159);
          v163 = objc_msgSend_CGColor(v160, v161, v162);
        }

        else
        {
          v163 = objc_msgSend_objectForKeyedSubscript_(v260, v158, *MEMORY[0x277CC49C0]);
          v160 = v163;
        }

        v155 = v163;
      }

      v166 = sub_276D3A3AC(*(v264 + 84), *(v264 + 27), 5);
      if (v134 == 2)
      {
        v167 = 2;
      }

      else
      {
        v167 = 1;
      }

      objc_msgSend_insetTextFrame(v265, v164, v165);
      v169 = v168;
      objc_msgSend_underlineOffsetFromBaseline(v265, v170, v171);
      v173 = v172;
      v174 = [TSWPAdornmentLine alloc];
      isWhitespace_renderingDelegate_allowAntialiasing = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_isWhitespace_renderingDelegate_allowAntialiasing_(v174, v175, v155, v167, v134, v166, 0, 0, v169, v173, v146, v148, v150, 0);
      v177 = sub_276D6495C(v261);
      v178 = sub_276DC9294(v177, isWhitespace_renderingDelegate_allowAntialiasing);

      objc_msgSend_origin(v265, v179, v180);
      v182 = v181;
      objc_msgSend_insetTextFrame(v265, v183, v184);
      *(v261 + 32) = v182 + CGRectGetMaxY(v284);
    }

    if (!v142 || v146 <= 0.0)
    {
      goto LABEL_75;
    }

    if (v265)
    {
      objc_msgSend_heightInfo(v265, v143, v144);
    }

    else
    {
      v272 = 0u;
      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
      v267 = 0u;
    }

    v185 = 0.0;
    v188 = sub_276D39824(&v267, *(v264 + 27), 0, 0.0);
    v190 = v189;
    if ((*(v264 + 27) & 1) == 0)
    {
      v191 = v188;
      objc_msgSend_origin(v265, v186, v187);
      v193 = v192;
      v194 = *(v261 + 32);
      objc_msgSend_insetTextFrame(v265, v195, v196);
      v188 = v194 - CGRectGetMaxY(v285);
      v185 = v191 + v193 - v188;
    }

    objc_msgSend_insetTextFrame(v265, v186, v187, v188);
    v199 = v198;
    if (v142 == 2)
    {
      v185 = v185 - v190;
    }

    if (v142 == -1)
    {
      v206 = objc_msgSend_objectForKeyedSubscript_(v260, v197, @"TSWPStrikethroughColor");
      v213 = v206;
      v204 = objc_msgSend_CGColor(v206, v214, v215);
      v142 = 1;
    }

    else
    {
      objc_opt_class();
      v200 = TSWPResolvePropertyForStyles(v129, 29);
      v201 = TSUCheckedDynamicCast();
      v204 = objc_msgSend_CGColor(v201, v202, v203);

      if (v204)
      {
LABEL_74:
        v216 = [TSWPAdornmentLine alloc];
        started = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_(v216, v217, v204, v142, 0, 0, v199, v185, v146, v190, 0.0);
        v219 = sub_276D64964(v261);
        v220 = sub_276DC9294(v219, started);

LABEL_75:
        v221 = TSWPResolvePropertyForStyles(v129, 40);
        if (v221)
        {
          *(v261 + 24) |= 0x20uLL;
        }

        goto LABEL_78;
      }

      objc_opt_class();
      v205 = TSWPResolvePropertyForStyles(v129, 48);
      v206 = TSUCheckedDynamicCast();

      if (v206)
      {
        v209 = objc_msgSend_referenceColor(v206, v207, v208);
        v212 = objc_msgSend_CGColor(v209, v210, v211);
      }

      else
      {
        v212 = objc_msgSend_objectForKeyedSubscript_(v260, v207, *MEMORY[0x277CC49C0]);
        v209 = v212;
      }

      v204 = v212;
    }

    goto LABEL_74;
  }

LABEL_78:
  objc_msgSend_erasableBounds(v265, v143, v144);
  *(v261 + 72) = v222;
  *(v261 + 80) = v223;
  *(v261 + 88) = v224;
  *(v261 + 96) = v225;
  v228 = objc_msgSend_invisiblesFont(TSWPRendererUtilities, v226, v227);
  v231 = objc_msgSend_flippedInvisiblesFont(TSWPRendererUtilities, v229, v230);
  v232 = [TSWPAdornments alloc];
  v236 = objc_msgSend_initWithType_color_font_flippedFont_(v232, v233, 3, 0, v228, v231);
  if (v28 < v43)
  {
    do
    {
      if (*(*(v264 + 64) + 2 * v28) == -4)
      {
        v237 = objc_msgSend_attachmentAtCharIndex_(*(v264 + 56), v234, v28);
        isAnchored = objc_msgSend_isAnchored(v237, v238, v239);

        if (isAnchored)
        {
          v241 = objc_msgSend_charIndexMappedToStorage_(*(v264 + 56), v234, v28);
          objc_msgSend_addAdornmentWithAttachmentPosition_(v236, v242, v241, 0);
          *(v261 + 24) |= 8uLL;
        }
      }

      ++v28;
    }

    while (v43 != v28);
  }

  if (objc_msgSend_attachmentPositionCount(v236, v234, v235))
  {
    sub_276D64E14(v261, v236);
  }

  sub_276DC935C(v264, v261, v243);
  v244 = sub_276DFD384(*(v264 + 216));
  v248 = objc_msgSend_length(v244, v245, v246);
  if (*(v261 + 24) < 0)
  {
    v249 = v116;
  }

  else
  {
    v249 = v261;
  }

  v283.location = objc_msgSend_charRangeMappedFromStorage_(*(v264 + 56), v247, *v249, v249[1]);
  v283.length = v250;
  v281.location = 0;
  v281.length = v248;
  v251 = NSIntersectionRange(v281, v283);
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = sub_276DC96FC;
  v266[3] = &unk_27A6F4590;
  v266[4] = v264;
  *&v266[5] = v146;
  v266[6] = v261;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v244, v251.length, @"TSWPTextHighlightsAttribute", v251.location, v251.length, 0, v266);
  if (*(v261 + 24) < 0)
  {
    v252 = v116;
  }

  else
  {
    v252 = v261;
  }

  v254 = *v252;
  v253 = v252[1];

  sub_276DD1EBC(&v273);
  return v254 + v253;
}

void sub_276DC8FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_276DD1EBC(&a39);

  _Unwind_Resume(a1);
}

id sub_276DC9294(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!objc_msgSend_count(v3, v5, v6) || (objc_msgSend_lastObject(v3, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_merge_(v9, v10, v4), v9, (v11 & 1) == 0))
  {
    objc_msgSend_addObject_(v3, v7, v4);
  }

  v13 = objc_msgSend_lastObject(v3, v7, v12);

  return v13;
}

void sub_276DC9334(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276DC935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasTrackedChanges(*(a1 + 16), a2, a3))
  {
    *&v53[7] = 256;
    v52 = 0;
    *v53 = 0x100000000000000;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(&v46[5], 0, 32);
    v7 = *a2;
    v6 = *(a2 + 8);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v8 = v6 + v7;
    memset(v46, 0, 80);
    do
    {
      objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(*(a1 + 16), v5, v7, &v52, v46, &v44);
      if (!v45 && v7 != *(a2 + 8) + *a2)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSWPCoreTextTypesetter::pApplyChangeTrackingToLineFragment(TSWPLineFragment *) const");
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 4655, 0, "Empty effectiveRange");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      }

      v17 = *(&v47 + 1);
      v20 = v48;
      if (v17 && (objc_msgSend_showsMarkup(v17, v18, v19) & 1) == 0)
      {

        v17 = 0;
      }

      if (v20)
      {
        if (!objc_msgSend_isHidden(v20, v18, v19) || (objc_msgSend_showsMarkup(v20, v21, v22) & 1) != 0 || (objc_msgSend_showsHiddenDeletionMarkup(v20, v21, v22) & 1) != 0)
        {
          *(a2 + 24) |= 0x80000uLL;
          if (v17)
          {
            v23 = objc_msgSend_changeAdornmentsColor(v17, v21, v22);
            v26 = objc_msgSend_changeAdornmentsColor(v20, v24, v25);
            isEqual = objc_msgSend_isEqual_(v23, v27, v26);

            if (isEqual)
            {
              v31 = objc_msgSend_changeAdornmentsColor(v17, v29, v30);
              v32 = 1;
              goto LABEL_24;
            }

            v33 = 0;
          }

          else
          {
            v33 = objc_msgSend_changeAdornmentsColor(v20, v21, v22);
          }

          v32 = 1;
LABEL_25:
          if (!sub_276D6CFB8(a2))
          {
            v34 = sub_276D6CF74(a2);
            v36 = objc_msgSend_isEqual_(v33, v35, v34);

            if ((v36 & 1) == 0)
            {

              v33 = 0;
            }
          }

          sub_276D6CFB0(a2, v33);

          if (v32 && (objc_msgSend_showsMarkup(v20, v37, v38) & 1) == 0)
          {
            v41 = v44;
            v42 = v45;
            v43 = objc_msgSend_changeAdornmentsColor(v20, v39, v40);
            sub_276DCC2FC(a1, a2, v43, v42 + v41);
          }

          goto LABEL_31;
        }
      }

      v20 = 0;
      if (v17)
      {
        *(a2 + 24) |= 0x80000uLL;
        v31 = objc_msgSend_changeAdornmentsColor(v17, v18, v19);
        v32 = 0;
LABEL_24:
        v33 = v31;
        goto LABEL_25;
      }

LABEL_31:
      if (v45)
      {
        v7 = v44 + v45;
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < v8);
  }
}

void sub_276DC96FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = objc_msgSend_count(v7, v8, v9);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v11 > 0.0)
    {
      sub_276DC97B8(v11, 0.0, v10, *(a1 + 48), v7);
      *a5 = 1;
    }
  }
}

void sub_276DC97B8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = a5;
  v8 = [TSWPTextHighlightRenderingDelegate alloc];
  v10 = objc_msgSend_initWithHighlights_(v8, v9, v17);
  v11 = [TSWPAdornmentLine alloc];
  v16 = 0;
  isWhitespace_renderingDelegate_allowAntialiasing = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_isWhitespace_renderingDelegate_allowAntialiasing_(v11, v12, 0, 0, 0, 0, 0, v10, a2, 0.0, a1, 0.0, 0.0, v16);
  v14 = sub_276D64974(a4);
  v15 = sub_276DC9294(v14, isWhitespace_renderingDelegate_allowAntialiasing);
}

void sub_276DC989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

__CFString *sub_276DC98D8(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a4 >= 9)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *TSWPCoreTextTypesetter::pNumberedListLabel(const TSWPLayoutState *, TSWPParagraphEnumerator, TSWPParagraphLevel, BOOL, NSUInteger *) const");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 2378, 0, "illegal list level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v15 = &stru_28860A0F0;
  }

  else
  {
    v9 = *(*(a1 + 8) + 24);
    v12 = objc_msgSend_topicNumbers(v9, v10, v11);

    v15 = objc_msgSend_numberedListLabelForCharIndex_includeFormatting_(v12, v13, *a2, a5);
    if (a6)
    {
      *a6 = objc_msgSend_listNumberForCharIndex_(v12, v14, *a2);
    }
  }

  return v15;
}

void sub_276DC9A2C(void *a1, unint64_t a2, uint64_t a3)
{
  v13 = a1;
  v7 = objc_msgSend_string(v13, v5, v6);
  if (a2 < a2 + a3)
  {
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v7, a2);
      v9 = sub_276D352D8(CharacterAtIndex);
      if (CharacterAtIndex != v9)
      {
        v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%C", v9);
        objc_msgSend_replaceCharactersInRange_withString_(v13, v12, a2, 1, v11);
      }

      ++a2;
      --a3;
    }

    while (a3);
  }
}

uint64_t sub_276DC9B3C(uint64_t a1, uint64_t a2)
{
  v3 = **a2 + *(*(a2 + 224) + 8);
  if (v3)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 240) = v4;
  if (v3)
  {
    v5 = objc_msgSend_characterAtIndex_(*(a1 + 16), a2, v4);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 232) = v5;
  return v3;
}

id sub_276DC9B98()
{
  if (qword_280A58340 != -1)
  {
    sub_276F4F5F8();
  }

  v1 = qword_280A58338;

  return v1;
}

void sub_276DC9BDC()
{
  v15 = objc_opt_new();
  v2 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v0, v1);
  objc_msgSend_formUnionWithCharacterSet_(v15, v3, v2);

  objc_msgSend_addCharactersInRange_(v15, v4, 8232, 1);
  objc_msgSend_addCharactersInRange_(v15, v5, 65532, 1);
  objc_msgSend_addCharactersInRange_(v15, v6, 45, 1);
  objc_msgSend_removeCharactersInRange_(v15, v7, 160, 1);
  objc_msgSend_removeCharactersInRange_(v15, v8, 8239, 1);
  objc_msgSend_removeCharactersInRange_(v15, v9, 8199, 1);
  objc_msgSend_removeCharactersInRange_(v15, v10, 65279, 1);
  v13 = objc_msgSend_copy(v15, v11, v12);
  v14 = qword_280A58338;
  qword_280A58338 = v13;
}

uint64_t sub_276DC9CF0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_count(*(a1 + 96), a2, a3))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSUInteger TSWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(TSWPCharIndex) const");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 3908, 0, "Bad runCount");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_count(*(a1 + 96), v5, v6);
  if (objc_msgSend_count(*(a1 + 96), v15, v16) >= 2)
  {
    v18 = 1;
    while (1)
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v17, v18);
      v22 = objc_msgSend_charIndex(v19, v20, v21);

      if (v22 > a2)
      {
        break;
      }

      if (++v18 >= objc_msgSend_count(*(a1 + 96), v23, v24))
      {
        return v14 - 1;
      }
    }

    v14 = v18;
  }

  return v14 - 1;
}

double sub_276DC9E24(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v167 = *a2;
  v12 = *(a2 + 224);
  v171 = v12;
  if (objc_msgSend_count(*(a1 + 96), a2, a3) <= a3)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "CGRect TSWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(TSWPTypesetterParamBlock *const, const CGRect, const NSUInteger, const NSRange)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2503, 0, "Bad run index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    v12 = v171;
  }

  GlyphRuns = sub_276D648AC(v12);
  if (GlyphRuns)
  {
    v22 = sub_276D648D0(v12, 0);
    v23 = sub_276DD1F38(v22);
    GlyphRuns = CTLineGetGlyphRuns(v23);
  }

  v162 = GlyphRuns;
  v169 = objc_msgSend_count(v162, v24, v25);
  v27 = 0;
  v160 = *MEMORY[0x277CC4838];
  v168 = *MEMORY[0x277CC4AC8];
  v28 = a3;
  x = a6;
  y = a7;
  width = a8;
  height = a9;
  v33 = v169;
  do
  {
    while (1)
    {
      v173 = v27;
      if (v27 >= v33 || (*(v171 + 25) & 0x40) != 0)
      {
        v63 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v26, v28);
        location = objc_msgSend_charIndex(v63, v64, v65);

        v45 = 0;
        v35 = 0;
        v172 = 1;
      }

      else
      {
        v34 = objc_msgSend_objectAtIndexedSubscript_(v162, v26, v27);

        v35 = CTRunGetAttributes(v34);
        StringRange = CTRunGetStringRange(v34);
        length = StringRange.length;
        location = StringRange.location;
        v40 = a3;
        do
        {
          v28 = v40;
          if (v40 >= objc_msgSend_count(*(a1 + 96), length, v37) - 1)
          {
            break;
          }

          v41 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), length, v28 + 1);
          v44 = objc_msgSend_charIndex(v41, v42, v43);

          v40 = v28 + 1;
        }

        while (v44 <= StringRange.location);
        v45 = objc_msgSend_objectForKeyedSubscript_(v35, length, v160);

        v47 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v46, v28);
        v50 = objc_msgSend_ctFont(v47, v48, v49);

        if (v45 == v50)
        {
          v45 = 0;
LABEL_23:
          v172 = 0;
          goto LABEL_29;
        }

        v52 = objc_msgSend_objectForKeyedSubscript_(v35, v51, v168);

        if (v52 && CFBooleanGetValue(v52))
        {
          goto LABEL_23;
        }

        GlyphCount = CTRunGetGlyphCount(v34);
        if (GlyphCount < 1)
        {
          goto LABEL_23;
        }

        sub_276D6D3E8(buffer, GlyphCount);
        v175.location = 0;
        v175.length = 0;
        CTRunGetStringIndices(v34, v175, buffer[0]);
        v54 = 0;
        while (1)
        {
          v55 = *(*(a1 + 64) + 2 * buffer[0][v54]);
          if ((IsWhitespaceCharacter(*(*(a1 + 64) + 2 * buffer[0][v54]), v51) & 1) == 0)
          {
            if (v55 != 8209)
            {
              break;
            }

            v56 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v51, v28);
            v59 = objc_msgSend_attributes(v56, v57, v58);
            v61 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"__wpAttachmentMap");

            if (!v61)
            {
              break;
            }
          }

          if (GlyphCount == ++v54)
          {
            v62 = 1;
            goto LABEL_25;
          }
        }

        v62 = 0;
LABEL_25:
        if (buffer[0])
        {
          buffer[1] = buffer[0];
          operator delete(buffer[0]);
        }

        v172 = 0;
        if (v62)
        {
          v45 = 0;
        }
      }

LABEL_29:
      v66 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v51, v28);
      v68 = objc_msgSend_objectForKeyedSubscript_(v35, v67, v168);

      v71 = 0;
      if (*(a1 + 27) == 1 && v35 && v68)
      {
        v71 = CFBooleanGetValue(v68) != 0;
      }

      if (objc_msgSend_charIndex(v66, v69, v70) < a4 + a5 || objc_msgSend_charIndex(v66, v72, v73) == a4 && !a5)
      {
        if ((objc_msgSend_flags(v66, v72, v73) & 1) != 0 && objc_msgSend_charIndex(v66, v74, v75) >= a4)
        {
          v78 = *(a1 + 56);
          v79 = objc_msgSend_charIndex(v66, v76, v77);
          v81 = objc_msgSend_attachmentAtCharIndex_(v78, v80, v79);
          v84 = v81;
          if (v81)
          {
            if (objc_msgSend_isDrawable(v81, v82, v83))
            {
              if (objc_msgSend_isAnchored(v84, v85, v86))
              {
                *(v171 + 24) |= 8uLL;
              }

              else if ((objc_msgSend_isPartitioned(v84, v87, v88) & 1) == 0)
              {
                v158 = v84;
                v159 = sub_276D7AA9C(*(a1 + 8), v158);
                if (objc_msgSend_invalidGeometry(v159, v100, v101))
                {
                  v104 = MEMORY[0x277D81150];
                  v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "CGRect TSWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(TSWPTypesetterParamBlock *const, const CGRect, const NSUInteger, const NSRange)");
                  v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v107, v156, v106, 2585, 0, "Expected valid layout");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
                }

                objc_msgSend_descentForInlineLayout(v159, v102, v103);
                v111 = v110;
                v157 = objc_msgSend_characterStyle(v66, v112, v113);
                v114 = sub_276DD2950(v167);
                v115 = sub_276D388FC(v157, v114, 34, 0.0);

                objc_msgSend_alignmentFrameForInlineLayout(v159, v116, v117);
                if (*(a1 + 27))
                {
                  v122 = v120;
                }

                else
                {
                  v122 = v121;
                }

                if (v122 < 1.0)
                {
                  v122 = 1.0;
                }

                v123 = v122 * 0.5;
                if (!*(a1 + 27))
                {
                  v123 = v122 - v111;
                }

                v124 = v115 + v123;
                v125 = *(a1 + 112);
                if (v125 < v124)
                {
                  v125 = v124;
                }

                *(a1 + 112) = v125;
                if (v125 > *(a2 + 216))
                {
                  *(a2 + 216) = v125;
                  *(a1 + 144) = 0;
                }

                v126 = v122 - v124;
                if (*(a1 + 136) >= v126)
                {
                  v126 = *(a1 + 136);
                }

                *(a1 + 136) = v126;
                *(v171 + 24) |= 4uLL;
                if (objc_msgSend_elementKind(v158, v118, v119) == 4096)
                {
                  *(v171 + 24) |= 0x8000000uLL;
                }
              }
            }

            else
            {
              objc_opt_class();
              v89 = TSUDynamicCast();

              if (v89)
              {
                objc_opt_class();
                v90 = TSUDynamicCast();
                objc_msgSend_baselineOffset(v90, v91, v92);
                v94 = v93;
                objc_msgSend_size(v90, v95, v96);
                v98 = fmax(*(a1 + 112), v94 + fmax(v97, 1.0));
                *(a1 + 112) = v98;
                if (v98 > *(a2 + 216))
                {
                  *(a2 + 216) = v98;
                  *(a1 + 144) = 0;
                }

                v99 = fmax(*(a1 + 136), -v94);
                *(a1 + 136) = v99;
                if (v99 > *(a2 + 104))
                {
                  *(a2 + 104) = v99;
                }

                *(v171 + 24) |= 4uLL;
              }
            }
          }
        }

        if (location < *(a1 + 48) - 1 || location == a4 || (IsParagraphBreakingCharacter(*(*(a1 + 64) + 2 * location)) & 1) == 0)
        {
          sub_276DCA8F0(a1, a2, v66, v45, v71);
        }

        if ((objc_msgSend_flags(v66, v127, v128) & 4) != 0)
        {
          v131 = objc_msgSend_characterStyle(v66, v129, v130);
          v132 = sub_276DD2950(v167);
          v133 = TSWPResolvePropertyForStyles(v131, v132, 40);

          if (v133 && objc_msgSend_isEnabled(v133, v134, v135))
          {
            objc_msgSend_shadowBoundsForRect_(v133, v136, v137, a6, a7, a8, a9);
            v181.origin.x = v138;
            v181.origin.y = v139;
            v181.size.width = v140;
            v181.size.height = v141;
            v176.origin.x = x;
            v176.origin.y = y;
            v176.size.width = width;
            v176.size.height = height;
            v177 = CGRectUnion(v176, v181);
            x = v177.origin.x;
            y = v177.origin.y;
            width = v177.size.width;
            height = v177.size.height;
            *(v171 + 24) |= 0x20uLL;
          }
        }

        if ((objc_msgSend_flags(v66, v129, v130) & 8) != 0)
        {
          v144 = objc_msgSend_characterStyle(v66, v142, v143);
          v145 = sub_276DD2950(v167);
          v146 = TSWPResolvePropertyForStyles(v144, v145, 50);

          if (v146)
          {
            objc_msgSend_renderedWidth(v146, v147, v148);
            v150 = v149 * -0.5;
            v178.origin.x = a6;
            v178.origin.y = a7;
            v178.size.width = a8;
            v178.size.height = a9;
            v182 = CGRectInset(v178, v150, v150);
            v179.origin.x = x;
            v179.origin.y = y;
            v179.size.width = width;
            v179.size.height = height;
            v180 = CGRectUnion(v179, v182);
            x = v180.origin.x;
            y = v180.origin.y;
            width = v180.size.width;
            height = v180.size.height;
            *(v171 + 24) |= 0x20000000uLL;
          }
        }

        if ((objc_msgSend_flags(v66, v142, v143) & 0x10) != 0)
        {
          *(v171 + 24) |= 0x40000000uLL;
        }

        if ((objc_msgSend_flags(v66, v151, v152) & 0x20) != 0)
        {
          *(v171 + 24) |= 0x80000000uLL;
        }
      }

      v27 = v173 + 1;
      v28 += v172;

      v33 = v169;
      if (!v169)
      {
        break;
      }

      if (v27 >= v169)
      {
        goto LABEL_89;
      }
    }

    v154 = objc_msgSend_count(*(a1 + 96), v26, v153);
    v33 = 0;
  }

  while (v28 < v154);
LABEL_89:

  return x;
}

void sub_276DCA8F0(uint64_t a1, uint64_t *a2, void *a3, const __CTFont *a4, char a5)
{
  v9 = a3;
  v12 = v9;
  v13 = *a2;
  if (!a4)
  {
    a4 = objc_msgSend_ctFont(v9, v10, v11);
  }

  if (*(a1 + 27) == 1)
  {
    a4 = sub_276D35910(a4);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  sub_276D38FF4(a4, v10, v11, &v35);
  v16 = objc_msgSend_characterStyle(v12, v14, v15);
  v17 = sub_276DD2950(v13);
  v18 = sub_276D386B0(v16, v17, 37, 0);

  v21 = v18 != 0;
  if (v18)
  {
    Size = CTFontGetSize(a4);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(a4, Size * 1.5, 0, 0);
    sub_276D38FF4(CopyWithAttributes, v24, v25, &v32);
    v37 = v34[0];
    v38 = v34[1];
    v39 = v34[2];
    v40 = v34[3];
    v35 = v32;
    v36 = v33;
  }

  else
  {
    CopyWithAttributes = 0;
  }

  v26 = objc_msgSend_characterStyle(v12, v19, v20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v35, v36, v37, v38, v39, v40);
  v27 = sub_276DD2950(v13);
  v28 = sub_276D388FC(v26, v27, 34, 0.0);

  if (v28 != 0.0)
  {
    v29 = v34;
    if (v18 == 2)
    {
      if (v28 >= 0.0)
      {
        Descent = CTFontGetDescent(CopyWithAttributes);
        v28 = v28 + CTFontGetDescent(a4) - Descent;
        if (v28 <= 0.0)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (v18 == 1)
      {
        if (v28 <= 0.0)
        {
          CapHeight = CTFontGetCapHeight(CopyWithAttributes);
          v28 = CTFontGetCapHeight(a4) - CapHeight - v28;
          if (v28 <= 0.0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v28 > 0.0)
      {
LABEL_18:
        v29 = &v33;
LABEL_21:
        *v29 = v28;
        goto LABEL_22;
      }

      if (v28 >= 0.0)
      {
LABEL_22:
        v21 = 1;
        goto LABEL_23;
      }
    }

    v28 = -v28;
    goto LABEL_21;
  }

LABEL_23:
  if (CopyWithAttributes)
  {
    CFRelease(CopyWithAttributes);
  }

  if (v21)
  {
    *(a2[28] + 24) |= 0x400uLL;
  }

  sub_276DCABCC(a1, &v35, &v32, a2, a5);
}

uint64_t sub_276DCABCC(uint64_t result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2 + 4;
  v6 = a2[4];
  v7 = a2[2];
  v8 = v7 + v6;
  if (*(result + 27) != 1 || (a5 & 1) != 0)
  {
    v13 = *(result + 168);
    if (v8 >= v13)
    {
      v13 = v7 + v6;
    }

    v14 = v7 + *(a3 + 16);
    a2[2] = v14;
    a2[4] = v6 + *(a3 + 32);
    v12 = (result + 136);
    v8 = *(result + 136);
    *(result + 168) = v13;
    v15 = *(result + 120);
    if (v15 < v14)
    {
      v15 = v14;
    }

    *(result + 120) = v15;
    v9 = 0.0;
  }

  else
  {
    v9 = *(a3 + 16) + v8 * 0.5;
    v10 = v8 * 0.5 + *(a3 + 32);
    v11 = *(result + 120);
    if (v11 < v9)
    {
      v11 = *(a3 + 16) + v8 * 0.5;
    }

    *(result + 120) = v11;
    if (*(result + 136) >= v10)
    {
      v10 = *(result + 136);
    }

    *(result + 136) = v10;
    v5 = (result + 168);
    v12 = (result + 168);
  }

  if (v8 < *v5)
  {
    v8 = *v5;
  }

  *v12 = v8;
  v16 = a2[6];
  v17 = *(result + 160);
  if (*(result + 152) >= v16)
  {
    v16 = *(result + 152);
  }

  *(result + 152) = v16;
  v18 = *(result + 104);
  if (v18 < *a2)
  {
    v18 = *a2;
  }

  *(result + 104) = v18;
  v19 = a2[7];
  if (v17 >= v19)
  {
    v19 = v17;
  }

  *(result + 160) = v19;
  if (v9 == 0.0)
  {
    v9 = a2[2];
  }

  v20 = v9 + a2[5];
  if (*(a4 + 216) >= v20)
  {
    v20 = *(a4 + 216);
  }

  *(a4 + 216) = v20;
  return result;
}

double sub_276DCACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0.0;
  if (sub_276D648F8(a3))
  {
    v6 = sub_276D878D8((a3 + 104), a2);
    v7 = sub_276D648E8(a3);
    if (v7[1] != *v7)
    {
      v8 = 0;
      v9 = 16;
      do
      {
        v10 = (*sub_276D648E8(a3) + v9);
        ascent = 0.0;
        v11 = sub_276DD1F38((v10 - 2));
        CTLineGetTypographicBounds(v11, &ascent, 0, 0);
        if (v5 <= -(v6 + *v10 - ascent))
        {
          v5 = -(v6 + *v10 - ascent);
        }

        ++v8;
        v12 = sub_276D648E8(a3);
        v9 += 104;
      }

      while (v8 < 0x4EC4EC4EC4EC4EC5 * ((v12[1] - *v12) >> 3));
    }
  }

  return v5;
}

double sub_276DCADE8(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 40);
  v6 = sub_276DD2960(a3);
  objc_msgSend_wpBounds(v6, v7, v8);
  v10 = v5 - v9;

  v12 = a1 - v10;
  if (v12 < 0.0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "CGFloat TSWPCoreTextTypesetter::pLineRefStartForLineFragment(const TSWPLayoutState *, const TSWPLineFragment *, CGFloat) const");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 4564, 0, "Negative lineRef start position");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  return v12;
}

BOOL sub_276DCAED4(uint64_t a1, uint64_t a2, void *a3, CTRunRef *a4, uint64_t a5, void *a6, CGGlyph *a7, CGSize *a8)
{
  advances = a8;
  buffer[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v75 = a6;
  StringRange = CTRunGetStringRange(*a4);
  v16 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(*(a1 + 56), StringRange.length, StringRange.location, 0);
  v17 = sub_276DD2950(a2);
  v18 = TSWPResolvePropertyForStyles(v16, v17, 17);
  objc_msgSend_doubleValue(v18, v19, v20);
  v22 = v21;

  v23 = CTRunGetAttributes(*a4);
  v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, *MEMORY[0x277CC4A00]);

  if (!v25)
  {
    goto LABEL_7;
  }

  v77.location = 0;
  v77.length = 1;
  CTRunGetStringIndices(*a4, v77, buffer);
  v26 = *(a1 + 216);
  if (v26 && *(*(a1 + 64) + 2 * buffer[0]) == -4)
  {
    v27 = sub_276DFD178(v26, buffer[0]);
    v28 = v27 != 0;
    if (v16 && v27)
    {
      v29 = sub_276DD2950(a2);
      v30 = TSWPResolvePropertyForStyles(0, v29, 17);
      objc_msgSend_doubleValue(v30, v31, v32);
      v22 = v33;

LABEL_7:
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  v34 = sub_276DD2960(a2);
  v37 = objc_msgSend_scaleTextPercent(v34, v35, v36);

  v39 = CTFontCreateWithName(@"HiraMinProN-W3", v22 * (v37 / 100.0) / 3.0, 0);
  if (v39)
  {
    if (v28)
    {
      objc_opt_class();
      v41 = objc_msgSend_objectForKeyedSubscript_(v23, v40, @"TSWPCharacterFillAttribute");
      v42 = TSUDynamicCast();

      if (!v42 || (objc_msgSend_referenceColor(v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend_CGColor(v45, v46, v47), v45, !v48))
      {
        v48 = objc_msgSend_objectForKeyedSubscript_(v23, v43, *MEMORY[0x277CC49C0], advances);
      }

      objc_msgSend_setFont_(v14, v43, v39, advances);
      objc_msgSend_setColor_(v14, v49, v48);
      v51 = objc_msgSend_characterAtIndex_(v75, v50, 0);
      LOWORD(buffer[0]) = v51;
      v52 = sub_276D3A3AC(*(a1 + 76), *(a1 + 27), 4);
      v54 = v52;
      if (v51 == 65093)
      {
        if (v52 == 2 || *(a1 + 76) == 1)
        {
          v55 = 0;
          LOWORD(buffer[0]) = 8226;
        }

        else
        {
          v55 = 1;
        }
      }

      else
      {
        v55 = 0;
      }

      objc_msgSend_setShouldRotate_(v14, v53, v55 & (*(a5 + 24) >> 13));
      GlyphsForCharacters = CTFontGetGlyphsForCharacters(v39, buffer, a7, 1);
      if (GlyphsForCharacters)
      {
        v66 = objc_msgSend_font(v14, v64, v65);
        CTFontGetAdvancesForGlyphs(v66, kCTFontOrientationDefault, a7, advancesa, 1);
        Ascent = CTFontGetAscent(v39);
        Descent = CTFontGetDescent(v39);
        objc_msgSend_setAscent_descent_advance_(v14, v69, v70, Ascent, Descent, advancesa->width);
        objc_msgSend_setLocation_(v14, v71, v54);
      }
    }

    else
    {
      GlyphsForCharacters = 0;
    }

    CFRelease(v39);
  }

  else
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "BOOL TSWPCoreTextTypesetter::pSetUpEmphasisMarkAdornments(const TSWPLayoutState *, TSWPAdornments *__strong, const CTRunRef &, TSWPLineFragment *, NSString *__strong, CGGlyph &, CGSize &) const");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 4330, 0, "Emphasis marks, no font.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    GlyphsForCharacters = 0;
  }

  return GlyphsForCharacters;
}

double sub_276DCB3D4(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double result)
{
  if ((a3 & 1) == 0 && a5 && !a2 && a6 && a7 && result > 0.0 && a4 && a4 - 1 >= 0)
  {
    v8 = *(a5 + 16 * (a4 - 1)) + *(a6 + 16 * (a4 - 1));
    v9 = 16 * a4 - 16;
    v10 = (a6 + v9);
    v11 = (a5 + v9);
    do
    {
      v12 = v8 - (*v11 + *v10);
      if (v12 >= result)
      {
        break;
      }

      if (*(*(a1 + 64) + 2 * *(a7 - 8 + 8 * a4)) == 9)
      {
        if (v12 >= 0.0)
        {
          return v8 - (*v11 + *v10);
        }

        return result;
      }

      --a4;
      v10 -= 2;
      v11 -= 2;
    }

    while (a4 >= 1);
  }

  return result;
}

void sub_276DCB474(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10)
{
  v20 = a2;
  if ((a6 & 1) != 0 || (sub_276D36B94(a3) & 1) == 0 && (objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v26, v27), v28 = objc_claimAutoreleasedReturnValue(), IsMember = objc_msgSend_characterIsMember_(v28, v29, a3), v28, (IsMember & 1) == 0))
  {
    if (objc_msgSend_location(v20, v18, v19) != 1 || (v31 = *MEMORY[0x277D81490], objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v21, a4, 7, &v31), (v22 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = v31, v22, a4 < v23) || a4 - v23 >= *(&v23 + 1))
    {
      v24 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v21, a4);
      objc_msgSend_addAdornmentWithCharIndex_point_glyph_rect_(v20, v25, v24, a5, a7 + (a9 - a10) * 0.5, 0.0, a7, 0.0, fabs(a9), 1.0);
    }
  }
}

void sub_276DCB5D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, double a6)
{
  v12 = *(a1 + 56);
  if (*(a3 + 24) < 0)
  {
    v13 = MEMORY[0x277D81490];
  }

  else
  {
    v13 = a3;
  }

  v14 = objc_msgSend_charRangeMappedFromStorage_(v12, a2, *v13, v13[1]);
  v16 = v15;
  v18 = *(sub_276D648D0(a3, 0) + 8);
  if (a4 > 11)
  {
    if (a4 > 8231)
    {
      if (a4 == 8232)
      {
        v20 = 0.0;
        v21 = 2;
        goto LABEL_26;
      }

      if (a4 != 8233)
      {
        return;
      }
    }

    else
    {
      if (a4 == 12)
      {
        v20 = 1.0;
        v21 = 4;
        goto LABEL_26;
      }

      if (a4 != 13)
      {
        return;
      }
    }

    goto LABEL_20;
  }

  if ((a4 - 10) < 2)
  {
LABEL_20:
    hasColumnStyleForParagraphBreakAtCharIndex = objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(*(a1 + 56), v17, v16 + v14 - 1);
    if (hasColumnStyleForParagraphBreakAtCharIndex)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.0;
    }

    if (hasColumnStyleForParagraphBreakAtCharIndex)
    {
      v21 = 5;
    }

    else
    {
      v21 = 3;
    }

    goto LABEL_26;
  }

  if (a4 == 4)
  {
    v20 = 2.0;
    v21 = 7;
  }

  else
  {
    if (a4 != 5)
    {
      return;
    }

    v19 = objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(*(a1 + 56), v17, v16 + v14 - 1);
    if (v19)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 2.0;
    }

    if (v19)
    {
      v21 = 5;
    }

    else
    {
      v21 = 6;
    }
  }

LABEL_26:
  if (TSWPParagraphEnumerator::paragraphTextRange((a2 + 24), v17) != *(a3 + 16))
  {
    v25 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(const TSWPLayoutState *, TSWPLineFragment *, unichar, CGFloat, BOOL) const");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v28, v62, v27, 3634, 0, "line fragment isn't from the current paragraph");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  v31 = v18 + a6;
  v32 = (&unk_280A57090 + 40 * v21);
  v33 = v32[1];
  v34 = *(a3 + 24);
  if (fabs(v18 + a6) == INFINITY)
  {
    if ((v34 & 0x1000) == 0)
    {
      v31 = *(a3 + 240) + 0.0;
      goto LABEL_40;
    }

    v35 = 0.0;
    goto LABEL_39;
  }

  if ((v34 & 0x1000) != 0)
  {
    v35 = 0.0;
    if (v31 >= 0.0)
    {
      v35 = v18 + a6;
    }

LABEL_39:
    v31 = v35 - v33;
    goto LABEL_40;
  }

  if ((a5 & 1) == 0 && *(a3 + 56) < v31)
  {
    v31 = *(a3 + 56);
  }

LABEL_40:
  v36 = *(MEMORY[0x277CBF348] + 8);
  if (*(v32 + 2) != 1)
  {
    v38 = (7.0 - v33) * 0.5 + v31;
    goto LABEL_55;
  }

  if ((v34 & 0x1000) != 0)
  {
    v38 = fmin(v31, 0.0);
    v39 = v33 + v31 - (v33 + v38);
    v31 = v33 + v38;
    goto LABEL_49;
  }

  v37 = *(a3 + 56) - v33;
  if (v37 >= v31)
  {
    v38 = v37;
  }

  else
  {
    v38 = v31;
  }

  v39 = v38 - v31;
  if (v38 - v31 >= 0.0)
  {
LABEL_49:
    if (v39 > 0.0)
    {
      if (v20 <= 0.0)
      {
        v40 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void TSWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(const TSWPLayoutState *, TSWPLineFragment *, unichar, CGFloat, BOOL) const");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v63, v42, 3681, 0, "break line has no thickness");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
      }

      if (!qword_280A58348)
      {
        v64 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v23, v24, 0.180392161, 0.533333361, 0.921568632, 1.0);
        v48 = objc_msgSend_CGColor(v64, v46, v47);
        qword_280A58348 = CGColorRetain(v48);
      }

      v49 = [TSWPAdornmentLine alloc];
      started = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_(v49, v50, qword_280A58348, 1, 0, 0, v31, NAN, v39, v20, 0.0);
      sub_276D64E28(a3, started);
    }
  }

LABEL_55:
  v51 = objc_msgSend_invisiblesFont(TSWPRendererUtilities, v23, v24);
  v54 = objc_msgSend_flippedInvisiblesFont(TSWPRendererUtilities, v52, v53);
  v55 = [TSWPAdornments alloc];
  v57 = objc_msgSend_initWithType_color_font_flippedFont_(v55, v56, 2, 0, v51, v54);
  if ((v34 & 0x1000) != 0 && (*(a1 + 27) & 1) == 0)
  {
    v59 = *(v32 + 3);
  }

  else
  {
    v59 = 0;
  }

  v66 = v57;
  objc_msgSend_addAdornmentWithPoint_glyph_flipped_(v57, v58, *(v32 + 16), v59 & 1, v38 - v18, v36);
  sub_276D64E14(a3, v66);
  sub_276D6CB4C(a3, v60, v61);
}

void sub_276DCBAD0()
{
  v0 = objc_alloc(MEMORY[0x277CCA898]);
  v2 = objc_msgSend_initWithString_attributes_(v0, v1, &stru_28860A0F0, 0);
  qword_280A58350 = CTLineCreateWithAttributedString(v2);
}

id sub_276DCBB48(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 240);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAAE8]);
    v11[0] = *MEMORY[0x277CCA3F8];
    v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v11, 1);
    v7 = objc_msgSend_initWithTagSchemes_options_(v3, v6, v5, 22);
    v9 = *(a1 + 240);
    v8 = (a1 + 240);
    *v8 = v7;

    v2 = *v8;
  }

  return v2;
}

void sub_276DCBC34(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v35 = a2;
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v11 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v9, v10);
  v12 = v7 + a3;
  IsMember = objc_msgSend_characterIsMember_(v11, v13, *(*(v8 + 64) + 2 * (v7 + a3)));

  if (v12)
  {
    v17 = IsMember;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v15, v16);
    IsMember = objc_msgSend_characterIsMember_(v18, v19, *(*(v8 + 64) + 2 * v12 - 2));
  }

  if ((IsMember & 1) == 0)
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (*(v8 + 64) + 2 * *(a1 + 64) + 2 * a3), a4, a4, *MEMORY[0x277CBED00]);
    if (MutableWithExternalCharactersNoCopy)
    {
      v21 = MutableWithExternalCharactersNoCopy;
      v24 = v21;
      if (a4 && (a4 == 1 || objc_msgSend_tswp_isLowerCaseFromIndex_(v21, v22, 1)))
      {
        if (v12)
        {
          v25 = v12 - 1;
          if (v12 != 0x8000000000000000)
          {
            do
            {
              v26 = *(*(v8 + 64) + 2 * v25);
              if (objc_msgSend_characterIsMember_(*(a1 + 32), v22, v26))
              {
                break;
              }

              if (objc_msgSend_characterIsMember_(*(a1 + 40), v22, v26))
              {
                v27 = *MEMORY[0x277CCA358] == v35 || *MEMORY[0x277CCA348] == v35;
                v29 = !v27 && *MEMORY[0x277CCA3C0] != v35 || a4 >= 4;
                if (!v29 || (objc_msgSend_tswp_singleRightQuoteCharacterSet(MEMORY[0x277CCA900], v22, v23), v30 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_rangeOfCharacterFromSet_(v24, v31, v30), v30, v32 != 0x7FFFFFFFFFFFFFFFLL))
                {
                  v34 = objc_msgSend_cfLocale(*(a1 + 48), v22, v23);
                  CFStringLowercase(v24, v34);
                  goto LABEL_31;
                }

                break;
              }

              v27 = (v25-- & 0x7FFFFFFFFFFFFFFFLL) == 0;
            }

            while (!v27);
          }
        }

        v33 = objc_msgSend_cfLocale(*(a1 + 48), v22, v23);
        CFStringCapitalize(v24, v33);
      }

LABEL_31:
      CFRelease(v24);
    }
  }
}

uint64_t sub_276DCBE94(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_length(*(a1 + 56), a2, a3);
  if (v5 <= a2)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 64);
  result = *(v7 + 2 * a2);
  if ((a2 + 1) < v6)
  {
    v9 = *(v7 + 2 * (a2 + 1));
    if ((result & 0xFC00) == 0xD800 && (v9 & 0xFC00) == 56320)
    {
      return (v9 + (result << 10) - 56613888);
    }
  }

  return result;
}

void sub_276DCBF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = sub_276D64E0C(a3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v28, v32, 16);
  if (v7)
  {
    v27 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = objc_msgSend_rectCount(v9, v5, v6);
        v13 = objc_msgSend_rects(v9, v11, v12);
LABEL_7:
        while (v10)
        {
          --v10;
          v14 = (v13 + 32 * v10);
          v16 = *v14;
          v15 = v14[1];
          v17 = v14[2];
          v18 = v14[3];
          v19 = v16 + *(sub_276D648D0(a3, 0) + 8);
          v20 = -1;
          v21 = 8;
          while (1)
          {
            v22 = sub_276D648E8(a3);
            if (++v20 >= (0x4EC4EC4EC4EC4EC5 * ((v22[1] - *v22) >> 3)))
            {
              break;
            }

            v23 = *sub_276D648E8(a3);
            v24 = sub_276DD1F38(v23 + v21 - 8);
            v35.size.width = CTLineGetTypographicBounds(v24, 0, 0, 0);
            v35.origin.x = *(v23 + v21);
            v35.origin.y = 0.0;
            v35.size.height = 1.0;
            v34.origin.x = v19;
            v34.origin.y = v15;
            v34.size.width = v17;
            v34.size.height = v18;
            v21 += 104;
            if (CGRectIntersectsRect(v34, v35))
            {
              objc_msgSend_removeAdornmentAt_(v9, v25, v10);
              goto LABEL_7;
            }
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v28, v32, 16);
    }

    while (v7);
  }
}

void sub_276DCC158(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a4;
  v10 = objc_msgSend_invisiblesFont(TSWPRendererUtilities, v8, v9);
  v13 = objc_msgSend_flippedInvisiblesFont(TSWPRendererUtilities, v11, v12);
  v14 = [TSWPAdornments alloc];
  v18 = objc_msgSend_initWithType_color_font_flippedFont_(v14, v15, 6, 0, v10, v13);
  if (v29)
  {
    v19 = objc_msgSend_CGColor(v29, v16, v17);
    objc_msgSend_setColor_(v18, v20, v19);
  }

  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v10, kCTFontOrientationDefault, &word_280A57218, 0, 1);
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  v24 = a1 + *&qword_280A57200 * -0.5;
  if ((*(a3 + 25) & 0x10) != 0)
  {
    v25 = -*(a5 + 8);
    v26 = v24 < v25;
  }

  else
  {
    v25 = *(a3 + 56) - *(a5 + 8) - *&qword_280A57200;
    v26 = v25 < v24;
  }

  if (v26)
  {
    v24 = v25;
  }

  objc_msgSend_addAdornmentWithCharIndex_point_glyph_rect_(v18, v21, 0, word_280A57218, v24, BoundingRectsForGlyphs.size.height * -0.5, x, y, BoundingRectsForGlyphs.size.width, BoundingRectsForGlyphs.size.height);
  if (objc_msgSend_positionCount(v18, v27, v28))
  {
    sub_276D64E14(a3, v18);
  }
}

void sub_276DCC2FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 56), v8, a4);
  v10 = sub_276D648D0(a2, 0);
  sub_276DD1E84(v14, v10);
  v11 = sub_276DD1F38(v14);
  OffsetForStringIndex = CTLineGetOffsetForStringIndex(v11, v9, 0);
  sub_276DCC158(OffsetForStringIndex, v13, a2, v7, v14);
  sub_276DD1EBC(v14);
}

double sub_276DCC3B8(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = 0;
  if (objc_msgSend_lineRef(v1, v2, v3))
  {
    v6 = objc_msgSend_lineRef(v1, v4, v5);
    TypographicBounds = CTLineGetTypographicBounds(v6, &v10, &v11, 0);
  }

  else
  {
    TypographicBounds = 0.0;
  }

  v9 = TypographicBounds;

  return v9;
}

double sub_276DCC438(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_attachment(v1, v2, v3);
  v7 = v4;
  v8 = 0.0;
  if (v4)
  {
    if (objc_msgSend_isDrawable(v4, v5, v6))
    {
      if (objc_msgSend_isPartitioned(v7, v9, v10))
      {
        v8 = 1.0e10;
        goto LABEL_15;
      }

      if (objc_msgSend_isAnchored(v7, v11, v12))
      {
        goto LABEL_15;
      }

      isWithinVerticalText = objc_msgSend_isWithinVerticalText(v1, v19, v20);
      v16 = objc_msgSend_layout(v1, v22, v23);
      objc_msgSend_alignmentFrameForInlineLayout(v16, v24, v25);
      if (isWithinVerticalText)
      {
        v8 = v27;
      }

      else
      {
        v8 = v26;
      }
    }

    else
    {
      objc_opt_class();
      v13 = TSUDynamicCast();
      v16 = v13;
      if (v13)
      {
        objc_msgSend_size(v13, v14, v15);
        v8 = v17;
      }

      objc_opt_class();
      v18 = TSUDynamicCast();
      if (v18)
      {
        v8 = sub_276DCC3B8(v1);
      }
    }
  }

LABEL_15:

  return v8;
}

double sub_276DCC624(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_adornment(a1, a2, a3);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_heightInfo(v3, v4, v5);
    v7 = v9;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

double sub_276DCC690(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_adornment(a1, a2, a3);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_heightInfo(v3, v4, v5);
    v7 = v9;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

double sub_276DCC6FC(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_adornment(v1, v2, v3);
  v7 = objc_msgSend_characterRange(v1, v5, v6);
  if (v4)
  {
    v9 = v8;
    objc_msgSend_widthForCharacterAtIndex_(v4, v8, v7);
    v11 = v10 / v9;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

void sub_276DCC794(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, @"-—–‐‒−﹣－﹘");
  v3 = qword_280A58360;
  qword_280A58360 = v2;
}

void sub_276DCC7DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D80828];
  v4 = sub_276E32640(a1, a2, a3);
  v6 = objc_msgSend_URLForResource_withExtension_(v4, v5, @"fallback-image-bullet", @"pdf");
  v12 = objc_msgSend_readOnlyDataFromURL_(v3, v7, v6);

  v8 = objc_alloc(MEMORY[0x277D80370]);
  v10 = objc_msgSend_initWithImageData_(v8, v9, v12);
  v11 = qword_280A58370;
  qword_280A58370 = v10;
}

void sub_276DCC8B8()
{
  if (!qword_280A58380)
  {
    qword_280A58380 = CTFontCreateWithName(@"Helvetica", 1.0, 0);
  }
}

void sub_276DCC8F8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276DCC978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276DCC98C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276DCC98C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_276DFB4C8();
    MEMORY[0x277CA3D00](v3, 0x10F0C409C8A449ALL);
  }

  return a1;
}

void sub_276DCC9D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276DCCA10(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_276DFB4C8();

    JUMPOUT(0x277CA3D00);
  }

  return result;
}

uint64_t sub_276DCCA54(uint64_t a1, uint64_t a2)
{
  if (sub_276D5F174(a2, &unk_2885FED68))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_276DCCA94(void *result, unint64_t a2)
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

void sub_276DCCAF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276DCCCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSWPDrawableAttachment;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276DCD53C(uint64_t a1, void *a2)
{
  v18 = a2;
  v6 = objc_msgSend_owningAttachmentNoRecurse(v18, v4, v5);

  if (v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPDrawableAttachment loadMessage:fromUnarchiver:]_block_invoke");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    v13 = objc_msgSend_p_stringForNoOwningAttachmentAssertionForDrawable_(*(a1 + 32), v12, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v11, 183, 0, "For loaded attachment: %{public}@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    objc_msgSend_setOwningAttachment_(*(*(a1 + 32) + 72), v17, *(a1 + 32));
  }
}

void sub_276DCD658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

double sub_276DCD694(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    if (objc_msgSend_isAnchored(*(a1 + 32), a2, a3))
    {
      v4 = objc_opt_class();
      if (objc_msgSend_canPartitionInline(v4, v5, v6))
      {
        objc_msgSend_willModifyForUpgrade(*(a1 + 32), v7, v8);
        v10 = objc_msgSend_exteriorTextWrapWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(MEMORY[0x277D80240], v9, 0, 0, 2, 0, 0.0, 0.5);
        objc_msgSend_setExteriorTextWrap_(*(*(a1 + 32) + 72), v11, v10);
      }
    }
  }

  return *(*(a1 + 32) + 112);
}

id sub_276DCF544(void *a1, const char *a2, uint64_t a3, double a4)
{
  v6 = objc_msgSend_info(a1, a2, a3);
  v9 = objc_msgSend_owningAttachmentNoRecurse(v6, v7, v8);
  isAnchored = objc_msgSend_isAnchored(v9, v10, v11);

  if (isAnchored)
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = objc_msgSend_performSelector_(a1, v13, sel_stroke);
      v18 = v15;
      if (!v15)
      {
        v24 = 0.0;
        goto LABEL_10;
      }

      objc_msgSend_outsets(v15, v16, v17);
    }

    else
    {
      v20 = objc_msgSend_info(a1, v13, v14);
      v21 = objc_opt_respondsToSelector();

      v24 = 0.0;
      if ((v21 & 1) == 0)
      {
LABEL_11:
        a4 = a4 - v24;
        goto LABEL_12;
      }

      v25 = objc_msgSend_info(a1, v22, v23);
      v18 = objc_msgSend_performSelector_(v25, v26, sel_stroke);

      if (!v18)
      {
LABEL_10:

        goto LABEL_11;
      }

      objc_msgSend_outsets(v18, v27, v28);
    }

    v24 = v19;
    goto LABEL_10;
  }

LABEL_12:
  v30.receiver = a1;
  v30.super_class = TSDLayout_0;
  return objc_msgSendSuper2(&v30, sel_setInterimPositionX_, a4);
}

id sub_276DCF6A8(void *a1, const char *a2, uint64_t a3, double a4)
{
  v6 = objc_msgSend_info(a1, a2, a3);
  v9 = objc_msgSend_owningAttachmentNoRecurse(v6, v7, v8);
  isAnchored = objc_msgSend_isAnchored(v9, v10, v11);

  if (isAnchored)
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = objc_msgSend_performSelector_(a1, v13, sel_stroke);
      v18 = v15;
      if (!v15)
      {
        v24 = 0.0;
        goto LABEL_10;
      }

      objc_msgSend_outsets(v15, v16, v17);
    }

    else
    {
      v20 = objc_msgSend_info(a1, v13, v14);
      v21 = objc_opt_respondsToSelector();

      v24 = 0.0;
      if ((v21 & 1) == 0)
      {
LABEL_11:
        a4 = a4 - v24;
        goto LABEL_12;
      }

      v25 = objc_msgSend_info(a1, v22, v23);
      v18 = objc_msgSend_performSelector_(v25, v26, sel_stroke);

      if (!v18)
      {
LABEL_10:

        goto LABEL_11;
      }

      objc_msgSend_outsets(v18, v27, v28);
    }

    v24 = v19;
    goto LABEL_10;
  }

LABEL_12:
  v30.receiver = a1;
  v30.super_class = TSDLayout_0;
  return objc_msgSendSuper2(&v30, sel_setInterimPositionY_, a4);
}

void *sub_276DCF878(uint64_t a1, unsigned __int8 a2)
{
  result = TSWPAttributeArray::TSWPAttributeArray(a1, a2);
  *result = &unk_2885FED90;
  return result;
}

void sub_276DCF8B8(TSWPAttributeArray *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  if (a3 && a2 != 0x7FFFFFFFFFFFFFFFLL && a5)
  {
    v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
    sub_276DCF9E4(a1, v13, a2, a3, a7);
    v14 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3 + a2 - 1);
    sub_276DCF9E4(a1, v14, a2, a3, a7);
    sub_276DCFAEC(a1, a2, a3, a7);
  }

  else
  {
    sub_276EF99FC(a1, a2, a3, v15, a5, a6, a7);
  }
}

void sub_276DCF9E4(TSWPAttributeArray *a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = TSWPAttributeArray::objectForAttributeIndex(a1, a2);

  if (!v10)
  {
    return;
  }

  v11 = TSWPAttributeArray::rangeForAttributeIndex(a1, a2);
  v13 = a3 + a4;
  v14 = v11 + v12;
  if (a3 > v11)
  {
    if (v13 < v14)
    {
      return;
    }

    v15 = *(a1->var0 + 4);
    goto LABEL_8;
  }

  v15 = *(a1->var0 + 4);
  if (v13 < v14)
  {
LABEL_8:
    v18 = a1;
    v16 = a3;
    v17 = a4;
    goto LABEL_9;
  }

  v16 = v11;
  v17 = v12;
  v18 = a1;
LABEL_9:

  v15(v18, 0, v16, v17, 0, a5);
}

unint64_t sub_276DCFAEC(TSWPAttributeArray *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
  result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3 + a2 - 1);
  if (v8 + 1 < result)
  {
    v10 = result;
    v11 = TSWPAttributeArray::rangeForAttributeIndex(a1, (v8 + 1));
    v13 = v12;
    v19.location = TSWPAttributeArray::rangeForAttributeIndex(a1, (v10 - 1));
    v19.length = v14;
    v18.location = v11;
    v18.length = v13;
    v15 = NSUnionRange(v18, v19);
    v16 = *(a1->var0 + 4);

    return v16(a1, 0, v15.location, v15.length, 0, a4);
  }

  return result;
}

void sub_276DCFBE8(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = *(a2 + 456);
    if (v4)
    {
      v5 = *(a2 + 464);
      if (v5)
      {
        sub_276F407C4(v8, v5, v3);
        v6 = v4[1];
        if (v6 >= v4[2])
        {
          v7 = sub_276DCFD04(v4, v8);
        }

        else
        {
          sub_276F406BC(v4[1], v8);
          v7 = v6 + 48;
          v4[1] = v6 + 48;
        }

        v4[1] = v7;
        sub_276F40794(v8);
      }
    }
  }
}

void sub_276DCFC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F40794(&a9);

  _Unwind_Resume(a1);
}

void sub_276DCFCB4(TSWPAttributeArray *a1)
{
  sub_276EF8828(a1);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276DCFD04(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_276D34ED8();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_276DCFE34(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  sub_276F406BC(48 * v2, a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  sub_276DCFE8C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_276DCFF30(&v13);
  return v12;
}

void sub_276DCFE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276DCFF30(va);
  _Unwind_Resume(a1);
}

void sub_276DCFE34(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276DCFE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276F406BC(a4, v8);
      v8 += 48;
      a4 += 48;
      v7 -= 48;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276F40794(v6);
      v6 += 48;
    }
  }

  return result;
}

void sub_276DCFF0C(_Unwind_Exception *exception_object)
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

uint64_t sub_276DCFF30(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_276F40794(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276DCFF80(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = [TSWPDirtyRangeArray alloc];
  sub_276E30470(a6, a7, 0, v19);
  v18 = objc_msgSend_initWithDirtyRange_(v16, v17, v19);
  sub_276D7454C(a1, v13, v14, v15, a6, a5, v18, 0, 0x7FFFFFFFFFFFFFFFLL);
}

void sub_276DD00BC(uint64_t a1)
{
  sub_276D749A8(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276DD00F4(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5, void *a6, unint64_t a7, uint64_t a8)
{
  v15 = a2;
  v16 = a6;
  *(a1 + 888) = v15;
  v39 = v16;
  v19 = objc_msgSend_columns(v15, v17, v18);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, a3);

  v38 = v21;
  started = objc_msgSend_startCharIndex(v21, v22, v23);
  sub_276D754E4(a1, v15, a3, started, v16, a5 | 0x8000);
  v37 = a5;
  if (!a3)
  {
    *(a1 + 928) = 0;
  }

  hasTrackedChanges = objc_msgSend_hasTrackedChanges(*(a1 + 8), v25, v26);
  *(a1 + 648) = 1;
  if (a7 < a7 + a8)
  {
    v29 = hasTrackedChanges;
    do
    {
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      v31 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(*(a1 + 8), v28, a7, &v40);
      if (!v29 || (objc_msgSend_hasHiddenTextAtCharIndex_(*(a1 + 8), v30, v40) & 1) == 0)
      {
        v32 = sub_276DD2A08(a1 + 80);
        v35 = objc_msgSend_containedStorage(v31, v33, v34);
        objc_msgSend_addFootnoteReferenceStorage_(v32, v36, v35);
      }

      ++a7;
      --a8;
    }

    while (a8);
  }

  sub_276D7AF98(a1, v37 | 0x8000, a3, a4, v15);
  sub_276DD2A30(a1 + 80, 0);
}

void sub_276DD0794(uint64_t a1, char *__s)
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

void sub_276DD088C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276DD0AD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = sub_276E32640(a1, a2, a3);
  v5 = objc_msgSend_pathForResource_ofType_(v3, v4, @"invisible_glyphs", @"ttf");

  if (v5)
  {
    v44 = v5;
    v6 = sub_276DFA52C();
    v7 = v5;
    v10 = objc_msgSend_UTF8String(v7, v8, v9);
    v11 = CGDataProviderCreateWithFilename(v10);
    v12 = CGFontCreateWithDataProvider(v11);
    CGDataProviderRelease(v11);
    v14 = 0x277D81000uLL;
    if (!v12)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSWPRendererUtilities invisiblesFont]_block_invoke");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 28, 0, "invalid nil value for '%{public}s'", "invisibleCGFont");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    qword_280A58390 = CTFontCreateWithGraphicsFont(v12, v6, 0, 0);
    if (qword_280A58390 || (v23 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSWPRendererUtilities invisiblesFont]_block_invoke"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities.mm"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 30, 0, "invalid nil value for '%{public}s'", "sInvisibleFont"), v26, v24, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29), qword_280A58390))
    {
      v30 = 0;
      UnitsPerEm = CGFontGetUnitsPerEm(v12);
      v32 = v6 * CGFontGetAscent(v12) / UnitsPerEm;
      v33 = v6 * -CGFontGetDescent(v12) / UnitsPerEm;
      v34 = &word_280A570B0;
      do
      {
        CTFontGetGlyphsForCharacters(qword_280A58390, v34 - 16, v34, 1);
        advances = 0;
        if (!CGFontGetGlyphAdvances(v12, v34, 1uLL, &advances))
        {
          v36 = *(v14 + 336);
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSWPRendererUtilities invisiblesFont]_block_invoke");
          v38 = v14;
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 41, 0, "CGFontGetGlyphAdvances failed for %u", v30);

          v14 = v38;
          objc_msgSend_logBacktraceThrottled(*(v38 + 336), v42, v43);
        }

        *(v34 - 3) = v6 * advances / UnitsPerEm;
        *(v34 - 2) = v32;
        *(v34 - 1) = v33;
        ++v30;
        v34 += 20;
      }

      while (v30 != 10);
    }

    v5 = v44;
    CGFontRelease(v12);
  }
}

CTFontRef sub_276DD0EE0(uint64_t a1)
{
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v4 = objc_msgSend_invisiblesFont(*(a1 + 32), v2, v3);
  Size = CTFontGetSize(v4);
  result = CTFontCreateCopyWithAttributes(v4, Size, &v7, 0);
  qword_280A583A0 = result;
  return result;
}

void sub_276DD1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276DD1088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_url(a2, a2, a3);
  LODWORD(v7) = objc_msgSend_isEqual_(v7, v9, v8);

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void sub_276DD1C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276E3EAC4(va);

  _Unwind_Resume(a1);
}

uint64_t sub_276DD1DC0(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *a1 = cf;
  *(a1 + 8) = a6;
  *(a1 + 16) = a7;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  v8 = MEMORY[0x277CBF2C0];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *(a1 + 48) = *MEMORY[0x277CBF2C0];
  *(a1 + 64) = v9;
  *(a1 + 80) = *(v8 + 32);
  *(a1 + 96) = a5;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t sub_276DD1E20(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 48) = v4;
  *(a1 + 96) = *(a2 + 96);
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **sub_276DD1E88(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_276DD1EC0(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = *a2;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 48) = v4;
  return a1;
}

void sub_276DD20AC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_280A583B0;
  qword_280A583B0 = v1;
}

uint64_t sub_276DD24D4(uint64_t a1)
{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((a1 + 24));
  bzero(a1, 0x310uLL);
  return a1;
}

uint64_t sub_276DD250C(uint64_t a1, uint64_t a2)
{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((a1 + 24));
  bzero(a1, 0x310uLL);
  sub_276DD25C0(a1, a2);
  return a1;
}

void sub_276DD25C0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a1 + 16) = v6;
    objc_storeStrong((a1 + 24), v5);
    objc_storeStrong((a1 + 32), *(a2 + 32));
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    v9 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v9;
    *(a1 + 56) = v8;
    *(a1 + 40) = v7;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 256) = *(a2 + 256);
    *&v10 = *(a2 + 344);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = v10;
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 392) = *(a2 + 392);
    *(a1 + 396) = *(a2 + 396);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 425) = *(a2 + 425);
    *(a1 + 426) = *(a2 + 426);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 449) = *(a2 + 449);
    v11 = *(a2 + 472);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 472) = v11;
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);
    v12 = *(a2 + 520);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 520) = v12;
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 540) = *(a2 + 540);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 586) = *(a2 + 586);
    *(a1 + 585) = *(a2 + 585);
    objc_storeStrong((a1 + 592), *(a2 + 592));
    objc_storeStrong((a1 + 600), *(a2 + 600));
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = *(a2 + 624);
    objc_storeStrong((a1 + 648), *(a2 + 648));
    *(a1 + 656) = *(a2 + 656);
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 704) = *(a2 + 704);
    objc_storeStrong((a1 + 712), *(a2 + 712));
    objc_storeStrong((a1 + 720), *(a2 + 720));
    objc_storeStrong((a1 + 736), *(a2 + 736));
    objc_storeStrong((a1 + 744), *(a2 + 744));
    v13 = *(a2 + 768);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = v13;
    objc_storeStrong((a1 + 776), *(a2 + 776));
    v16 = objc_msgSend_mutableCopy(*(a2 + 728), v14, v15);
    v17 = *(a1 + 728);
    *(a1 + 728) = v16;
  }
}

void sub_276DD2A50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 728);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(a1 + 728);
    *(a1 + 728) = v5;

    v4 = *(a1 + 728);
    v3 = v7;
  }

  objc_msgSend_addObject_(v4, v3, v3);
}

void sub_276DD2ADC(uint64_t a1)
{
  v1 = *(a1 + 728);
  *(a1 + 728) = 0;
}

uint64_t sub_276DD2B28(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 760) = a2;
  *(result + 768) = a3;
  return result;
}

void sub_276DD2F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_276DD2F84(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_276DD3B28(result, a2);
    }

    sub_276D34ED8();
  }

  return result;
}

void sub_276DD3044(uint64_t a1, __int128 *a2)
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
      sub_276DD3B28(a1, v11);
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

void sub_276DD348C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276DD3B28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_276D34F38();
}

__n128 sub_276DD3B80(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u64[1];
  n128_f64 = a2[-3].n128_f64;
  v11 = &a2[-5].n128_f64[1];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v76 = a2[-2].n128_f64[1];
        v71 = (a2 - 24);
        result.n128_f64[0] = v76;
        if (v76 >= *v12)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 3);
      v78 = v12[3];
      v79 = (v12 + 6);
      v80 = v12[6];
      if (v78 >= *v12)
      {
        if (v80 < v78)
        {
          v84 = *(v12 + 5);
          result = *v70;
          *v70 = *v79;
          v12[5] = v12[8];
          *v79 = result;
          *(v12 + 8) = v84;
          if (v12[3] < *v12)
          {
            v140 = *(v12 + 2);
            v112 = *v12;
            *v12 = *v70;
            v12[2] = v12[5];
            *v70 = v112;
            *(v12 + 5) = v140;
          }
        }
      }

      else
      {
        if (v80 < v78)
        {
          v139 = *(v12 + 2);
          v111 = *v12;
          *v12 = *v79;
          v12[2] = v12[8];
          *v79 = v111;
          v81 = v139;
          goto LABEL_102;
        }

        v141 = *(v12 + 2);
        v114 = *v12;
        *v12 = *v70;
        v12[2] = v12[5];
        *v70 = v114;
        *(v12 + 5) = v141;
        if (v80 < v12[3])
        {
          v81 = *(v12 + 5);
          result = *v70;
          *v70 = *v79;
          v12[5] = v12[8];
          *v79 = result;
LABEL_102:
          *(v12 + 8) = v81;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v79->n128_f64[0])
      {
        return result;
      }

      v88 = *(v12 + 8);
      result = *v79;
      v89 = a2[-1].n128_u64[1];
      *v79 = *v9;
      *(v12 + 8) = v89;
      *v9 = result;
      a2[-1].n128_u64[1] = v88;
      result.n128_u64[0] = v79->n128_u64[0];
      if (v79->n128_f64[0] >= v70->n128_f64[0])
      {
        return result;
      }

      v90 = *(v12 + 5);
      result = *v70;
      *v70 = *v79;
      v12[5] = v12[8];
      *v79 = result;
      *(v12 + 8) = v90;
LABEL_106:
      result.n128_f64[0] = v12[3];
      if (result.n128_f64[0] < *v12)
      {
        v142 = *(v12 + 2);
        v115 = *v12;
        *v12 = *v70;
        v12[2] = v70[1].n128_f64[0];
        result = v115;
        *v70 = v115;
        v70[1].n128_u64[0] = v142;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = sub_276DD4708(v12, (v12 + 3), v12 + 3, (v12 + 9), &a2[-2].n128_u64[1], result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        sub_276DD4950(v12, a2);
      }

      else if (v12 != a2)
      {
        v85 = v12 + 3;
        while (v85 != a2)
        {
          v86 = v85;
          result.n128_u64[0] = a1[1].n128_u64[1];
          if (result.n128_f64[0] < a1->n128_f64[0])
          {
            v113 = a1[2];
            do
            {
              *v85 = *(v85 - 3);
              v85[2] = *(v85 - 1);
              v87 = *(v85 - 6);
              v85 -= 3;
            }

            while (result.n128_f64[0] < v87);
            *v85 = result.n128_f64[0];
            result = v113;
            *(v85 + 1) = v113;
          }

          v85 = &v86[1].n128_f64[1];
          a1 = v86;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_276DD5030(v12, a2, a2, a3, result);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[3 * (v16 >> 1)];
    v19 = *v9;
    if (v15 >= 0xC01)
    {
      v20 = v18->n128_f64[0];
      if (v18->n128_f64[0] >= *v12)
      {
        if (v19 < v20)
        {
          v118 = v18[1].n128_u64[0];
          v94 = *v18;
          v24 = *v9;
          v18[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v18 = v24;
          *v9 = v94;
          a2[-1].n128_u64[1] = v118;
          if (v18->n128_f64[0] < *v12)
          {
            v119 = *(v12 + 2);
            v95 = *v12;
            v25 = *v18;
            v12[2] = v18[1].n128_f64[0];
            *v12 = v25;
            v18[1].n128_u64[0] = v119;
            *v18 = v95;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v116 = *(v12 + 2);
          v92 = *v12;
          v21 = *v9;
          v12[2] = a2[-1].n128_f64[1];
          *v12 = v21;
          goto LABEL_27;
        }

        v122 = *(v12 + 2);
        v98 = *v12;
        v28 = *v18;
        v12[2] = v18[1].n128_f64[0];
        *v12 = v28;
        v18[1].n128_u64[0] = v122;
        *v18 = v98;
        if (*v9 < v18->n128_f64[0])
        {
          v116 = v18[1].n128_u64[0];
          v92 = *v18;
          v29 = *v9;
          v18[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v18 = v29;
LABEL_27:
          *v9 = v92;
          a2[-1].n128_u64[1] = v116;
        }
      }

      v30 = (v12 + 3);
      v31 = &v12[3 * v17];
      v33 = *(v31 - 3);
      v32 = (v31 - 3);
      v34 = v33;
      v35 = *n128_f64;
      if (v33 >= v12[3])
      {
        if (v35 < v34)
        {
          v123 = v32[1].n128_u64[0];
          v99 = *v32;
          v39 = *n128_f64;
          v32[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v32 = v39;
          *n128_f64 = v99;
          a2[-2].n128_u64[0] = v123;
          if (v32->n128_f64[0] < v30->n128_f64[0])
          {
            v40 = *v30;
            v124 = *(v12 + 5);
            v41 = v32[1].n128_i64[0];
            *v30 = *v32;
            *(v12 + 5) = v41;
            v32[1].n128_u64[0] = v124;
            *v32 = v40;
          }
        }
      }

      else if (v35 >= v34)
      {
        v44 = *v30;
        v126 = *(v12 + 5);
        v45 = v32[1].n128_i64[0];
        *v30 = *v32;
        *(v12 + 5) = v45;
        v32[1].n128_u64[0] = v126;
        *v32 = v44;
        if (*n128_f64 < v32->n128_f64[0])
        {
          v127 = v32[1].n128_u64[0];
          v101 = *v32;
          v46 = *n128_f64;
          v32[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v32 = v46;
          *n128_f64 = v101;
          a2[-2].n128_u64[0] = v127;
        }
      }

      else
      {
        v36 = *(v12 + 5);
        v37 = *v30;
        v38 = a2[-2].n128_u64[0];
        *v30 = *n128_f64;
        *(v12 + 5) = v38;
        *n128_f64 = v37;
        a2[-2].n128_u64[0] = v36;
      }

      v47 = (v12 + 6);
      v48 = &v12[3 * v17];
      v50 = v48[3];
      v49 = (v48 + 3);
      v51 = v50;
      v52 = *v11;
      if (v50 >= v12[6])
      {
        if (v52 < v51)
        {
          v128 = v49[1].n128_u64[0];
          v102 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v56;
          *v11 = v102;
          a2[-4].n128_u64[1] = v128;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v129 = *(v12 + 8);
            v58 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 8) = v58;
            v49[1].n128_u64[0] = v129;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v51)
      {
        v59 = *v47;
        v130 = *(v12 + 8);
        v60 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 8) = v60;
        v49[1].n128_u64[0] = v130;
        *v49 = v59;
        if (*v11 < v49->n128_f64[0])
        {
          v131 = v49[1].n128_u64[0];
          v103 = *v49;
          v61 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v61;
          *v11 = v103;
          a2[-4].n128_u64[1] = v131;
        }
      }

      else
      {
        v53 = *(v12 + 8);
        v54 = *v47;
        v55 = a2[-4].n128_u64[1];
        *v47 = *v11;
        *(v12 + 8) = v55;
        *v11 = v54;
        a2[-4].n128_u64[1] = v53;
      }

      v62 = v18->n128_f64[0];
      v63 = v49->n128_f64[0];
      if (v18->n128_f64[0] >= v32->n128_f64[0])
      {
        if (v63 < v62)
        {
          v133 = v18[1].n128_u64[0];
          v105 = *v18;
          *v18 = *v49;
          v18[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v133;
          *v49 = v105;
          if (v18->n128_f64[0] < v32->n128_f64[0])
          {
            v134 = v32[1].n128_u64[0];
            v106 = *v32;
            *v32 = *v18;
            v32[1].n128_u64[0] = v18[1].n128_u64[0];
            v18[1].n128_u64[0] = v134;
            *v18 = v106;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v132 = v32[1].n128_u64[0];
          v104 = *v32;
          *v32 = *v49;
          v32[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_55;
        }

        v135 = v32[1].n128_u64[0];
        v107 = *v32;
        *v32 = *v18;
        v32[1].n128_u64[0] = v18[1].n128_u64[0];
        v18[1].n128_u64[0] = v135;
        *v18 = v107;
        if (v49->n128_f64[0] < v18->n128_f64[0])
        {
          v132 = v18[1].n128_u64[0];
          v104 = *v18;
          *v18 = *v49;
          v18[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_55:
          v49[1].n128_u64[0] = v132;
          *v49 = v104;
        }
      }

      v136 = *(v12 + 2);
      v108 = *v12;
      v64 = *v18;
      v12[2] = v18[1].n128_f64[0];
      *v12 = v64;
      v18[1].n128_u64[0] = v136;
      *v18 = v108;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v12 >= v18->n128_f64[0])
    {
      if (v19 < v22)
      {
        v120 = *(v12 + 2);
        v96 = *v12;
        v26 = *v9;
        v12[2] = a2[-1].n128_f64[1];
        *v12 = v26;
        *v9 = v96;
        a2[-1].n128_u64[1] = v120;
        if (*v12 < v18->n128_f64[0])
        {
          v121 = v18[1].n128_u64[0];
          v97 = *v18;
          v27 = *v12;
          v18[1].n128_f64[0] = v12[2];
          *v18 = v27;
          *(v12 + 2) = v121;
          *v12 = v97;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v117 = v18[1].n128_u64[0];
        v93 = *v18;
        v23 = *v9;
        v18[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v18 = v23;
LABEL_36:
        *v9 = v93;
        a2[-1].n128_u64[1] = v117;
        goto LABEL_57;
      }

      v125 = v18[1].n128_u64[0];
      v100 = *v18;
      v42 = *v12;
      v18[1].n128_f64[0] = v12[2];
      *v18 = v42;
      *(v12 + 2) = v125;
      *v12 = v100;
      if (*v9 < *v12)
      {
        v117 = *(v12 + 2);
        v93 = *v12;
        v43 = *v9;
        v12[2] = a2[-1].n128_f64[1];
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 3) >= *v12)
    {
      v12 = sub_276DD49F0(v12, a2->n128_f64);
      goto LABEL_64;
    }

    v65 = sub_276DD4AD8(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = sub_276DD4BC0(v12, v65, v66);
    v12 = (v65 + 24);
    if (sub_276DD4BC0(v65 + 24, a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      sub_276DD3B80(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 24);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 3);
  result.n128_f64[0] = v12[3];
  v72 = a2[-2].n128_f64[1];
  v71 = (a2 - 24);
  v73 = v72;
  if (result.n128_f64[0] >= *v12)
  {
    if (v73 >= result.n128_f64[0])
    {
      return result;
    }

    v82 = *(v12 + 5);
    result = *v70;
    v83 = v71[1].n128_u64[0];
    *v70 = *v71;
    *(v12 + 5) = v83;
    *v71 = result;
    v71[1].n128_u64[0] = v82;
    goto LABEL_106;
  }

  if (v73 < result.n128_f64[0])
  {
LABEL_75:
    v138 = *(v12 + 2);
    v110 = *v12;
    v77 = *v71;
    v12[2] = v71[1].n128_f64[0];
    *v12 = v77;
    result = v110;
    *v71 = v110;
    v71[1].n128_u64[0] = v138;
    return result;
  }

  v137 = *(v12 + 2);
  v109 = *v12;
  *v12 = *v70;
  v12[2] = v12[5];
  *v70 = v109;
  *(v12 + 5) = v137;
  result.n128_u64[0] = v71->n128_u64[0];
  if (v71->n128_f64[0] < v12[3])
  {
    v74 = *(v12 + 5);
    result = *v70;
    v75 = v71[1].n128_u64[0];
    *v70 = *v71;
    *(v12 + 5) = v75;
    *v71 = result;
    v71[1].n128_u64[0] = v74;
  }

  return result;
}

__n128 sub_276DD4708(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

uint64_t sub_276DD4950(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (v6 < *v4)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (v6 >= *(v8 - 24))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

double *sub_276DD49F0(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 3))
  {
    v5 = (a1 + 3);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 = (v5 + 24);
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v14 = *(v3 + 2);
    v13 = *v3;
    v7 = *a2;
    v3[2] = a2[2];
    *v3 = v7;
    *(a2 + 2) = v14;
    *a2 = v13;
    do
    {
      v8 = v3[3];
      v3 += 3;
    }

    while (v2 >= v8);
    do
    {
      v9 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v9);
  }

  if (v3 - 3 != a1)
  {
    v10 = *(v3 - 3);
    a1[2] = *(v3 - 1);
    *a1 = v10;
  }

  *(v3 - 3) = v2;
  *(v3 - 1) = v12;
  return v3;
}

uint64_t sub_276DD4AD8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = *(a1 + v2 + 24);
    v2 += 24;
  }

  while (v4 < v3);
  v5 = a1 + v2;
  if (v2 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v6 >= v3);
  }

  v8 = (a1 + v2);
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = *(v8 + 2);
      v12 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 2) = v12;
      *(v9 + 16) = v11;
      *v9 = v10;
      do
      {
        v13 = *(v8 + 3);
        v8 = (v8 + 24);
      }

      while (v13 < v3);
      do
      {
        v14 = *(v9 - 24);
        v9 -= 24;
      }

      while (v14 >= v3);
    }

    while (v8 < v9);
  }

  if ((v8 - 24) != a1)
  {
    v15 = *(v8 - 24);
    *(a1 + 16) = *(v8 - 1);
    *a1 = v15;
  }

  *(v8 - 3) = v3;
  *(v8 - 1) = v17;
  return v8 - 24;
}

BOOL sub_276DD4BC0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_276DD4708(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_276DD5030(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = sub_276DD523C(a1, a5, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if (v14->n128_f64[0] < *a1)
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = *(a1 + 16);
          *v14 = *a1;
          v14[1].n128_u64[0] = v17;
          *a1 = v16;
          *(a1 + 16) = v15;
          sub_276DD523C(a1, v16, a4, v10, a1);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      do
      {
        v19 = 0;
        v31 = *a1;
        v32 = *(a1 + 16);
        v20 = a1;
        do
        {
          v21 = v20;
          v22 = v20 + 24 * v19;
          v20 = v22 + 24;
          v23 = 2 * v19;
          v19 = (2 * v19) | 1;
          v24 = v23 + 2;
          if (v24 < v18)
          {
            v26 = *(v22 + 48);
            v25 = v22 + 48;
            if (*(v25 - 24) < v26)
            {
              v20 = v25;
              v19 = v24;
            }
          }

          v27 = *v20;
          v21[1].n128_u64[0] = *(v20 + 16);
          *v21 = v27;
        }

        while (v19 <= ((v18 - 2) >> 1));
        v7 = (v7 - 24);
        if (v20 == v7)
        {
          *(v20 + 16) = v32;
          *v20 = v31;
        }

        else
        {
          v28 = *v7;
          *(v20 + 16) = v7[1].n128_u64[0];
          *v20 = v28;
          *v7 = v31;
          v7[1].n128_u64[0] = v32;
          sub_276DD533C(a1, v20 + 24, v31, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 sub_276DD523C(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    if (v5 >= (0xAAAAAAAAAAAAAAABLL * ((a5 - a1) >> 3)))
    {
      v6 = (0x5555555555555556 * ((a5 - a1) >> 3)) | 1;
      v7 = (a1 + 24 * v6);
      if (0x5555555555555556 * ((a5 - a1) >> 3) + 2 < a4 && *v7 < *(v7 + 3))
      {
        v7 = (v7 + 24);
        v6 = 0x5555555555555556 * ((a5 - a1) >> 3) + 2;
      }

      result.n128_u64[0] = *a5;
      if (*v7 >= *a5)
      {
        v12 = *(a5 + 8);
        do
        {
          v8 = a5;
          a5 = v7;
          v9 = *v7;
          *(v8 + 2) = *(v7 + 2);
          *v8 = v9;
          if (v5 < v6)
          {
            break;
          }

          v10 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (a1 + 24 * v6);
          v11 = v10 + 2;
          if (v11 < a4 && *v7 < *(v7 + 3))
          {
            v7 = (v7 + 24);
            v6 = v11;
          }
        }

        while (*v7 >= result.n128_f64[0]);
        *a5 = result.n128_u64[0];
        result = v12;
        *(a5 + 8) = v12;
      }
    }
  }

  return result;
}

__n128 sub_276DD533C(uint64_t a1, uint64_t a2, __n128 result, uint64_t a4, uint64_t a5)
{
  if (a5 >= 2)
  {
    v5 = (a5 - 2) >> 1;
    v6 = (a1 + 24 * v5);
    v7 = (a2 - 24);
    result.n128_u64[0] = *(a2 - 24);
    if (*v6 < result.n128_f64[0])
    {
      v10 = *(a2 - 16);
      do
      {
        v8 = v7;
        v7 = v6;
        v9 = *v6;
        *(v8 + 2) = *(v6 + 2);
        *v8 = v9;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 24 * v5);
      }

      while (*v6 < result.n128_f64[0]);
      *v7 = result.n128_u64[0];
      result = v10;
      *(v7 + 8) = v10;
    }
  }

  return result;
}

void sub_276DD56A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276DD5750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276DD5768(uint64_t a1, void *a2)
{
  v13 = a2;
  v5 = objc_msgSend_defaultParagraphStyle(v13, v3, v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = objc_msgSend_defaultListStyle(v13, v8, v9);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_276DD596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276DD6010(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_276DD6108(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
  v4 = *(a1 + 32);
  v10 = objc_msgSend_presetKind(v4, v5, v6);
  isEqual = objc_msgSend_isEqual_(v10, v7, *MEMORY[0x277D80BB8]);
  objc_msgSend_setIsTextBoxForPersistence_(v4, v9, isEqual);
}

id sub_276DD651C(void *a1)
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

    v4 = MEMORY[0x277CA3130](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSWPShapeInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

uint64_t sub_276DD66EC(uint64_t result, const char *a2, uint64_t a3)
{
  if (*(result + 40) < *MEMORY[0x277D80988])
  {
    result = objc_msgSend_has_30356142_build(*(result + 32), a2, a3);
    if (result)
    {
      v4 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v3, @"Corrupt document", @"Potentially corrupt storage was edited with rdar://30356142 do not use this document", 0);;
      objc_exception_throw(v4);
    }
  }

  return result;
}

void sub_276DD6DC4(TSWPAttributeArray *a1)
{
  sub_276EF8828(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276DD78E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_276DD7900(uint64_t a1, char *__s)
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

void sub_276DD79F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276DD8058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSWPFlowInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_276DD856C(uint64_t a1, const char *a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], a2, a3, 0.482352941, 0.768627451, 0.341176471, 1.0);
  v39[0] = v3;
  v6 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v4, v5, 0.988235294, 0.298039216, 0.458823529, 1.0);
  v39[1] = v6;
  v9 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v7, v8, 0.250980392, 0.650980392, 0.949019608, 1.0);
  v39[2] = v9;
  v12 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v10, v11, 0.984313725, 0.623529412, 0.301960784, 1.0);
  v39[3] = v12;
  v15 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v13, v14, 0.933333333, 0.568627451, 0.874509804, 1.0);
  v39[4] = v15;
  v18 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v16, v17, 0.423529412, 0.792156863, 0.709803922, 1.0);
  v39[5] = v18;
  v21 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v19, v20, 0.701960784, 0.560784314, 0.925490196, 1.0);
  v39[6] = v21;
  v24 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v22, v23, 0.729411765, 0.466666667, 0.423529412, 1.0);
  v39[7] = v24;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v39, 8);
  v27 = qword_280A583C0;
  qword_280A583C0 = v26;

  result = objc_msgSend_count(qword_280A583C0, v28, v29);
  if (result != 8)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "+[TSWPFlowInfo p_colorForIndex:]_block_invoke");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 97, 0, "unexpected value for TSWPFlowInfoMaxUserInterfaceIdentifier");

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  return result;
}

uint64_t sub_276DD8A50(uint64_t a1, const char *a2)
{
  v56[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v54 = objc_msgSend_p_colorForIndex_(v3, a2, 0);
  v56[0] = objc_msgSend_p_darkColorForColor_(v3, v4, v54);
  v5 = *(a1 + 32);
  v53 = v56[0];
  v52 = objc_msgSend_p_colorForIndex_(v5, v6, 1);
  v51 = objc_msgSend_p_darkColorForColor_(v5, v7, v52);
  v56[1] = v51;
  v8 = *(a1 + 32);
  v50 = objc_msgSend_p_colorForIndex_(v8, v9, 2);
  v49 = objc_msgSend_p_darkColorForColor_(v8, v10, v50);
  v56[2] = v49;
  v11 = *(a1 + 32);
  v48 = objc_msgSend_p_colorForIndex_(v11, v12, 3);
  v14 = objc_msgSend_p_darkColorForColor_(v11, v13, v48);
  v56[3] = v14;
  v15 = *(a1 + 32);
  v17 = objc_msgSend_p_colorForIndex_(v15, v16, 4);
  v19 = objc_msgSend_p_darkColorForColor_(v15, v18, v17);
  v56[4] = v19;
  v20 = *(a1 + 32);
  v22 = objc_msgSend_p_colorForIndex_(v20, v21, 5);
  v24 = objc_msgSend_p_darkColorForColor_(v20, v23, v22);
  v56[5] = v24;
  v25 = *(a1 + 32);
  v27 = objc_msgSend_p_colorForIndex_(v25, v26, 6);
  v29 = objc_msgSend_p_darkColorForColor_(v25, v28, v27);
  v56[6] = v29;
  v30 = *(a1 + 32);
  v32 = objc_msgSend_p_colorForIndex_(v30, v31, 7);
  v34 = objc_msgSend_p_darkColorForColor_(v30, v33, v32);
  v56[7] = v34;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v56, 8);
  v37 = qword_280A583D0;
  qword_280A583D0 = v36;

  result = objc_msgSend_count(qword_280A583D0, v38, v39);
  if (result != 8)
  {
    v42 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSWPFlowInfo p_darkColorForIndex:]_block_invoke");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v45, v55, v44, 122, 0, "unexpected value for TSWPFlowInfoMaxUserInterfaceIdentifier");

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  }

  return result;
}

void sub_276DD93EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276DDAE38(uint64_t a1, char *__s)
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

void sub_276DDAF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSWPRegisterPersistentClasses(void *a1)
{
  v152 = a1;
  v1 = TSWP::StorageArchive::default_instance(v152);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v2, 2001, v1, off_2812DC408[18], "TSWPStorage");
  v4 = TSWP::SelectionArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v5, 2002, v4, *off_2812DC408, "TSWPArchivedSelection");
  v7 = TSWP::DrawableAttachmentArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v8, 2003, v7, off_2812DC408[128], "TSWPDrawableAttachment");
  v10 = TSWP::TextualAttachmentArchive::default_instance(v9);
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v11, 2004, v10, off_2812DC408[122], "TSWPTextualAttachment");
  v13 = TSWP::StorageArchive::default_instance(v12);
  v15 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v152, v14, 2005, v13, "TSWPStorage");
  v16 = TSWP::UIGraphicalAttachment::default_instance(v15);
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v17, 2006, v16, off_2812DC408[126], "TSWPUIGraphicalAttachment");
  v19 = TSWP::TextualAttachmentArchive::default_instance(v18);
  v21 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v152, v20, 2007, v19, "TSWPTextualAttachment");
  v22 = TSWP::FootnoteReferenceAttachmentArchive::default_instance(v21);
  google::protobuf::internal::AssignDescriptors();
  v24 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v23, 2008, v22, off_2812DC408[132], "TSWPFootnoteReferenceAttachment");
  v25 = TSWP::TextualAttachmentArchive::default_instance(v24);
  v27 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v152, v26, 2009, v25, "TSWPTextualAttachment");
  v28 = TSWP::TSWPTOCPageNumberAttachmentArchive::default_instance(v27);
  google::protobuf::internal::AssignDescriptors();
  v30 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v29, 2010, v28, off_2812DC408[124], "TSWPTOCPageNumberAttachment");
  v31 = TSWP::ShapeInfoArchive::default_instance(v30);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v32, 2011, v31, off_2812DC408[112], "TSWPShapeInfo");
  v34 = objc_msgSend_setDeprecatedMessageType_(v152, v33, 2012);
  v35 = TSWP::HighlightArchive::default_instance(v34);
  google::protobuf::internal::AssignDescriptors();
  v37 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v36, 2013, v35, off_2812DC408[20], "TSWPHighlight");
  v38 = TSWP::CommentInfoArchive::default_instance(v37);
  google::protobuf::internal::AssignDescriptors();
  v40 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v39, 2014, v38, off_2812DC408[114], "TSWPFloatingCommentInfo");
  v41 = TSWP::EquationInfoArchive::default_instance(v40);
  google::protobuf::internal::AssignDescriptors();
  v43 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v42, 2015, v41, off_2812DC408[120], "TSWPEquationInfo");
  v44 = TSWP::PencilAnnotationArchive::default_instance(v43);
  google::protobuf::internal::AssignDescriptors();
  v46 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v45, 2016, v44, off_2812DC408[22], "TSWPPencilAnnotation");
  v47 = TSWP::CharacterStyleArchive::default_instance(v46);
  google::protobuf::internal::AssignDescriptors();
  v49 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v48, 2021, v47, off_2812DC408[28], "TSWPCharacterStyle");
  v50 = TSWP::ParagraphStyleArchive::default_instance(v49);
  google::protobuf::internal::AssignDescriptors();
  v52 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v51, 2022, v50, off_2812DC408[38], "TSWPParagraphStyle");
  v53 = TSWP::ListStyleArchive::default_instance(v52);
  google::protobuf::internal::AssignDescriptors();
  v55 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v54, 2023, v53, off_2812DC408[44], "TSWPListStyle");
  v56 = TSWP::ColumnStyleArchive::default_instance(v55);
  google::protobuf::internal::AssignDescriptors();
  v58 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v57, 2024, v56, off_2812DC408[60], "TSWPColumnStyle");
  v59 = TSWP::ShapeStyleArchive::default_instance(v58);
  google::protobuf::internal::AssignDescriptors();
  v61 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v60, 2025, v59, off_2812DC408[64], "TSWPShapeStyle");
  v62 = TSWP::TOCEntryStyleArchive::default_instance(v61);
  google::protobuf::internal::AssignDescriptors();
  v64 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v63, 2026, v62, off_2812DC408[72], "TSWPTOCEntryStyle");
  v65 = TSWP::PlaceholderSmartFieldArchive::default_instance(v64);
  google::protobuf::internal::AssignDescriptors();
  v67 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v66, 2031, v65, off_2812DC408[140], "TSWPPlaceholderSmartField");
  v68 = TSWP::HyperlinkFieldArchive::default_instance(v67);
  google::protobuf::internal::AssignDescriptors();
  v70 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v69, 2032, v68, off_2812DC408[138], "TSWPHyperlinkField");
  v71 = TSWP::FilenameSmartFieldArchive::default_instance(v70);
  google::protobuf::internal::AssignDescriptors();
  v73 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v72, 2033, v71, off_2812DC408[154], "TSWPFilenameSmartField");
  v74 = TSWP::DateTimeSmartFieldArchive::default_instance(v73);
  google::protobuf::internal::AssignDescriptors();
  v76 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v75, 2034, v74, off_2812DC408[150], "TSWPDateTimeSmartField");
  v77 = TSWP::BookmarkFieldArchive::default_instance(v76);
  google::protobuf::internal::AssignDescriptors();
  v79 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v78, 2035, v77, off_2812DC408[152], "TSWPBookmarkField");
  v80 = TSWP::MergeSmartFieldArchive::default_instance(v79);
  google::protobuf::internal::AssignDescriptors();
  v82 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v81, 2036, v80, off_2812DC408[158], "TSWPMergeSmartField");
  v83 = TSWP::CitationRecordArchive::default_instance(v82);
  google::protobuf::internal::AssignDescriptors();
  v85 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v84, 2037, v83, off_2812DC408[146], "TSWPCitationRecord");
  v86 = TSWP::CitationSmartFieldArchive::default_instance(v85);
  google::protobuf::internal::AssignDescriptors();
  v88 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v87, 2038, v86, off_2812DC408[148], "TSWPCitationSmartField");
  v89 = TSWP::UnsupportedHyperlinkFieldArchive::default_instance(v88);
  google::protobuf::internal::AssignDescriptors();
  v91 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v90, 2039, v89, off_2812DC408[142], "TSWPUnsupportedHyperlinkField");
  v92 = TSWP::BibliographySmartFieldArchive::default_instance(v91);
  google::protobuf::internal::AssignDescriptors();
  v94 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v93, 2040, v92, off_2812DC408[144], "TSWPBibliographySmartField");
  v95 = TSWP::TOCSmartFieldArchive::default_instance(v94);
  google::protobuf::internal::AssignDescriptors();
  v97 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v96, 2041, v95, off_2812DC408[162], "TSWPTOCSmartField");
  v98 = TSWP::RubyFieldArchive::default_instance(v97);
  google::protobuf::internal::AssignDescriptors();
  v100 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v99, 2042, v98, off_2812DC408[164], "TSWPRubyField");
  v101 = TSWP::NumberAttachmentArchive::default_instance(v100);
  google::protobuf::internal::AssignDescriptors();
  v103 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v102, 2043, v101, off_2812DC408[134], "TSWPNumberAttachment");
  v104 = TSWP::TextStylePresetArchive::default_instance(v103);
  google::protobuf::internal::AssignDescriptors();
  v106 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v105, 2050, v104, off_2812DC408[46], "TSWPTextStylePreset");
  v107 = TSWP::TOCSettingsArchive::default_instance(v106);
  google::protobuf::internal::AssignDescriptors();
  v109 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v108, 2051, v107, off_2812DC408[76], "TSWPTOCSettings");
  v110 = TSWP::TOCEntryInstanceArchive::default_instance(v109);
  google::protobuf::internal::AssignDescriptors();
  v112 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v111, 2052, v110, off_2812DC408[78], "TSWPTOCEntryData");
  v113 = TSWP::ChangeArchive::default_instance(v112);
  google::protobuf::internal::AssignDescriptors();
  v115 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v114, 2060, v113, off_2812DC408[168], "TSWPChange");
  v116 = TSK::DeprecatedChangeAuthorArchive::default_instance(v115);
  v118 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v152, v117, 2061, v116, "TSKAnnotationAuthor");
  v119 = TSWP::ChangeSessionArchive::default_instance(v118);
  google::protobuf::internal::AssignDescriptors();
  v121 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v120, 2062, v119, off_2812DC408[170], "TSWPChangeSession");
  v122 = TSWP::TOCInfoArchive::default_instance(v121);
  google::protobuf::internal::AssignDescriptors();
  v124 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v123, 2240, v122, off_2812DC408[116], "TSWPTOCInfo");
  v125 = TSWP::TOCAttachmentArchive::default_instance(v124);
  google::protobuf::internal::AssignDescriptors();
  v127 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v126, 2241, v125, off_2812DC408[130], "TSWPTOCAttachment");
  v128 = TSWP::TOCLayoutHintArchive::default_instance(v127);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v129, 2242, v128, off_2812DC408[118], "TSWPTOCArchivedLayoutHint");
  v131 = objc_msgSend_setDeprecatedMessageType_(v152, v130, 2300);
  v132 = TSWP::HyperlinkSelectionArchive::default_instance(v131);
  google::protobuf::internal::AssignDescriptors();
  v134 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v133, 2409, v132, off_2812DC408[174], "TSWPArchivedHyperlinkSelection");
  v135 = TSWP::FlowInfoArchive::default_instance(v134);
  google::protobuf::internal::AssignDescriptors();
  v137 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v136, 2410, v135, off_2812DC408[178], "TSWPFlowInfo");
  v138 = TSWP::FlowInfoContainerArchive::default_instance(v137);
  google::protobuf::internal::AssignDescriptors();
  v140 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v139, 2411, v138, off_2812DC408[180], "TSWPFlowInfoContainer");
  v141 = TSWP::DateTimeSelectionArchive::default_instance(v140);
  google::protobuf::internal::AssignDescriptors();
  v143 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v142, 2413, v141, off_2812DC408[176], "TSWPArchivedDateTimeSelection");
  v144 = TSWP::SectionPlaceholderArchive::default_instance(v143);
  google::protobuf::internal::AssignDescriptors();
  v146 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v145, 10011, v144, off_2812DC408[172], "TSWPSectionPlaceholder");
  v147 = TSWP::TateChuYokoFieldArchive::default_instance(v146);
  google::protobuf::internal::AssignDescriptors();
  v149 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v148, 10023, v147, off_2812DC408[166], "TSWPTateChuYokoField");
  v150 = TSWP::DropCapStyleArchive::default_instance(v149);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v152, v151, 10024, v150, off_2812DC408[186], "TSWPDropCapStyle");
}

void sub_276DDBA1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  if (Message[6] >= 1)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_276DDBF44;
    v43[3] = &unk_27A6F4740;
    v43[4] = a1;
    v9 = v5;
    v10 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v9, v11, (Message + 4), v10, 0, v43);
  }

  if (Message[12] >= 1)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_276DDBF5C;
    v42[3] = &unk_27A6F4740;
    v42[4] = a1;
    v12 = v5;
    v13 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v12, v14, (Message + 10), v13, 0, v42);
  }

  if (Message[18] >= 1)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_276DDBF74;
    v41[3] = &unk_27A6F4740;
    v41[4] = a1;
    v15 = v5;
    v16 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v15, v17, (Message + 16), v16, 0, v41);
  }

  if (Message[24] >= 1)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_276DDBF8C;
    v40[3] = &unk_27A6F4740;
    v40[4] = a1;
    v18 = v5;
    v19 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v18, v20, (Message + 22), v19, 0, v40);
  }

  if (Message[30] >= 1)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_276DDBFA4;
    v39[3] = &unk_27A6F4740;
    v39[4] = a1;
    v21 = v5;
    v22 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v21, v23, (Message + 28), v22, 0, v39);
  }

  if (Message[36] >= 1)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_276DDBFBC;
    v38[3] = &unk_27A6F4740;
    v38[4] = a1;
    v24 = v5;
    v25 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v24, v26, (Message + 34), v25, 0, v38);
  }

  if (Message[42] >= 1)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_276DDBFD4;
    v37[3] = &unk_27A6F4740;
    v37[4] = a1;
    v27 = v5;
    v28 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v27, v29, (Message + 40), v28, 0, v37);
  }

  if (Message[48] >= 1)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_276DDBFEC;
    v36[3] = &unk_27A6F4740;
    v36[4] = a1;
    v30 = v5;
    v31 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v30, v32, (Message + 46), v31, 0, v36);
  }

  if (objc_msgSend_preUFFVersion(v5, v6, v7) <= 0x2CBDA3F53)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_276DDC004;
    v35[3] = &unk_27A6F46E8;
    v35[4] = a1;
    objc_msgSend_addFinalizeHandler_(v5, v33, v35);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_276DDC428;
  v34[3] = &unk_27A6F46E8;
  v34[4] = a1;
  objc_msgSend_addFinalizeHandler_(v5, v33, v34);
}

void sub_276DDC004(uint64_t a1, const char *a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_legacyStylesheet(*(a1 + 32), a2, a3);
  objc_msgSend_willModifyForUpgrade(v3, v4, v5);

  v8 = objc_msgSend_legacyStylesheet(*(a1 + 32), v6, v7);
  objc_msgSend_setIsLocked_(v8, v9, 0);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v11 = objc_msgSend_presetsOfKind_(*(a1 + 32), v10, *MEMORY[0x277D80BB0]);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v72, v77, 16);
  if (v15)
  {
    v16 = *v73;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v72 + 1) + 8 * i);
        v21 = objc_msgSend_presetIdentifier(v18, v13, v14);
        if (v21)
        {
          v22 = objc_msgSend_paragraphStyle(v18, v19, v20);
          v25 = objc_msgSend_styleIdentifier(v22, v23, v24);
          v26 = String();
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28)
          {
            v31 = String();
            if (v31)
            {
              v32 = objc_msgSend_stylesheet(v22, v29, v30);
              objc_msgSend_willModifyForUpgrade(v32, v33, v34);
              objc_msgSend_willModifyForUpgrade(v22, v35, v36);
              objc_msgSend_setIdentifier_ofStyle_(v32, v37, v31, v22);
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v72, v77, 16);
    }

    while (v15);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = objc_msgSend_presetsOfKind_(*(a1 + 32), v38, *MEMORY[0x277D80B58]);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v68, v76, 16);
  if (v43)
  {
    v44 = *v69;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v68 + 1) + 8 * j);
        v49 = objc_msgSend_name(v46, v41, v42);
        if (v49)
        {
          v50 = objc_msgSend_styleIdentifier(v46, v47, v48);
          v51 = String();
          v52 = v51;
          if (v50)
          {
            v53 = v51 == 0;
          }

          else
          {
            v53 = 1;
          }

          if (!v53)
          {
            v56 = String();
            if (v56)
            {
              v57 = objc_msgSend_stylesheet(v46, v54, v55);
              objc_msgSend_willModifyForUpgrade(v57, v58, v59);
              objc_msgSend_willModifyForUpgrade(*(a1 + 32), v60, v61);
              objc_msgSend_setIdentifier_ofStyle_(v57, v62, v56, v46);
            }
          }
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v68, v76, 16);
    }

    while (v43);
  }

  v65 = objc_msgSend_legacyStylesheet(*(a1 + 32), v63, v64);
  objc_msgSend_setIsLocked_(v65, v66, 1);
}

uint64_t sub_276DDC428(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_createCommentInfoStyleIfNeeded(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_defaultEquationStyle(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_defaultDropCapStyle(*(a1 + 32), v7, v8);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v11, sel_createDefaultDropCapPresetsIfNeeded, v10);
}

void sub_276DDC484(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = a4;
  TSWP::ThemePresetsArchive::default_instance(v31);
  v5 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v6 = *MEMORY[0x277D80B58];
  if (objc_msgSend_hasPresetsOfKind_(a1, v7, *MEMORY[0x277D80B58]))
  {
    v9 = objc_msgSend_presetsOfKind_(a1, v8, v6);
    objc_msgSend_setStrongReferenceArray_message_(v31, v10, v9, v5 + 16);
  }

  v11 = *MEMORY[0x277D80B90];
  if (objc_msgSend_hasPresetsOfKind_(a1, v8, *MEMORY[0x277D80B90]))
  {
    v13 = objc_msgSend_presetsOfKind_(a1, v12, v11);
    objc_msgSend_setStrongReferenceArray_message_(v31, v14, v13, v5 + 88);
  }

  v15 = *MEMORY[0x277D80B98];
  if (objc_msgSend_hasPresetsOfKind_(a1, v12, *MEMORY[0x277D80B98]))
  {
    v17 = objc_msgSend_presetsOfKind_(a1, v16, v15);
    objc_msgSend_setStrongReferenceArray_message_(v31, v18, v17, v5 + 112);
  }

  v19 = *MEMORY[0x277D80B00];
  if (objc_msgSend_hasPresetsOfKind_(a1, v16, *MEMORY[0x277D80B00]))
  {
    v21 = objc_msgSend_presetsOfKind_(a1, v20, v19);
    objc_msgSend_setStrongReferenceArray_message_(v31, v22, v21, v5 + 136);
  }

  v23 = *MEMORY[0x277D80B70];
  if (objc_msgSend_hasPresetsOfKind_(a1, v20, *MEMORY[0x277D80B70]))
  {
    v25 = objc_msgSend_presetsOfKind_(a1, v24, v23);
    objc_msgSend_setStrongReferenceArray_message_(v31, v26, v25, v5 + 160);
  }

  v27 = *MEMORY[0x277D80B20];
  if (objc_msgSend_hasPresetsOfKind_(a1, v24, *MEMORY[0x277D80B20]))
  {
    v29 = objc_msgSend_presetsOfKind_(a1, v28, v27);
    objc_msgSend_setStrongReferenceArray_message_(v31, v30, v29, v5 + 184);
  }
}

id sub_276DDC9B0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_paragraphStylesWithContentTag_(a1, a2, a3);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_276DDCA14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_documentStylesheet(a1, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276DDCAE4;
  v12[3] = &unk_27A6F4768;
  v13 = v4;
  v8 = v4;
  v10 = objc_msgSend_stylesPassingTest_(v7, v9, v12);

  return v10;
}

uint64_t sub_276DDCAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4) && objc_msgSend_isIdentified(v3, v6, v7))
  {
    v10 = objc_msgSend_contentTag(v3, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *(a1 + 32));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

id sub_276DDCB6C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_documentStylesheet(a1, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276DDCC3C;
  v12[3] = &unk_27A6F4768;
  v13 = v4;
  v8 = v4;
  v10 = objc_msgSend_stylesPassingTest_(v7, v9, v12);

  return v10;
}

BOOL sub_276DDCC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4) && objc_msgSend_isIdentified(v3, v6, v7))
  {
    v10 = objc_msgSend_contentTag(v3, v8, v9);
    v12 = v10;
    if (v10)
    {
      v13 = objc_msgSend_rangeOfString_(v10, v11, *(a1 + 32)) != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void *sub_276DDCCDC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v4;
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSTheme(TSWPAdditions) paragraphPresetStyles]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 69, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v8 = 0;
  }

  v9 = objc_opt_class();
  v11 = objc_msgSend_namedStylesOfClass_(v8, v10, v9);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;

  return v13;
}

id sub_276DDCDDC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__defaultCharacterStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultCharacterStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 76, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__defaultCharacterStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

id sub_276DDCEC4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__hyperlinkStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) hyperlinkStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 82, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__hyperlinkStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

id sub_276DDCFAC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__defaultParagraphStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultParagraphStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 88, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__defaultParagraphStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

id sub_276DDD094(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__defaultListStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultListStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 94, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__defaultListStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

id sub_276DDD17C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__defaultColumnStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultColumnStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 100, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__defaultColumnStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

id sub_276DDD264(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__defaultTOCEntryStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultTOCEntryStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 106, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__defaultTOCEntryStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

id sub_276DDD34C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend_defaultEquationStyle(v4, v5, v6);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultEquationStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 112, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend_defaultEquationStyle(0, v17, v18);
  }
  v8 = ;

  return v8;
}

id sub_276DDD430(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  if (v4 || (objc_msgSend_legacyStylesheet(a1, v5, v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    objc_msgSend__defaultDropCapStyleWasCreated_(v4, v5, 0);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme(TSWPAdditions) defaultDropCapStyle]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 118, 0, "stylesheet must not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v7 = 0;
    objc_msgSend__defaultDropCapStyleWasCreated_(0, v17, 0);
  }
  v8 = ;

  return v8;
}

void sub_276DDD520(void *a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_hyperlinkStyle(a1, a2, a3);
  v5 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v3, v4, 0.0, 0.0, 0.6, 1.0);
  objc_msgSend_setValue_forProperty_(v7, v6, v5, 48);
}

void sub_276DDD5DC(void *a1, const char *a2)
{
  v3 = *MEMORY[0x277D80B20];
  v4 = objc_msgSend_presetsOfKind_(a1, a2, *MEMORY[0x277D80B20]);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276DDD720;
    v20[3] = &unk_27A6F47B0;
    v20[4] = a1;
    objc_msgSend_upgradeStylesWithBlock_(a1, v8, v20);
  }

  v9 = objc_msgSend_presetsOfKind_(a1, v8, v3);
  if (!objc_msgSend_count(v9, v10, v11))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSSTheme(TSWPAdditions) createDefaultDropCapPresetsIfNeeded]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 256, 0, "No drop cap presets.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }
}

void sub_276DDD720(uint64_t a1, void *a2)
{
  v131 = a2;
  v4 = sub_276E32640(v131, v2, v3);
  v6 = objc_msgSend_pathForResource_ofType_(v4, v5, @"TSWPDropCapPresets", @"plist");

  v7 = objc_alloc(MEMORY[0x277CBEA60]);
  v10 = objc_msgSend_initWithContentsOfFile_(v7, v8, v6);
  if (v10)
  {
    v112 = v6;
    v11 = objc_opt_new();
    if (objc_msgSend_count(v10, v12, v13))
    {
      v15 = 0;
      v113 = *MEMORY[0x277D80B88];
      v114 = *MEMORY[0x277D80B70];
      v119 = v11;
      v120 = v10;
      do
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(v10, v14, v15);
        v129 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"numberOfLines");
        v20 = objc_msgSend_unsignedIntegerValue(v129, v18, v19);
        v128 = objc_msgSend_objectForKeyedSubscript_(v16, v21, @"numberOfRaisedLines");
        v24 = objc_msgSend_unsignedIntegerValue(v128, v22, v23);
        v127 = objc_msgSend_objectForKeyedSubscript_(v16, v25, @"numberOfCharacters");
        v28 = objc_msgSend_unsignedIntegerValue(v127, v26, v27);
        v126 = objc_msgSend_objectForKeyedSubscript_(v16, v29, @"outdent");
        objc_msgSend_tsu_CGFloatValue(v126, v30, v31);
        v33 = v32;
        v125 = objc_msgSend_objectForKeyedSubscript_(v16, v34, @"shapeEnabled");
        v37 = objc_msgSend_BOOLValue(v125, v35, v36);
        v124 = objc_msgSend_objectForKeyedSubscript_(v16, v38, @"cornerRadius");
        objc_msgSend_tsu_CGFloatValue(v124, v39, v40);
        v42 = v41;
        v123 = objc_msgSend_objectForKeyedSubscript_(v16, v43, @"characterScale");
        objc_msgSend_tsu_CGFloatValue(v123, v44, v45);
        v47 = v46;
        v49 = objc_msgSend_objectForKeyedSubscript_(v16, v48, @"wrapType");
        v52 = objc_msgSend_unsignedIntegerValue(v49, v50, v51);
        if (v52 == 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2 * (v52 == 2);
        }

        v56 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v53, v54);
        v130 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v57, 16, 19, 20, 38, 40, 43, 45, 48, 49, 50, 0);
        if (!v15)
        {
          goto LABEL_24;
        }

        v121 = v55;
        v122 = v37;
        if (v37)
        {
          v118 = v28;
          objc_opt_class();
          v61 = objc_msgSend_presetsOfKind_(*(a1 + 32), v60, v113);
          v64 = objc_msgSend_firstObject(v61, v62, v63);
          v65 = TSUDynamicCast();

          if (!v65)
          {
            v28 = v118;
LABEL_22:
            v37 = v37;
            v55 = v121;
            goto LABEL_23;
          }

          v115 = v20;
          objc_opt_class();
          v67 = objc_msgSend_valueForProperty_(v65, v66, 189);
          v68 = TSUDynamicCast();

          if (v68)
          {
            v70 = objc_msgSend_valuesForProperties_(v68, v69, v130);
            objc_msgSend_addValuesFromPropertyMap_(v56, v71, v70);
          }

          objc_opt_class();
          v73 = objc_msgSend_valueForProperty_(v65, v72, 517);
          v74 = TSUDynamicCast();

          if (v74)
          {
            objc_msgSend_setObject_forProperty_(v56, v75, v74, 258);
          }

          objc_opt_class();
          v77 = objc_msgSend_valueForProperty_(v65, v76, 516);
          v78 = TSUDynamicCast();

          if (v78)
          {
            objc_msgSend_setObject_forProperty_(v56, v79, v78, 257);
          }

          v20 = v115;
        }

        else
        {
          v116 = v24;
          v80 = v49;
          v81 = v20;
          objc_opt_class();
          v83 = objc_msgSend_presetsOfKind_(*(a1 + 32), v82, v114);
          v86 = objc_msgSend_firstObject(v83, v84, v85);
          v65 = TSUDynamicCast();

          if (!v65)
          {
            v20 = v81;
            v49 = v80;
            v24 = v116;
            goto LABEL_22;
          }

          v118 = v28;
          v68 = objc_msgSend_valuesForProperties_(v65, v87, v130);
          objc_msgSend_addValuesFromPropertyMap_(v56, v88, v68);
          v20 = v81;
          v49 = v80;
          v24 = v116;
        }

        v37 = v122;
        v55 = v121;

        v28 = v118;
LABEL_23:

LABEL_24:
        v89 = objc_msgSend_context(v131, v58, v59);
        v90 = [TSWPDropCap alloc];
        v92 = objc_msgSend_initWithType_numberOfLines_numberOfRaisedLines_outdent_padding_shapeEnabled_cornerRadius_characterScale_wrapType_numberOfCharacters_(v90, v91, 0, v20, v24, v37, v55, v28, v33, 0.0, v42, v47);
        objc_msgSend_setObject_forProperty_(v56, v93, v92, 256);
        v95 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v94, @"dropcap-style-%lu", v15);
        objc_opt_class();
        v97 = objc_msgSend_styleWithIdentifier_(v131, v96, v95);
        isVariation = TSUDynamicCast();

        if (!isVariation)
        {
          v100 = [TSWPDropCapStyle alloc];
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v100, v101, v89, 0, v56, 0);
          objc_msgSend_addStyle_withIdentifier_(v131, v102, isVariation, v95);
        }

        v11 = v119;
        objc_msgSend_addObject_(v119, v99, isVariation);

        ++v15;
        v10 = v120;
      }

      while (v15 < objc_msgSend_count(v120, v103, v104));
    }

    objc_msgSend_setPresets_ofKind_(*(a1 + 32), v14, v11, *MEMORY[0x277D80B20]);
    v6 = v112;
  }

  else
  {
    v105 = MEMORY[0x277D81150];
    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSSTheme(TSWPAdditions) createDefaultDropCapPresetsIfNeeded]_block_invoke");
    v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v109, v106, v108, 148, 0, "invalid nil value for '%{public}s'", "presetDescriptions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111);
    v11 = objc_opt_new();
  }
}

id sub_276DDDE24(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentStylesheet(a1, a2, a3);
  v6 = objc_msgSend_styleWithIdentifier_(v4, v5, @"toc-entry-style-default");

  v9 = objc_msgSend_defaultParagraphStyle(a1, v7, v8);
  v12 = objc_msgSend_defaultCharacterStyle(a1, v10, v11);
  v15 = objc_msgSend_defaultListStyle(a1, v13, v14);
  v19 = objc_msgSend_hyperlinkStyle(a1, v16, v17);
  if (v9)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSSTheme(TSWPAdditions) undeletableStyles]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 271, 0, "invalid nil value for '%{public}s'", "defaultCharacterStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSSTheme(TSWPAdditions) undeletableStyles]");
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 270, 0, "invalid nil value for '%{public}s'", "defaultParagraphStyle");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_9:
  v36 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSSTheme(TSWPAdditions) undeletableStyles]");
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 272, 0, "invalid nil value for '%{public}s'", "defaultListStyle");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
LABEL_4:
  v20 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v18, v9, v12, v15, v19, v6, 0);

  return v20;
}

id sub_276DDE0A0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_documentStylesheet(a1, a2, a3);
  v5 = objc_msgSend_styleWithIdentifier_(v3, v4, @"character-style-null");

  if (!v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSSTheme(TSWPAdditions) unmodifiableStyles]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 282, 0, "invalid nil value for '%{public}s'", "defaultCharacterStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v6, v5, 0);

  return v14;
}

void sub_276DDE1AC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v143[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_set(MEMORY[0x277CBEB58], v8, v9);
  v12 = objc_msgSend_modelEnumeratorWithFlags_(v7, v11, 2);
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = sub_276DDE874;
  v138[3] = &unk_27A6F47D8;
  v13 = v10;
  v139 = v13;
  objc_msgSend_enumerateStyleClientsUsingBlock_(v12, v14, v138);

  v15 = MEMORY[0x277CBEB58];
  v18 = objc_msgSend_documentStylesheet(a1, v16, v17);
  v21 = objc_msgSend_styles(v18, v19, v20);
  v23 = objc_msgSend_setWithSet_(v15, v22, v21);

  if (objc_msgSend_count(v13, v24, v25))
  {
    do
    {
      v28 = objc_msgSend_anyObject(v13, v26, v27);
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = sub_276DDE880;
      v133[3] = &unk_27A6F4800;
      v134 = v6;
      v135 = a1;
      v136 = v23;
      v29 = v13;
      v137 = v29;
      objc_msgSend_replaceReferencedStylesUsingBlock_(v28, v30, v133);
      objc_msgSend_removeObject_(v29, v31, v28);
    }

    while (objc_msgSend_count(v29, v32, v33));
  }

  v112 = v13;
  v34 = objc_msgSend_defaultListStyle(a1, v26, v27);
  v143[0] = v34;
  v37 = objc_msgSend_defaultParagraphStyle(a1, v35, v36);
  v143[1] = v37;
  v40 = objc_msgSend_defaultCharacterStyle(a1, v38, v39);
  v143[2] = v40;
  v114 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v41, v143, 3);

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v43 = v6;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v129, v142, 16);
  if (v45)
  {
    v47 = v45;
    v48 = *v130;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v130 != v48)
        {
          objc_enumerationMutation(v43);
        }

        v50 = objc_msgSend_presetsOfKind_(a1, v46, *(*(&v129 + 1) + 8 * i));
        objc_msgSend_addObjectsFromArray_(v42, v51, v50);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v129, v142, 16);
    }

    while (v47);
  }

  v111 = v23;

  objc_msgSend_removeObjectsInArray_(v42, v52, v114);
  v55 = objc_msgSend_documentStylesheet(a1, v53, v54);
  v56 = objc_opt_class();
  v58 = objc_msgSend_identifiedStylesOfClass_(v55, v57, v56);

  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = sub_276DDE9E4;
  v127[3] = &unk_27A6F4828;
  v59 = v42;
  v128 = v59;
  v110 = v58;
  objc_msgSend_enumerateObjectsUsingBlock_(v58, v60, v127);
  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62);
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v64 = v59;
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v123, v141, 16);
  if (v66)
  {
    v69 = v66;
    v70 = *v124;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v124 != v70)
        {
          objc_enumerationMutation(v64);
        }

        v72 = objc_msgSend_children(*(*(&v123 + 1) + 8 * j), v67, v68);
        v75 = objc_msgSend_allObjects(v72, v73, v74);
        objc_msgSend_addObjectsFromArray_(v63, v76, v75);
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v123, v141, 16);
    }

    while (v69);
  }

  v109 = v64;
  v78 = objc_msgSend_arrayByAddingObjectsFromArray_(v64, v77, v63);
  v81 = objc_msgSend_set(MEMORY[0x277D81258], v79, v80);
  v84 = objc_msgSend_dictionary(MEMORY[0x277D81278], v82, v83);
  v113 = v7;
  v86 = objc_msgSend_modelEnumeratorWithFlags_(v7, v85, 2);
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = sub_276DDEA80;
  v119[3] = &unk_27A6F4850;
  v108 = v84;
  v120 = v108;
  v87 = v78;
  v121 = v87;
  v88 = v81;
  v122 = v88;
  objc_msgSend_enumerateStyleClientsUsingBlock_(v86, v89, v119);

  v106 = objc_msgSend_setWithArray_(MEMORY[0x277D81258], v90, v87);
  v107 = v88;
  objc_msgSend_intersectSet_(v106, v91, v88);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v92 = v87;
  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v115, v140, 16);
  if (v94)
  {
    v95 = v94;
    v96 = *v116;
    do
    {
      for (k = 0; k != v95; ++k)
      {
        if (*v116 != v96)
        {
          objc_enumerationMutation(v92);
        }

        v98 = *(*(&v115 + 1) + 8 * k);
        objc_opt_class();
        v99 = TSUClassAndProtocolCast();
        objc_msgSend_removePreset_(a1, v100, v99, &unk_2886356A8);

        v103 = objc_msgSend_stylesheet(v98, v101, v102);
        objc_msgSend_removeStyle_(v103, v104, v98);
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v105, &v115, v140, 16);
    }

    while (v95);
  }
}

id sub_276DDE880(void **a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_containsObject_(a1[4], v4, *MEMORY[0x277D80B70]))
  {
    v7 = objc_msgSend_documentStylesheet(a1[5], v5, v6);
    v10 = objc_msgSend_defaultParagraphStyle(a1[5], v8, v9);
LABEL_7:
    v18 = v10;
    v19 = objc_msgSend_propertyMap(v3, v11, v12);
    v14 = objc_msgSend_variationOfStyle_propertyMap_(v7, v20, v18, v19);

    goto LABEL_8;
  }

  objc_opt_class();
  v14 = v3;
  if (objc_opt_isKindOfClass())
  {
    v14 = v3;
    if (objc_msgSend_containsObject_(a1[4], v13, *MEMORY[0x277D80B58]))
    {
      v7 = objc_msgSend_documentStylesheet(a1[5], v13, v15);
      v10 = objc_msgSend_defaultListStyle(a1[5], v16, v17);
      goto LABEL_7;
    }
  }

LABEL_8:
  if ((objc_msgSend_containsObject_(a1[6], v13, v14) & 1) == 0)
  {
    objc_msgSend_addObject_(a1[6], v21, v14);
    objc_msgSend_addObject_(a1[7], v22, v14);
  }

  return v14;
}

void sub_276DDE9E4(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_styleIdentifier(v11, v3, v4);
  v6 = String();
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"text");

  if (isEqualToString && (objc_msgSend_containsObject_(*(a1 + 32), v9, v11) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v10, v11);
  }
}

void sub_276DDEA80(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = objc_msgSend_referencedStyles(v3, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v29, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v16 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v13, v15, v12, v14);
        objc_msgSend_addObject_(v16, v17, v3);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v18, &v25, v29, 16);
    }

    while (v9);
  }

  if ((objc_msgSend_containsObject_(*(a1 + 40), v19, v3) & 1) == 0)
  {
    v22 = *(a1 + 48);
    v23 = objc_msgSend_referencedStyles(v3, v20, v21);
    objc_msgSend_unionSet_(v22, v24, v23);
  }
}

uint64_t sub_276DDF268(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 8), a2, a2);
  v4 = v3;
  v5 = &unk_2886275C0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v8 = objc_msgSend_containsObject_(*(a1 + 40), v7, v6);
  return v8;
}

void sub_276DDF6E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276DE1880(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276DE48AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_msgSend_copy(a2, a2, a3);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v5, v6, a3);
}

void sub_276DE4B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSWPCTTypesetterCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_276DE4DCC(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_276DE4EA0(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_276DE4EE0(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_276D5EEA0(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_276DE4EE0(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_276DE4F54(v6, a2);
  return v3;
}

uint64_t *sub_276DE4F54(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_276DE52D4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276DE52D4(a1, *a2);
    sub_276DE52D4(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_276D5EEA0(v4);
    }

    operator delete(a2);
  }
}

__CFString *sub_276DE5334(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_length(v1, v2, v3);
  v37 = v1;
  v40 = 0;
  v41 = v4;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v39 = CStringPtr;
  v42 = 0;
  v43 = 0;
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 64;
    while (1)
    {
      if (v11 >= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v11;
      }

      if (v11 >= 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = v11;
      }

      v15 = v41;
      if (v41 <= v11)
      {
        goto LABEL_48;
      }

      if (CharactersPtr)
      {
        break;
      }

      if (!v39)
      {
        if (v43 <= v11 || v8 > v11)
        {
          v23 = -v13;
          v24 = v13 + v7;
          v25 = v12 - v13;
          v26 = v11 + v23;
          v27 = v26 + 64;
          if (v26 + 64 >= v41)
          {
            v27 = v41;
          }

          v42 = v26;
          v43 = v27;
          if (v41 >= v25)
          {
            v15 = v25;
          }

          v45.location = v26 + v40;
          v45.length = v15 + v24;
          CFStringGetCharacters(v37, v45, buffer);
          v8 = v42;
        }

        v16 = &buffer[-v8];
        goto LABEL_15;
      }

      v17 = v39[v40 + v11];
LABEL_18:
      if (v17 == 8233)
      {
        goto LABEL_25;
      }

      if (v17 == 13)
      {
        v18 = v11 + 1;
        if (v11 + 1 >= v4 || (v19 = v41, v41 <= v18))
        {
LABEL_25:
          v22 = 1;
          if (!v10)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (CharactersPtr)
          {
            v20 = &CharactersPtr[v40];
            goto LABEL_24;
          }

          if (v39)
          {
            v21 = v39[v40 + 1 + v11];
          }

          else
          {
            if (v43 <= v18 || v8 > v18)
            {
              v33 = v11 - v14 + 64;
              if (v33 >= v41)
              {
                v33 = v41;
              }

              v42 = v11 - v14;
              v43 = v33;
              if (v41 >= v12 - v14)
              {
                v19 = v12 - v14;
              }

              v46.location = v11 - v14 + v40;
              v46.length = v19 + v14 + v7;
              CFStringGetCharacters(v37, v46, buffer);
              v8 = v42;
            }

            v20 = &buffer[-v8];
LABEL_24:
            v21 = v20[v11 + 1];
          }

          if (v21 == 10)
          {
            v22 = 2;
          }

          else
          {
            v22 = 1;
          }

          if (!v10)
          {
LABEL_42:
            v10 = objc_msgSend_mutableCopyWithZone_(v1, v5, 0);

            v1 = v10;
            if (!v9)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }

        if (!v9)
        {
LABEL_43:
          v35 = 10;
          v28 = objc_alloc(MEMORY[0x277CCACA8]);
          v9 = objc_msgSend_initWithCharacters_length_(v28, v29, &v35, 1);
        }

LABEL_44:
        objc_msgSend_replaceCharactersInRange_withString_(v10, v5, v11, v22, v9);
        v4 = objc_msgSend_length(v1, v30, v31);
        v37 = v1;
        v40 = 0;
        v41 = v4;
        CharactersPtr = CFStringGetCharactersPtr(v1);
        if (CharactersPtr)
        {
          v32 = 0;
        }

        else
        {
          v32 = CFStringGetCStringPtr(v1, 0x600u);
        }

        v8 = 0;
        v39 = v32;
        v42 = 0;
        v43 = 0;
      }

LABEL_48:
      ++v11;
      --v7;
      ++v12;
      if (v11 >= v4)
      {

        goto LABEL_58;
      }
    }

    v16 = &CharactersPtr[v40];
LABEL_15:
    v17 = v16[v11];
    goto LABEL_18;
  }

LABEL_58:

  return v1;
}

uint64_t sub_276DE5684(__CFString *a1, const char *a2, uint64_t a3, NSUInteger a4, NSUInteger a5)
{
  v7 = a3;
  v36.length = objc_msgSend_length(a1, a2, a3);
  v34.location = a4;
  v34.length = a5;
  v36.location = 0;
  v9 = NSIntersectionRange(v34, v36);
  if (v9.length)
  {
    location = v9.location;
    theString = a1;
    v31 = v9;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    v11 = CharactersPtr ? 0 : CFStringGetCStringPtr(a1, 0x600u);
    v32 = 0;
    v33 = 0;
    v30 = v11;
    if (v9.length >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 64;
      do
      {
        if (v14 >= 4)
        {
          v16 = 4;
        }

        else
        {
          v16 = v14;
        }

        length = v31.length;
        if (v31.length <= v14)
        {
          v19 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v18 = &CharactersPtr[v31.location];
          }

          else
          {
            if (v30)
            {
              v19 = v30[v31.location + v14];
              goto LABEL_15;
            }

            if (v33 <= v14 || v13 > v14)
            {
              v21 = -v16;
              v22 = v16 + v12;
              v23 = v15 - v16;
              v24 = v14 + v21;
              v25 = v24 + 64;
              if (v24 + 64 >= v31.length)
              {
                v25 = v31.length;
              }

              v32 = v24;
              v33 = v25;
              if (v31.length >= v23)
              {
                length = v23;
              }

              v35.location = v24 + v31.location;
              v35.length = length + v22;
              CFStringGetCharacters(theString, v35, buffer);
              v13 = v32;
            }

            v18 = &buffer[-v13];
          }

          v19 = v18[v14];
        }

LABEL_15:
        if (v7 == v19)
        {
          return location;
        }

        ++v14;
        ++location;
        --v12;
        ++v15;
      }

      while (v9.length != v14);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_276DE5820(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v9 = objc_msgSend_length(a1, v7, v8);
  v12 = objc_msgSend_rangeOfCharacterFromSet_options_range_(a1, v10, v6, 0, a4, v9 - a4);
  v13 = v11;
  if (v11)
  {
    v14 = a4 + 1;
    if (a4 + 1 < v9)
    {
      do
      {
        v15 = objc_msgSend_characterAtIndex_(a1, v11, v14);
        if (!objc_msgSend_characterIsMember_(v6, v16, v15))
        {
          break;
        }

        ++v13;
        ++v14;
      }

      while (v9 != v14);
    }
  }

  return v12;
}

NSUInteger sub_276DE590C(__CFString *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, void *a8)
{
  locale = a8;
  v14 = *MEMORY[0x277D81490];
  v17 = objc_msgSend_length(a1, v15, v16);
  v19 = v17;
  v55 = a7;
  v20 = a4 + a5;
  v57 = v14;
  if (a3 < a4 || a3 - a4 >= a5)
  {
    v21 = v20 == a3;
    if (v17 < v20)
    {
      v53 = a6;
      v54 = a1;
LABEL_7:
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[NSString(TSWPAdditions) tswp_rangeOfWordAtCharacterIndex:range:includePreviousWord:includeHyphenation:forLocale:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 979, 0, "Specified range is out of range of string");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      a1 = v54;
      a6 = v53;
      if (v21)
      {
        if (v19 < v20)
        {
          goto LABEL_39;
        }

        goto LABEL_11;
      }

LABEL_15:
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[NSString(TSWPAdditions) tswp_rangeOfWordAtCharacterIndex:range:includePreviousWord:includeHyphenation:forLocale:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 980, 0, "Character index out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
      goto LABEL_39;
    }

    if (v20 != a3)
    {
      goto LABEL_15;
    }
  }

  else if (v17 < v20)
  {
    v53 = a6;
    v54 = a1;
    v21 = 1;
    goto LABEL_7;
  }

LABEL_11:
  if (CFStringGetLength(a1) <= a3)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, a3);
    LOBYTE(v31) = 0;
    if (CharacterAtIndex && v20 > a3)
    {
      v31 = IsWhitespaceCharacter(CharacterAtIndex, v30) ^ 1;
    }
  }

  if (a6)
  {
    if (a3 > a4)
    {
      v39 = CFStringGetCharacterAtIndex(a1, a3 - 1);
      v41 = IsWhitespaceCharacter(v39, v40);
      LOBYTE(v31) = v41 ^ 1 | v31;
      if (!v41)
      {
        --a3;
      }
    }
  }

  if ((v31 & 1) != 0 && a5)
  {
    v59.location = a4;
    v59.length = a5;
    v42 = CFStringTokenizerCreate(0, a1, v59, 4uLL, locale);
    v43 = v42;
    if (v42)
    {
      v44 = CFStringTokenizerGoToTokenAtIndex(v42, a3);
      length = 0;
      location = -1;
      v47 = v57;
      if (v44 && (v44 & 0x10) == 0)
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v43);
        length = CurrentTokenRange.length;
        location = CurrentTokenRange.location;
      }
    }

    else
    {
      length = 0;
      location = -1;
      v47 = v57;
    }

    if (location != -1 && length != 0)
    {
      v47 = location;
    }

    if (location != -1 && length != 0 && v55)
    {
      while (1)
      {
        v47 = location;
        v49 = length;
        if ((CFStringTokenizerAdvanceToNextToken(v43) & 0x10) == 0)
        {
          break;
        }

        v50 = CFStringTokenizerGetCurrentTokenRange(v43);
        if (v50.length != 1 || !objc_msgSend_tswp_isHyphenationAtCharacterIndex_(a1, 1, v50.location) || CFStringTokenizerAdvanceToNextToken(v43) != 1)
        {
          break;
        }

        v60 = CFStringTokenizerGetCurrentTokenRange(v43);
        v58.location = v47;
        v58.length = v49;
        v51 = NSUnionRange(v58, v60);
        length = v51.length;
        location = v51.location;
      }
    }

    v57 = v47;
    if (v43)
    {
      CFRelease(v43);
    }
  }

LABEL_39:

  return v57;
}

uint64_t sub_276DE5CC0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_characterAtIndex_(a1, a2, a3);
  result = 1;
  if (v3 <= 182)
  {
    if (v3 != 45 && v3 != 173)
    {
      return 0;
    }
  }

  else if (v3 != 183 && v3 != 8208 && v3 != 8231)
  {
    return 0;
  }

  return result;
}

BOOL sub_276DE5D20(__CFString *a1, const char *a2, NSUInteger a3, NSUInteger a4)
{
  v35.length = objc_msgSend_length(a1, a2, a3);
  v33.location = a3;
  v33.length = a4;
  v35.location = 0;
  v7 = NSIntersectionRange(v33, v35);
  if (v7.length)
  {
    theString = a1;
    v30 = v7;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    v31 = 0;
    v32 = 0;
    v29 = CStringPtr;
    if (v7.length >= 1)
    {
      v11 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 64;
      while (1)
      {
        if (v12 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v12;
        }

        length = v30.length;
        if (v30.length <= v12)
        {
          v17 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v16 = &CharactersPtr[v30.location];
LABEL_14:
            v17 = v16[v12];
            goto LABEL_16;
          }

          if (!v29)
          {
            v18 = v31;
            if (v32 <= v12 || v31 > v12)
            {
              v20 = -v14;
              v21 = v14 + v11;
              v22 = v13 - v14;
              v23 = v12 + v20;
              v24 = v23 + 64;
              if (v23 + 64 >= v30.length)
              {
                v24 = v30.length;
              }

              v31 = v23;
              v32 = v24;
              if (v30.length >= v22)
              {
                length = v22;
              }

              v34.location = v23 + v30.location;
              v34.length = length + v21;
              CFStringGetCharacters(theString, v34, buffer);
              v18 = v31;
            }

            v16 = &buffer[-v18];
            goto LABEL_14;
          }

          v17 = v29[v30.location + v12];
        }

LABEL_16:
        if (IsWhitespaceCharacter(v17, v8))
        {
          v10 = ++v12 >= v7.length;
          --v11;
          ++v13;
          if (v7.length != v12)
          {
            continue;
          }
        }

        return v10;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

__CFString *sub_276DE5EBC(__CFString *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v7 = a3;
  v10 = a5;
  v61 = v7;
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[NSString(TSWPAdditions) tswp_replaceOccurrencesOfCharactersInSet:minimumConsecutiveLength:replaceString:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1073, 0, "invalid nil value for '%{public}s'", "replaceString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  v18 = objc_msgSend_length(a1, v8, v9);
  theString = a1;
  range.location = 0;
  range.length = v18;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v68 = 0;
  length = 0;
  v66 = CStringPtr;
  v60 = a1;
  if (v18 && range.length >= 1)
  {
    if (CharactersPtr)
    {
      v20 = CharactersPtr[range.location];
    }

    else if (CStringPtr)
    {
      v20 = CStringPtr[range.location];
    }

    else
    {
      if (range.length >= 0x40uLL)
      {
        v57.length = 64;
      }

      else
      {
        v57.length = range.length;
      }

      length = v57.length;
      v57.location = range.location;
      CFStringGetCharacters(theString, v57, buffer);
      v20 = buffer[-v68];
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = CFCharacterSetIsCharacterMember(v7, v20) != 0;
  v22 = v18 - 2;
  if (v18 < 2 || range.length < 2)
  {
    v23 = 0;
  }

  else if (CharactersPtr)
  {
    v23 = CharactersPtr[range.location + 1];
  }

  else if (v66)
  {
    v23 = v66[range.location + 1];
  }

  else
  {
    if (length < 2 || (v58 = v68, v68 >= 2))
    {
      if (range.length >= 0x40uLL)
      {
        v59.length = 64;
      }

      else
      {
        v59.length = range.length;
      }

      v68 = 0;
      length = v59.length;
      v59.location = range.location;
      CFStringGetCharacters(theString, v59, buffer);
      v58 = v68;
    }

    v23 = buffer[1 - v58];
  }

  IsCharacterMember = CFCharacterSetIsCharacterMember(v7, v23);
  if (v18)
  {
    v27 = 0;
    v28 = IsCharacterMember != 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = 2;
    while (1)
    {
      v31 = v30 - 2;
      if (v21)
      {
        if (v31 < v29)
        {
          v29 = v30 - 2;
        }

        ++v27;
        if (!v28)
        {
          if (v27 >= a4)
          {
            v32 = v71;
            if (v71 >= v72)
            {
              v34 = v70;
              v35 = v71 - v70;
              v36 = (v71 - v70) >> 4;
              v37 = v36 + 1;
              if ((v36 + 1) >> 60)
              {
                sub_276D34ED8();
              }

              v38 = v72 - v70;
              if ((v72 - v70) >> 3 > v37)
              {
                v37 = v38 >> 3;
              }

              v39 = v38 >= 0x7FFFFFFFFFFFFFF0;
              v40 = 0xFFFFFFFFFFFFFFFLL;
              if (!v39)
              {
                v40 = v37;
              }

              if (v40)
              {
                sub_276D34F6C(&v70, v40);
              }

              v41 = (v71 - v70) >> 4;
              v42 = (16 * v36);
              *v42 = v29;
              v42[1] = v27;
              v33 = 16 * v36 + 16;
              v43 = &v42[-2 * v41];
              memcpy(v43, v34, v35);
              v44 = v70;
              v70 = v43;
              v71 = v33;
              v72 = 0;
              if (v44)
              {
                operator delete(v44);
              }

              v7 = v61;
            }

            else
            {
              *v71 = v29;
              *(v32 + 1) = v27;
              v33 = (v32 + 16);
            }

            v27 = 0;
            v71 = v33;
          }

          else
          {
            v27 = 0;
          }

          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (v31 < v22)
      {
        break;
      }

      v48 = 0;
LABEL_47:
      ++v30;
      v21 = v28;
      v28 = v48;
      if (!--v18)
      {
        goto LABEL_59;
      }
    }

    if (v30 < 0 || (v45 = range.length, range.length <= v30))
    {
      v47 = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v46 = &CharactersPtr[range.location];
      }

      else
      {
        if (v66)
        {
          v47 = v66[range.location + v30];
          goto LABEL_46;
        }

        if (length <= v30 || (v49 = v68, v68 > v30))
        {
          v50 = v30 - 4;
          if (v30 < 4)
          {
            v50 = 0;
          }

          if ((v50 + 64) < range.length)
          {
            v45 = v50 + 64;
          }

          v68 = v50;
          length = v45;
          v74.length = v45 - v50;
          v74.location = range.location + v50;
          CFStringGetCharacters(theString, v74, buffer);
          v49 = v68;
        }

        v46 = &buffer[-v49];
      }

      v47 = v46[v30];
    }

LABEL_46:
    v48 = CFCharacterSetIsCharacterMember(v7, v47) != 0;
    goto LABEL_47;
  }

LABEL_59:
  if (v71 == v70)
  {
    v52 = v60;
  }

  else
  {
    v52 = objc_msgSend_mutableCopy(v60, v25, v26);
    for (i = v71; i != v70; i -= 16)
    {
      v54 = *(i - 2);
      v55 = *(i - 1);
      objc_msgSend_replaceCharactersInRange_withString_(v52, v51, v54, v55, v10);
    }
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  return v52;
}

uint64_t sub_276DE63C8(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a3;
  if (objc_msgSend_length(v5, v6, v7))
  {
    v10 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v8, v9);
    v12 = objc_msgSend_stringByTrimmingCharactersInSet_(v5, v11, v10);

    if (!qword_280A583E0)
    {
      v15 = objc_alloc_init(MEMORY[0x277CCAB50]);
      v17 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v16, L".()", 3);
      objc_msgSend_addCharactersInString_(v15, v18, v17);

      v19 = qword_280A583E0;
      qword_280A583E0 = v15;
    }

    if (a4 >= 3)
    {
      v20 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v12, v13, qword_280A583E0);

      v12 = v20;
    }

    if (objc_msgSend_length(v12, v13, v14) >= 0x65)
    {
      v23 = objc_msgSend_substringWithRange_(v12, v21, 0, 100);

      v12 = v23;
    }

    if (a4 > 0xE)
    {
      goto LABEL_14;
    }

    if (((1 << a4) & 0x1C0) != 0)
    {
      v24 = sub_276DE6888(v12, v21, v22);
      goto LABEL_20;
    }

    if (((1 << a4) & 0xE00) != 0)
    {
      v24 = sub_276DE68D0(v12);
      goto LABEL_20;
    }

    if (((1 << a4) & 0x7000) != 0)
    {
      v24 = sub_276DE69C0(v12, v21, v22);
    }

    else
    {
LABEL_14:
      if (a4 - 3 < 3)
      {
        v24 = sub_276DE6764(v12);
      }

      else
      {
        if (a4 > 2)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "+[NSString(TSWPAdditions) tswp_numberForString:withListNumberFormat:]");
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1192, 0, "Label format (%lu) not recognized.", a4);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
          v25 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        v24 = sub_276DE6658(v12);
      }
    }

LABEL_20:
    v25 = v24;
LABEL_21:

    goto LABEL_22;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:

  return v25;
}

uint64_t sub_276DE6658(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v2, v1);
  v20 = 0;
  if (objc_msgSend_scanInt_(v3, v4, &v20) && ((v7 = objc_msgSend_isAtEnd(v3, v5, v6), v8 = v20, v20 >= 0) ? (v9 = v7) : (v9 = 0), v9 == 1))
  {
    v10 = v3;
  }

  else
  {
    v19 = 0.0;
    v10 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v5, v1);

    if (objc_msgSend_scanFloat_(v10, v11, &v19))
    {
      v14 = objc_msgSend_isAtEnd(v10, v12, v13);
      if (v19 >= 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 == 1;
      v17 = vcvtas_u32_f32(v19);
      if (v16)
      {
        v8 = v17;
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

uint64_t sub_276DE6764(void *a1)
{
  v1 = a1;
  v2 = v1;
  v5 = objc_msgSend_UTF8String(v2, v3, v4);
  LOBYTE(v6) = *v5;
  if (*v5)
  {
    v7 = 0;
    v8 = MEMORY[0x277D85DE0];
    while (1)
    {
      if ((v6 & 0x80) != 0)
      {
        v9 = __maskrune(v6, 0x100uLL);
      }

      else
      {
        v9 = *(v8 + 4 * v6 + 60) & 0x100;
      }

      if (!v9 || (v10 = (*v5 & 0xFFFFFFFFFFFFFFDFLL) - 65, ((0x34FE4F3uLL >> v10) & 1) != 0))
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_17;
      }

      v11 = dword_276F99D80[v10];
      if (!v5[1])
      {
        break;
      }

      v12 = dword_276F99D80[(v5[1] & 0xFFFFFFFFFFFFFFDFLL) - 65];
      if (v12 <= v11)
      {
        v6 = v5[1];
      }

      else
      {
        v11 = v12 - v11;
        v6 = v5[2];
        ++v5;
      }

      v7 += v11;
      ++v5;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    v7 += v11;
  }

  else
  {
    v7 = 0;
  }

LABEL_17:

  return v7;
}

uint64_t sub_276DE6888(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_uppercaseString(a1, a2, a3);
  v4 = sub_276DE6764(v3);

  return v4;
}

uint64_t sub_276DE68D0(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_length(v1, v2, v3);
  v5 = v1;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  v9 = *v8;
  if (v4)
  {
    v10 = 0;
    v11 = MEMORY[0x277D85DE0];
    while (v9 < 0 ? __maskrune(v9, 0x100uLL) : *(v11 + 4 * v9 + 60) & 0x100)
    {
      v9 = *v8;
      if (((v8[v10] ^ *v8) & 0xDF) != 0)
      {
        break;
      }

      if (v4 == ++v10)
      {
        goto LABEL_9;
      }
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_9:
    v13 = 26 * v4 + (v9 & 0xDF) - 90;
  }

  return v13;
}

uint64_t sub_276DE69C0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_uppercaseString(a1, a2, a3);
  v4 = sub_276DE68D0(v3);

  return v4;
}

uint64_t sub_276DE6A08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  if (objc_msgSend_length(v5, v6, v7))
  {
    v10 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v8, v9);
    v12 = objc_msgSend_stringByTrimmingCharactersInSet_(v5, v11, v10);

    if (objc_msgSend_length(v12, v13, v14) >= 0x65)
    {
      v17 = objc_msgSend_substringWithRange_(v12, v15, 0, 100);

      v12 = v17;
    }

    if (a4 <= 1)
    {
      if (!a4)
      {
        v18 = sub_276DE6658(v12);
        goto LABEL_16;
      }

      if (a4 == 1)
      {
        v18 = sub_276DE6764(v12);
        goto LABEL_16;
      }
    }

    else
    {
      switch(a4)
      {
        case 2:
          v18 = sub_276DE6888(v12, v15, v16);
          goto LABEL_16;
        case 3:
          v18 = sub_276DE68D0(v12);
          goto LABEL_16;
        case 4:
          v18 = sub_276DE69C0(v12, v15, v16);
LABEL_16:
          v19 = v18;
LABEL_17:

          goto LABEL_18;
      }
    }

    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[NSString(TSWPAdditions) tswp_numberForString:withPageNumberFormat:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1233, 0, "Number format (%d) not recognized.", a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  return v19;
}

__CFString *sub_276DE6BFC(int a1, const char *a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a4)
  {
    case 0:
      v7 = MEMORY[0x277CCACA8];
      v8 = sub_276DE7FB4(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v7, v9, @"%@.", v8);
      goto LABEL_71;
    case 1:
      v61 = MEMORY[0x277CCACA8];
      v8 = sub_276DE7FB4(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v61, v62, @"(%@)", v8);
      goto LABEL_71;
    case 2:
      v79 = MEMORY[0x277CCACA8];
      v8 = sub_276DE7FB4(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v79, v80, @"%@"), v8);
      goto LABEL_71;
    case 3:
      v71 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8094(a3, a2, a3);
      v10 = objc_msgSend_stringWithFormat_(v71, v72, @"%@.", v8);
      goto LABEL_71;
    case 4:
      v89 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8094(a3, a2, a3);
      v10 = objc_msgSend_stringWithFormat_(v89, v90, @"(%@)", v8);
      goto LABEL_71;
    case 5:
      v97 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8094(a3, a2, a3);
      v10 = objc_msgSend_stringWithFormat_(v97, v98, @"%@"), v8);
      goto LABEL_71;
    case 6:
      v59 = MEMORY[0x277CCACA8];
      v8 = sub_276DE81EC(a3, a2, a3);
      v10 = objc_msgSend_stringWithFormat_(v59, v60, @"%@.", v8);
      goto LABEL_71;
    case 7:
      v45 = MEMORY[0x277CCACA8];
      v8 = sub_276DE81EC(a3, a2, a3);
      v10 = objc_msgSend_stringWithFormat_(v45, v46, @"(%@)", v8);
      goto LABEL_71;
    case 8:
      v49 = MEMORY[0x277CCACA8];
      v8 = sub_276DE81EC(a3, a2, a3);
      v10 = objc_msgSend_stringWithFormat_(v49, v50, @"%@"), v8);
      goto LABEL_71;
    case 9:
      v103 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, aAbcdefghijklmn_0, 0x1AuLL);
      v10 = objc_msgSend_stringWithFormat_(v103, v104, @"%@.", v8);
      goto LABEL_71;
    case 10:
      v55 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, aAbcdefghijklmn_0, 0x1AuLL);
      v10 = objc_msgSend_stringWithFormat_(v55, v56, @"(%@)", v8);
      goto LABEL_71;
    case 11:
      v75 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, aAbcdefghijklmn_0, 0x1AuLL);
      v10 = objc_msgSend_stringWithFormat_(v75, v76, @"%@"), v8);
      goto LABEL_71;
    case 12:
      v69 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8248(a3);
      v10 = objc_msgSend_stringWithFormat_(v69, v70, @"%@.", v8);
      goto LABEL_71;
    case 13:
      v43 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8248(a3);
      v10 = objc_msgSend_stringWithFormat_(v43, v44, @"(%@)", v8);
      goto LABEL_71;
    case 14:
      v99 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8248(a3);
      v10 = objc_msgSend_stringWithFormat_(v99, v100, @"%@"), v8);
      goto LABEL_71;
    case 15:
      v101 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 0, a3);
      v10 = objc_msgSend_stringWithFormat_(v101, v102, @"%@.", v8);
      goto LABEL_71;
    case 16:
      v111 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 0, a3);
      v10 = objc_msgSend_stringWithFormat_(v111, v112, @"(%@)", v8);
      goto LABEL_71;
    case 17:
      v107 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 0, a3);
      v10 = objc_msgSend_stringWithFormat_(v107, v108, @"%@"), v8);
      goto LABEL_71;
    case 18:
      v35 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aB0d0f0h0j0k0m0, 0x2EuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v35, v36, @"%@.", v8);
      goto LABEL_71;
    case 19:
      v73 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aB0d0f0h0j0k0m0, 0x2EuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v73, v74, @"(%@)", v8);
      goto LABEL_71;
    case 20:
      v121 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aB0d0f0h0j0k0m0, 0x2EuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v121, v122, @"%@"), v8);
      goto LABEL_71;
    case 21:
      v41 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aB0d0f0h0j0k0m0, 0x2EuLL, 1);
      v10 = objc_msgSend_stringWithFormat_(v41, v42, @"%@.", v8);
      goto LABEL_71;
    case 22:
      v67 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aB0d0f0h0j0k0m0, 0x2EuLL, 1);
      v10 = objc_msgSend_stringWithFormat_(v67, v68, @"(%@)", v8);
      goto LABEL_71;
    case 23:
      v51 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aB0d0f0h0j0k0m0, 0x2EuLL, 1);
      v10 = objc_msgSend_stringWithFormat_(v51, v52, @"%@"), v8);
      goto LABEL_71;
    case 24:
      v85 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aD0, 0x2FuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v85, v86, @"%@.", v8);
      goto LABEL_71;
    case 25:
      v47 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aD0, 0x2FuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v47, v48, @"(%@)", v8);
      goto LABEL_71;
    case 26:
      v31 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aD0, 0x2FuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v31, v32, @"%@"), v8);
      goto LABEL_71;
    case 27:
      v126 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aD0, 0x2FuLL, 1);
      v10 = objc_msgSend_stringWithFormat_(v126, v127, @"%@.", v8);
      goto LABEL_71;
    case 28:
      v57 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aD0, 0x2FuLL, 1);
      v10 = objc_msgSend_stringWithFormat_(v57, v58, @"(%@)", v8);
      goto LABEL_71;
    case 29:
      v63 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, aD0, 0x2FuLL, 1);
      v10 = objc_msgSend_stringWithFormat_(v63, v64, @"%@"), v8);
      goto LABEL_71;
    case 30:
      v95 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 1, a3);
      v10 = objc_msgSend_stringWithFormat_(v95, v96, @"%@.", v8);
      goto LABEL_71;
    case 31:
      v65 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 1, a3);
      v10 = objc_msgSend_stringWithFormat_(v65, v66, @"(%@)", v8);
      goto LABEL_71;
    case 32:
      v23 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 1, a3);
      v10 = objc_msgSend_stringWithFormat_(v23, v24, @"%@"), v8);
      goto LABEL_71;
    case 33:
      v39 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 2, a3);
      v10 = objc_msgSend_stringWithFormat_(v39, v40, @"%@.", v8);
      goto LABEL_71;
    case 34:
      v105 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 2, a3);
      v10 = objc_msgSend_stringWithFormat_(v105, v106, @"(%@)", v8);
      goto LABEL_71;
    case 35:
      v130 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 2, a3);
      v10 = objc_msgSend_stringWithFormat_(v130, v131, @"%@"), v8);
      goto LABEL_71;
    case 36:
      v29 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 3, a3);
      v10 = objc_msgSend_stringWithFormat_(v29, v30, @"%@.", v8);
      goto LABEL_71;
    case 37:
      v91 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 3, a3);
      v10 = objc_msgSend_stringWithFormat_(v91, v92, @"(%@)", v8);
      goto LABEL_71;
    case 38:
      v27 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 3, a3);
      v10 = objc_msgSend_stringWithFormat_(v27, v28, @"%@"), v8);
      goto LABEL_71;
    case 39:
      v25 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 4, a3);
      v10 = objc_msgSend_stringWithFormat_(v25, v26, @"%@.", v8);
      goto LABEL_71;
    case 40:
      v53 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 4, a3);
      v10 = objc_msgSend_stringWithFormat_(v53, v54, @"(%@)", v8);
      goto LABEL_71;
    case 41:
      v77 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 4, a3);
      v10 = objc_msgSend_stringWithFormat_(v77, v78, @"%@"), v8);
      goto LABEL_71;
    case 42:
      v113 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 5, a3);
      v10 = objc_msgSend_stringWithFormat_(v113, v114, @"%@.", v8);
      goto LABEL_71;
    case 43:
      v13 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 5, a3);
      v10 = objc_msgSend_stringWithFormat_(v13, v14, @"(%@)", v8);
      goto LABEL_71;
    case 44:
      v33 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8360(a3, 5, a3);
      v10 = objc_msgSend_stringWithFormat_(v33, v34, @"%@"), v8);
      goto LABEL_71;
    case 45:
      v81 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, byte_276F9A046, 0xEuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v81, v82, @"%@.", v8);
      goto LABEL_71;
    case 46:
      v87 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, byte_276F9A046, 0xEuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v87, v88, @"(%@)", v8);
      goto LABEL_71;
    case 47:
      v132 = MEMORY[0x277CCACA8];
      v8 = sub_276DEA668(a3, byte_276F9A046, 0xEuLL, 0);
      v10 = objc_msgSend_stringWithFormat_(v132, v133, @"%@"), v8);
      goto LABEL_71;
    case 48:
      v83 = MEMORY[0x277CCACA8];
      v8 = sub_276DE863C(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v83, v84, @"%@", v8);
      goto LABEL_71;
    case 49:
      v21 = MEMORY[0x277CCACA8];
      v8 = sub_276DE878C(a3, *MEMORY[0x277D813B8]);
      v10 = objc_msgSend_stringWithFormat_(v21, v22, @"%@.", v8);
      goto LABEL_71;
    case 50:
      v15 = MEMORY[0x277CCACA8];
      v8 = sub_276DE878C(a3, *MEMORY[0x277D813B8]);
      v10 = objc_msgSend_stringWithFormat_(v15, v16, @"(%@)", v8);
      goto LABEL_71;
    case 51:
      v136 = MEMORY[0x277CCACA8];
      v8 = sub_276DE878C(a3, *MEMORY[0x277D813B8]);
      v10 = objc_msgSend_stringWithFormat_(v136, v137, @"%@"), v8);
      goto LABEL_71;
    case 52:
      v128 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, asc_276F9A082, 0x1CuLL);
      v10 = objc_msgSend_stringWithFormat_(v128, v129, @"%@.", v8);
      goto LABEL_71;
    case 53:
      v19 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, asc_276F9A082, 0x1CuLL);
      v10 = objc_msgSend_stringWithFormat_(v19, v20, @"(%@)", v8);
      goto LABEL_71;
    case 54:
      v93 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, asc_276F9A082, 0x1CuLL);
      v10 = objc_msgSend_stringWithFormat_(v93, v94, @"%@"), v8);
      goto LABEL_71;
    case 55:
      v109 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8910(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v109, v110, @"%@.", v8);
      goto LABEL_71;
    case 56:
      v17 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8910(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v17, v18, @"(%@)", v8);
      goto LABEL_71;
    case 57:
      v123 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8910(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v123, v124, @"%@"), v8);
      goto LABEL_71;
    case 58:
      v115 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, byte_276F9A0F8, 0x16uLL);
      v10 = objc_msgSend_stringWithFormat_(v115, v116, @"%@.", v8);
      goto LABEL_71;
    case 59:
      v140 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, byte_276F9A0F8, 0x16uLL);
      v10 = objc_msgSend_stringWithFormat_(v140, v141, @"(%@)", v8);
      goto LABEL_71;
    case 60:
      v134 = MEMORY[0x277CCACA8];
      v8 = sub_276DE9EA0(a3, byte_276F9A0F8, 0x16uLL);
      v10 = objc_msgSend_stringWithFormat_(v134, v135, @"%@"), v8);
      goto LABEL_71;
    case 61:
      v138 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8B50(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v138, v139, @"%@", v8);
      goto LABEL_71;
    case 62:
      v117 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8B50(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v117, v118, @"%@.", v8);
      goto LABEL_71;
    case 63:
      v119 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8B50(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v119, v120, @"(%@)", v8);
      goto LABEL_71;
    case 64:
      v37 = MEMORY[0x277CCACA8];
      v8 = sub_276DE8B50(a3, a2);
      v10 = objc_msgSend_stringWithFormat_(v37, v38, @"%@"), v8);
LABEL_71:
      v125 = v10;

      if ((a5 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_75;
    case 66:
      v11 = sub_276DE82B0(a3, a2, a3);
      goto LABEL_61;
    case 67:
      v11 = sub_276DE81EC(a3, a2, a3);
LABEL_61:
      v125 = v11;
      if (a5)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    default:
      v144 = MEMORY[0x277D81150];
      v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:]");
      v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v148, v145, v147, 1451, 0, "Label format (%lu) invalid for numeric list.", a4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150);
      v125 = &stru_28860A0F0;
      if (a5)
      {
        goto LABEL_75;
      }

LABEL_72:
      if (qword_280A583F0 != -1)
      {
        sub_276F4F634();
      }

      v142 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v125, v12, qword_280A583E8);

      v125 = v142;
LABEL_75:

      return v125;
  }
}

uint64_t sub_276DE7FB4(unsigned int a1, const char *a2)
{
  if (!a1)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *(anonymous namespace)::TSWPArabicLabelFromNumber");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 427, 0, "Illegal value for arabic numeral topic label <= 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  if (a1 <= 1)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%d", 1);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%d", a1);
  }
}

id sub_276DE8094(unsigned int a1, const char *a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_280A583F8, memory_order_acquire) & 1) == 0)
  {
    sub_276F4F648();
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!a1)
  {
LABEL_3:
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *(anonymous namespace)::TSWPRomanUpperLabelFromNumber");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 530, 0, "Illegal value for roman numeral topic label <= 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

LABEL_4:
  if (a1 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a1;
  }

  v13 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v14 = 12;
  do
  {
    v15 = &unk_27A6F4908 + 16 * v14;
    if (v11 >= *v15)
    {
      v16 = *(v15 + 1);
      do
      {
        objc_msgSend_appendString_(v13, v12, v16);
        v11 -= *v15;
      }

      while (v11 >= *v15);
    }

    v18 = v14-- != 0;
  }

  while (v11 && v18);

  return v13;
}

id sub_276DE81EC(unsigned int a1, const char *a2, uint64_t a3)
{
  v3 = sub_276DE8094(a1, a2, a3);
  v6 = objc_msgSend_lowercaseString(v3, v4, v5);

  return v6;
}

id sub_276DE8248(int a1)
{
  v1 = sub_276DE9EA0(a1, aAbcdefghijklmn_0, 0x1AuLL);
  v4 = objc_msgSend_lowercaseString(v1, v2, v3);

  return v4;
}

id sub_276DE82B0(int a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v6 = aAbcdefghijklmn_0[((a1 - 1) & 3) + 26];
  v7 = -1;
  do
  {
    objc_msgSend_appendFormat_(v5, v4, @"%C", v6);
    ++v7;
  }

  while ((a1 - 1) >> 2 > v7);

  return v5;
}

id sub_276DE8360(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v7 = v5;
  v8 = a2;
  if (a1)
  {
    v9 = &unk_276F99E24 + 16 * a2;
    v10 = off_2885FF238[a2];
    v11 = v5;
    v42 = v11;
    v43 = a2;
    v44 = 1;
    v45 = v10;
    v12 = sub_276DEA058(v9, (v9 + 16), a1, &v42);
    v14 = sub_276DEA140(v12, a2, v13);
    objc_msgSend_appendString_(v11, v15, v14);

    v16 = &word_276F99E84[10 * a2];
    v41 = *v16;
    v19 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v17, &v41, 1);
    if (a2 && a2 != 3)
    {
      v26 = MEMORY[0x277CBEB18];
      v27 = objc_msgSend_componentsSeparatedByString_(v11, v18, v19);
      v20 = objc_msgSend_arrayWithArray_(v26, v28, v27);

      objc_msgSend_removeObject_(v20, v29, &stru_28860A0F0);
      v31 = objc_msgSend_componentsJoinedByString_(v20, v30, v19);
      v23 = objc_msgSend_mutableCopy(v31, v32, v33);

      if (objc_msgSend_length(v23, v34, v35) >= 2)
      {
        v37 = objc_msgSend_characterAtIndex_(v23, v36, 0);
        v39 = objc_msgSend_characterAtIndex_(v23, v38, 1);
        if (v37 == v16[1] && (v39 == *(v9 + 2) || v39 == *(v9 + 6) || v39 == word_276F99EFC[12 * v8 + 10]))
        {
          objc_msgSend_deleteCharactersInRange_(v23, v40, 0, 1);
        }
      }
    }

    else
    {
      v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v18, v19, &stru_28860A0F0);
      v23 = objc_msgSend_mutableCopy(v20, v21, v22);
    }

    v24 = v23;
  }

  else
  {
    objc_msgSend_tsu_appendCharacter_(v5, v6, word_276F99E84[10 * a2]);
    v24 = v7;
  }

  return v24;
}

id sub_276DE863C(unsigned int a1, const char *a2)
{
  if (!a1)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *(anonymous namespace)::TSWPCircledNumberLabelFromNumber");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 825, 0, "Illegal value for circled number numeral topic label <= 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = 0;
  while (1)
  {
    v11 = dword_276F9A064[v10];
    if (a1 >= v11 && dword_276F9A070[v10] + v11 > a1)
    {
      break;
    }

    if (++v10 == 3)
    {
      goto LABEL_7;
    }
  }

  v14 = word_276F9A07C[v10] + a1 - v11;
  v12 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], a2, &v14, 1);
  if (!v12)
  {
LABEL_7:
    v12 = sub_276DE7FB4(a1, a2);
  }

  return v12;
}

id sub_276DE878C(unsigned int a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "NSString *(anonymous namespace)::TSWPArabicLabelFromNumberAndLocaleIdentifier(unsigned int, NSString *__strong)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 439, 0, "Illegal value for arabic numeral topic label <= 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (a1 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a1;
  }

  v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v14 = objc_alloc(MEMORY[0x277CBEAF8]);
  v16 = objc_msgSend_initWithLocaleIdentifier_(v14, v15, v4);
  objc_msgSend_setLocale_(v13, v17, v16);

  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v12);
  v21 = objc_msgSend_stringFromNumber_(v13, v20, v19);

  return v21;
}

id sub_276DE8910(unsigned int a1, const char *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1 >= 0xF4240)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *(anonymous namespace)::TSWPArabianAbjadLabelFromNumber(uint)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 755, 0, "number out of bounds for algorithm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v11 = 0;
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      if (a1 >= 0x3E8)
      {
        v12 = a1 / 0x3E8;
        v13 = sub_276DEA738(a1 / 0x3E8, __b);
        v3 = v13 + 1;
        *&__b[2 * v13] = 39;
        v2 -= 1000 * v12;
      }

      else
      {
        v3 = 0;
      }

      v15 = sub_276DEA738(v2, &__b[2 * v3]) + v3;
      if (v15 >= 0xC)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "NSString *(anonymous namespace)::TSWPArabianAbjadLabelFromNumber(uint)");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 778, 0, "string out of bounds");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }

      v11 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v14, __b, v15);
    }

    else
    {
      v11 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], a2, &unk_276F9A0BA, 3);
    }
  }

  return v11;
}

id sub_276DE8B50(unsigned int a1, const char *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1 >= 0xF4240)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *(anonymous namespace)::TSWPHebrewBiblicalLabelFromNumber(uint)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 694, 0, "Hebrew number out of bounds for algorithm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v11 = 0;
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      if (a1 >= 0x3E8)
      {
        v12 = a1 / 0x3E8;
        v13 = sub_276DEA948(a1 / 0x3E8, __b);
        v3 = v13 + 1;
        *&__b[2 * v13] = 1523;
        v2 -= 1000 * v12;
      }

      else
      {
        v3 = 0;
      }

      v15 = sub_276DEA948(v2, &__b[2 * v3]) + v3;
      if (v15 >= 0xE)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "NSString *(anonymous namespace)::TSWPHebrewBiblicalLabelFromNumber(uint)");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 717, 0, "string out of bounds");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }

      v11 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v14, __b, v15);
    }

    else
    {
      v11 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], a2, &unk_276F9A124, 3);
    }
  }

  return v11;
}

void sub_276DE8D90()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v0, v1, 46, 1);
  objc_msgSend_addCharactersInRange_(v0, v2, 40, 1);
  objc_msgSend_addCharactersInRange_(v0, v3, 41, 1);
  v4 = qword_280A583E8;
  qword_280A583E8 = v0;
}

uint64_t sub_276DE8E14(void *a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_letterCharacterSet(MEMORY[0x277CCA900], a2, a3);
  v6 = objc_msgSend_rangeOfCharacterFromSet_(a1, v5, v4);

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v9 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v7, v8);
  v11 = objc_msgSend_rangeOfCharacterFromSet_(a1, v10, v9);

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (objc_msgSend_length(a1, v12, v13))
  {
    v16 = objc_msgSend_tswp_utf32CharacterAtIndex_(a1, v14, 0);
    if (!u_charDigitValue(v16))
    {
      return 1;
    }
  }

  v17 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v14, v15);
  v19 = objc_msgSend_componentsSeparatedByCharactersInSet_(a1, v18, v17);

  if (objc_msgSend_count(v19, v20, v21) < 2)
  {
    v33 = 0;
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v19;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v35, v39, 16);
    if (v26)
    {
      v27 = 0;
      v28 = *v36;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v35 + 1) + 8 * i);
          if (objc_msgSend_length(v30, v24, v25, v35) > 3)
          {
            v33 = 1;
            goto LABEL_22;
          }

          if (objc_msgSend_length(v30, v31, v32) <= 2)
          {
            v33 = 1;
            if (v27)
            {
              goto LABEL_22;
            }

            v27 = 1;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v35, v39, 16);
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0;
LABEL_22:
  }

  return v33;
}