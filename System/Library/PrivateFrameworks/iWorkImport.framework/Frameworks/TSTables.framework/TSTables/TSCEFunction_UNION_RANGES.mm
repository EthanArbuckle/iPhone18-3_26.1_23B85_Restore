@interface TSCEFunction_UNION_RANGES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (void)determineShapeOfCellList:(const void *)list compactUp:(BOOL)up outRangeIsContigious:(BOOL *)contigious outRangeIsRectangular:(BOOL *)rectangular outRangeIsInOneTable:(BOOL *)table outRowWidth:(unint64_t *)width;
@end

@implementation TSCEFunction_UNION_RANGES

+ (void)determineShapeOfCellList:(const void *)list compactUp:(BOOL)up outRangeIsContigious:(BOOL *)contigious outRangeIsRectangular:(BOOL *)rectangular outRangeIsInOneTable:(BOOL *)table outRowWidth:(unint64_t *)width
{
  upCopy = up;
  *contigious = 1;
  *rectangular = 1;
  *table = 1;
  v9 = *list;
  if (*list == *(list + 1))
  {
    if (up)
    {
      goto LABEL_54;
    }

    v37 = 0;
    goto LABEL_55;
  }

  tableCopy = table;
  widthCopy = width;
  v10 = 0;
  v56 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0x7FFF7FFFFFFFLL;
  v14 = 0x277D81000uLL;
  v15 = 0x7FFF;
  v53 = 1;
  LODWORD(v16) = 0x7FFFFFFF;
  while (1)
  {
    v61 = v10;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v16;
    v21 = v15;
    v16 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v22 = *v9 == 0x7FFFFFFF || (*v9 & 0xFFFF00000000) == 0x7FFF00000000;
    if (v22 || (v11 | v12) == 0)
    {
      v57 = v19;
      v58 = v13;
      v59 = v18;
      v60 = v9;
      v24 = v14;
      v25 = *(v14 + 336);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction_UNION_RANGES determineShapeOfCellList:compactUp:outRangeIsContigious:outRangeIsRectangular:outRangeIsInOneTable:outRowWidth:]", up, v9);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 2928, 0, "can't have invalid cell references here");

      v14 = v24;
      objc_msgSend_logBacktraceThrottled(*(v24 + 336), v32, v33, v34, v35);
      v18 = v59;
      v9 = v60;
      v19 = v57;
      v17 = v58;
    }

    if (v17 == 0x7FFFFFFF || (v17 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v13 = v16;
      goto LABEL_19;
    }

    v13 = v16;
    if (v19 | v18)
    {
      if (v19 != v11)
      {
        break;
      }

      v13 = v17;
      v11 = v19;
      v22 = v18 == v12;
      v12 = v18;
      if (!v22)
      {
        break;
      }
    }

LABEL_19:
    v15 = WORD2(v16);
    if (v20 == 0x7FFFFFFF || v21 == 0x7FFF)
    {
      v56 = 1;
      goto LABEL_28;
    }

    v36 = v21 != WORD2(v16);
    if (!upCopy)
    {
      v36 = v20 != v16;
    }

    if (!v36)
    {
      if (upCopy)
      {
        if (v20 + 1 != v16)
        {
          goto LABEL_31;
        }

LABEL_40:
        v56 += v53 & 1;
      }

      else
      {
        if (v21 + 1 == WORD2(v16))
        {
          goto LABEL_40;
        }

LABEL_31:
        *contigious = 0;
      }

      v10 = v61 + 1;
      goto LABEL_42;
    }

    if (upCopy)
    {
      if (v21 + 1 == WORD2(v16))
      {
        goto LABEL_34;
      }

LABEL_33:
      *contigious = 0;
      goto LABEL_34;
    }

    if (v20 + 1 != v16)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v61 != v56)
    {
      *rectangular = 0;
      *contigious = 0;
    }

    if (upCopy)
    {
      if (v16 != v13)
      {
        goto LABEL_45;
      }
    }

    else if (WORD2(v16) != WORD2(v13))
    {
LABEL_45:
      v53 = 0;
      *contigious = 0;
      goto LABEL_28;
    }

    v53 = 0;
LABEL_28:
    v10 = 1;
LABEL_42:
    v9 += 3;
    if (v9 == *(list + 1))
    {
      goto LABEL_49;
    }
  }

  *rectangular = 0;
  *contigious = 0;
  *tableCopy = 0;
  v10 = v61;
LABEL_49:
  v37 = v56;
  if (v10 != v56)
  {
    *rectangular = 0;
    *contigious = 0;
  }

  width = widthCopy;
  if (upCopy)
  {
    if (v56)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * ((*(list + 1) - *list) >> 3) / v56;
      goto LABEL_55;
    }

LABEL_54:
    widthCopy2 = width;
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction_UNION_RANGES determineShapeOfCellList:compactUp:outRangeIsContigious:outRangeIsRectangular:outRangeIsInOneTable:outRowWidth:]", up, v9, tableCopy);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v42, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 2994, 0, "0 first row width should be impossible.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v37 = 0;
    width = widthCopy2;
  }

LABEL_55:
  *width = v37;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  contextCopy = context;
  v349 = 0;
  v350 = 0;
  v351 = 0;
  v7 = *arguments;
  v6 = *(arguments + 1);
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v8 = *v7;
  v345 = 0;
  v9 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v8, a2, context, spec, 0, &v345);
  v10 = v345;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v11, v10, v12, v13);
    goto LABEL_115;
  }

  v16 = v6 - v7;
  v344._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v344._coordsForOwnerUid.__tree_.__size_ = 0;
  v344._coordsForOwnerUid.__tree_.__begin_node_ = &v344._coordsForOwnerUid.__tree_.__end_node_;
  v288 = v6 - v7;
  v289 = (v6 - v7) >> 3;
  v17 = 0;
  if (v289 >= 2)
  {
    v295 = (v16 >> 3) & 0x7FFFFFFF;
    v18 = 1;
    v296 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v291 = contextCopy;
    v290 = v9;
    while (1)
    {
      v19 = *(*arguments + 8 * v18);
      v303 = v19;
      if (v19)
      {
        objc_msgSend_formatWithContext_(v19, v20, contextCopy, v21, v22);
      }

      else
      {
        v337 = 0u;
        *v338 = 0u;
      }

      sub_22114F414(&v349, &v337);
      v343 = v17;
      v311 = v18;
      v24 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v303, v23, contextCopy, spec, v18, &v343);
      v14 = v343;

      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v25, v14, v27, v28);
LABEL_61:

        goto LABEL_114;
      }

      if (v24)
      {
        objc_msgSend_rangeRef(v24, v25, v26, v27, v28);
      }

      else
      {
        memset(v321, 0, 32);
      }

      v29 = objc_msgSend_calcEngine(contextCopy, v25, v26, v27, v28);
      IsWithinTable = objc_msgSend_rangeIsWithinTable_(v29, v30, v321, v31, v32);

      if ((IsWithinTable & 1) == 0)
      {
        v167 = objc_msgSend_invalidReferenceError(TSCEError, v34, v35, v36, v37);
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v168, v167, v169, v170);

        v14 = 0;
        goto LABEL_114;
      }

      v342 = 0;
      v309 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v24, v34, contextCopy, spec, v18, 1, &v342);
      v38 = v342;
      if (v38)
      {
        v14 = v38;
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v39, v38, v41, v42);

        goto LABEL_61;
      }

      v43 = objc_msgSend_dimensions(v309, v39, v40, v41, v42);
      v44 = contextCopy;
      *&v337 = v44;
      *(&v337 + 1) = spec;
      *v338 = 0;
      *&v338[8] = v18;
      v47 = 1;
      v338[12] = 1;
      *&v338[13] = 0;
      *&v338[17] = 0;
      v339 = v296;
      v340 = 0;
      v341 = 0;
      v301 = HIDWORD(v43);
      if (HIDWORD(v43))
      {
        v48 = v44;
        v305 = 0;
        v307 = v24;
        v49 = 0;
        while (1)
        {
          v298 = v49;
          if (v43)
          {
            break;
          }

LABEL_29:
          v49 = ++v305 >= v301;
          if (v305 == v301)
          {
            v17 = 0;
            v47 = 1;
            contextCopy = v291;
            v9 = v290;
            v18 = v311;
            goto LABEL_32;
          }
        }

        v50 = 0;
        while (1)
        {
          v51 = objc_msgSend_valueAtGridCoord_accessContext_(v309, v45, (v305 << 32) | v50, &v337, v46);
          if ((objc_msgSend_isReferenceValue(v51, v52, v53, v54, v55) & 1) == 0)
          {
            v59 = MEMORY[0x277D81150];
            v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v57, v58);
            v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v62, v63);
            v69 = objc_msgSend_nativeType(v51, v65, v66, v67, v68);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v70, v60, v64, 3052, 0, "indices inside a range reference should be references, got %d.", v69);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
          }

          v336 = 0;
          v75 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v51, v56, v48, spec, v311, &v336);
          v17 = v336;
          if (v17)
          {
            break;
          }

          if (v75)
          {
            objc_msgSend_rangeRef(v75, v76, v77, v78, v79);
            v81 = *(&v334 + 1);
            v80 = v334;
          }

          else
          {
            v81 = 0;
            v80 = 0;
            v334 = 0u;
            v335 = 0u;
          }

          if (v80 != v81 || ((v81 ^ v80) & 0x101FFFF00000000) != 0)
          {
            v82 = MEMORY[0x277D81150];
            v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v78, v79);
            v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v85, v86);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v88, v83, v87, 3058, 0, "each index inside a range reference should be just one cell.");

            v24 = v307;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
            v80 = v334;
          }

          *v319 = v80;
          *&v319[8] = v335;
          TSCECellRefSet::addCellRef(&v344, v319);

          if (v43 <= ++v50)
          {
            goto LABEL_29;
          }
        }

        v293 = objc_msgSend_raiseErrorOrConvert_(v48, v76, v17, v78, v79);

        contextCopy = v291;
        v9 = v290;
        v18 = v311;
        v47 = v298;
      }

      else
      {
        v17 = 0;
      }

LABEL_32:

      if ((v47 & 1) == 0)
      {
        break;
      }

      if (++v18 == v295)
      {
        goto LABEL_34;
      }
    }

    v14 = v17;
    v15 = v293;
    goto LABEL_114;
  }

LABEL_34:
  *&v337 = 0;
  *(&v337 + 1) = &v337;
  *v338 = 0x4812000000;
  *&v338[8] = sub_221474F04;
  *&v338[16] = sub_221474F28;
  v339.i64[0] = &unk_22188E88F;
  v340 = 0;
  v341 = 0;
  v339.i64[1] = 0;
  v333[0] = MEMORY[0x277D85DD0];
  v333[1] = 3221225472;
  v333[2] = sub_221474F40;
  v333[3] = &unk_2784634A0;
  v333[4] = &v337;
  TSCECellRefSet::enumerateCellRefsUsingBlock(&v344, v333);
  v93 = *(*(&v337 + 1) + 48);
  v94 = *(*(&v337 + 1) + 56);
  v95 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3));
  if (v94 == v93)
  {
    v96 = 0;
  }

  else
  {
    v96 = v95;
  }

  if (v9)
  {
    sub_221478B40(v93, v94, v321, v96, 1);
  }

  else
  {
    sub_22147A6AC(v93, v94, v321, v96, 1);
  }

  objc_msgSend_determineShapeOfCellList_compactUp_outRangeIsContigious_outRangeIsRectangular_outRangeIsInOneTable_outRowWidth_(self, v97, *(&v337 + 1) + 48, v9, &v347 + 1, &v347, &v346, &v348);
  if (TSCECellRefSet::isEmpty(&v344))
  {
    v293 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v98, v99, v100, v101);
    goto LABEL_112;
  }

  if (HIBYTE(v347) == 1)
  {
    if ((v347 & 1) == 0)
    {
      v102 = MEMORY[0x277D81150];
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v100, v101);
      v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v105, v106);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v108, v103, v107, 3088, 0, "contiguous should imply rectangular");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111, v112);
    }

    if (!v348 || (v113 = *(*(&v337 + 1) + 48), v114 = *(*(&v337 + 1) + 56) - v113, 0xAAAAAAAAAAAAAAABLL * (v114 >> 3) % v348))
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v100, v101);
      v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v118, v119);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v121, v116, v120, 3089, 0, "rectangular references should have rowWidth rows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
      v113 = *(*(&v337 + 1) + 48);
      v114 = *(*(&v337 + 1) + 56) - v113;
    }

    v127 = *v113;
    v126 = v113[1];
    v128 = v113[2];
    v129 = *(v113 + v114 - 24);
    v130 = [TSCEReferenceValue alloc];
    *v321 = v127;
    *&v321[8] = v129;
    *&v321[16] = v126;
    *&v321[24] = v128;
    LOBYTE(v334) = 0;
    v293 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v130, v131, contextCopy, v321, &v334);
    objc_msgSend_setIsOutputOfAFunction_(v293, v132, 1, v133, v134);
    sub_221256020(&v349, &v332);
    TSCEFormat::TSCEFormat(v321, &v332);
    objc_msgSend_setFormat_(v293, v135, v321, v136, v137);
    goto LABEL_112;
  }

  if (v347)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(&v337 + 1) + 56) - *(*(&v337 + 1) + 48)) >> 3) % v348)
    {
      v138 = MEMORY[0x277D81150];
      v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v100, v101);
      v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v141, v142);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v144, v139, v143, 3099, 0, "rectangular references should have rowWidth rows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146, v147, v148);
    }

    v334 = 0uLL;
    *&v335 = 0;
    v149 = TSCECellRefSet::count(&v344);
    if (v149)
    {
      for (i = 0; i != v149; ++i)
      {
        v151 = i;
        if (v9)
        {
          v151 = i / v348 + i % v348 * (v149 / v348);
        }

        v152 = *(*(&v337 + 1) + 48) + 24 * v151;
        v314 = *v152;
        v153 = *(v152 + 16);
        v154 = [TSCEReferenceValue alloc];
        *&v155 = vdupq_laneq_s64(v314, 1).u64[0];
        *(&v155 + 1) = v153;
        *v321 = vdupq_lane_s64(v314.i64[0], 0);
        *&v321[16] = v155;
        v319[0] = 0;
        v157 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v154, v156, contextCopy, v321, v319);
        objc_msgSend_setIsOutputOfAFunction_(v157, v158, 1, v159, v160);
        v161 = v157;
        v331 = v161;
        sub_2210ED5B8(&v334, &v331);
      }
    }

    *v319 = v348;
    *&v319[4] = v149 / v348;
    v162 = [TSCEDenseGrid alloc];
    isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v162, v163, &v334, 0, 1, v319);
    sub_221256020(&v349, v321);
    v293 = objc_msgSend_gridValue_format_(TSCEGridValue, v165, isFlattened_dimensions, v321, v166);
  }

  else
  {
    if (v346 != 1)
    {
      memset(v329, 0, sizeof(v329));
      v328._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v328._coordsForOwnerUid.__tree_.__size_ = 0;
      v328._coordsForOwnerUid.__tree_.__begin_node_ = &v328._coordsForOwnerUid.__tree_.__end_node_;
      if (v289 < 2)
      {
LABEL_104:
        v277 = [TSCEDenseGrid alloc];
        v197 = objc_msgSend_initWithValues_(v277, v278, v329, v279, v280);
        sub_221256020(&v349, v321);
        v293 = objc_msgSend_gridValue_format_(TSCEGridValue, v281, v197, v321, v282);
        v200 = v17;
      }

      else
      {
        v191 = (v288 >> 3) & 0x7FFFFFFF;
        v192 = 1;
        v302 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v292 = contextCopy;
        while (1)
        {
          v193 = *(*arguments + 8 * v192);
          v197 = v193;
          if (v193)
          {
            objc_msgSend_formatWithContext_(v193, v194, contextCopy, v195, v196);
          }

          else
          {
            memset(v321, 0, 32);
          }

          sub_22114F414(&v349, v321);
          v327 = v17;
          v310 = v192;
          v199 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v197, v198, contextCopy, spec, v192, &v327);
          v200 = v327;

          if (v200)
          {
            v293 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v201, v200, v203, v204);
            goto LABEL_108;
          }

          if (v199)
          {
            objc_msgSend_rangeRef(v199, v201, v202, v203, v204);
          }

          else
          {
            v334 = 0u;
            v335 = 0u;
          }

          v205 = objc_msgSend_calcEngine(contextCopy, v201, v202, v203, v204);
          v209 = objc_msgSend_rangeIsWithinTable_(v205, v206, &v334, v207, v208);

          if ((v209 & 1) == 0)
          {
            v283 = objc_msgSend_invalidReferenceError(TSCEError, v210, v211, v212, v213);
            v293 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v284, v283, v285, v286);

            v200 = 0;
            goto LABEL_109;
          }

          v326 = 0;
          v312 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v199, v210, contextCopy, spec, v310, 1, &v326);
          v214 = v326;
          if (v214)
          {
            break;
          }

          v219 = objc_msgSend_dimensions(v312, v215, v216, v217, v218);
          v220 = contextCopy;
          *v321 = v220;
          *&v321[8] = spec;
          *&v321[16] = 0;
          *&v321[24] = v310;
          v223 = 1;
          v321[28] = 1;
          *&v321[29] = 0;
          v322 = 0;
          v323 = v302;
          v324 = 0;
          v325 = 0;
          v306 = HIDWORD(v219);
          if (HIDWORD(v219))
          {
            v224 = v220;
            v297 = v199;
            v299 = v197;
            v308 = 0;
            v225 = 0;
            v226 = v310;
            while (1)
            {
              v304 = v225;
              if (v219)
              {
                break;
              }

LABEL_99:
              v225 = ++v308 >= v306;
              if (v308 == v306)
              {
                v17 = 0;
                v223 = 1;
                contextCopy = v292;
                v197 = v299;
                v191 = (v288 >> 3) & 0x7FFFFFFF;
                v199 = v297;
                goto LABEL_102;
              }
            }

            v227 = 0;
            while (1)
            {
              v228 = objc_msgSend_valueAtGridCoord_accessContext_(v312, v221, (v308 << 32) | v227, v321, v222);
              if ((objc_msgSend_isReferenceValue(v228, v229, v230, v231, v232) & 1) == 0)
              {
                v236 = MEMORY[0x277D81150];
                v237 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v233, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v234, v235);
                v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v238, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v239, v240);
                v246 = objc_msgSend_nativeType(v228, v242, v243, v244, v245);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v236, v247, v237, v241, 3176, 0, "indices inside a range reference should be references, instead got %d.", v246);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v248, v249, v250, v251);
              }

              v320 = 0;
              v252 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v228, v233, v224, spec, v226, &v320);
              v17 = v320;
              if (v17)
              {
                break;
              }

              if (v252)
              {
                objc_msgSend_rangeRef(v252, v253, v254, v255, v256);
                v257 = *v319;
                v258 = *&v319[8];
              }

              else
              {
                v258 = 0;
                v257 = 0;
                memset(v319, 0, sizeof(v319));
              }

              if (v257.row != v258 || ((v258 ^ *&v257) & 0x101FFFF00000000) != 0)
              {
                v259 = MEMORY[0x277D81150];
                v260 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v253, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v255, v256);
                v264 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v261, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v262, v263);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v259, v265, v260, v264, 3183, 0, "each index inside a range reference should be just one cell.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v266, v267, v268, v269);
                v226 = v310;
                v257 = *v319;
              }

              v318.coordinate = v257;
              v318._tableUID = *&v319[16];
              if ((TSCECellRefSet::containsCellRef(&v328, &v318) & 1) == 0)
              {
                v270 = [TSCEReferenceValue alloc];
                TSCERangeRef::TSCERangeRef(&v317, &v318);
                v316 = 0;
                v272 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v270, v271, v224, &v317, &v316);
                objc_msgSend_setPermitsAccessInsideMergeRegions_(v272, v273, 1, v274, v275);
                v276 = v272;
                v315 = v276;
                sub_2210ED5B8(v329, &v315);

                TSCECellRefSet::addCellRef(&v328, &v318);
              }

              if (v219 <= ++v227)
              {
                goto LABEL_99;
              }
            }

            v293 = objc_msgSend_raiseErrorOrConvert_(v224, v253, v17, v255, v256);

            contextCopy = v292;
            v197 = v299;
            v191 = (v288 >> 3) & 0x7FFFFFFF;
            v199 = v297;
            v223 = v304;
          }

          else
          {
            v17 = 0;
          }

LABEL_102:

          if ((v223 & 1) == 0)
          {
            goto LABEL_110;
          }

          v192 = v310 + 1;
          if (v310 + 1 == v191)
          {
            goto LABEL_104;
          }
        }

        v200 = v214;
        v293 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v215, v214, v217, v218);

LABEL_108:
      }

LABEL_109:

      v17 = v200;
LABEL_110:
      sub_22107C800(&v328, v328._coordsForOwnerUid.__tree_.__end_node_.__left_);
      v190 = v329;
      goto LABEL_111;
    }

    sub_22147A67C(*(*(&v337 + 1) + 48), *(*(&v337 + 1) + 56), v321);
    v334 = 0uLL;
    *&v335 = 0;
    v171 = *(*(&v337 + 1) + 56) - *(*(&v337 + 1) + 48);
    if (v171)
    {
      v172 = 0;
      v173 = 0xAAAAAAAAAAAAAAABLL * (v171 >> 3);
      if (v173 <= 1)
      {
        v174 = 1;
      }

      else
      {
        v174 = v173;
      }

      do
      {
        v175 = *(*(&v337 + 1) + 48) + v172;
        v176 = *(v175 + 16);
        *v319 = *v175;
        *&v319[16] = v176;
        v177 = [TSCEReferenceValue alloc];
        TSCERangeRef::TSCERangeRef(v321, v319);
        LOBYTE(v317.range._topLeft.row) = 0;
        v179 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v177, v178, contextCopy, v321, &v317);
        objc_msgSend_setIsOutputOfAFunction_(v179, v180, 1, v181, v182);
        v183 = v179;
        v330 = v183;
        sub_2210ED5B8(&v334, &v330);

        v172 += 24;
        --v174;
      }

      while (v174);
    }

    v184 = [TSCEDenseGrid alloc];
    isFlattened_dimensions = objc_msgSend_initWithValues_(v184, v185, &v334, v186, v187);
    sub_221256020(&v349, v321);
    v293 = objc_msgSend_gridValue_format_(TSCEGridValue, v188, isFlattened_dimensions, v321, v189);
  }

  v190 = &v334;
LABEL_111:
  *v321 = v190;
  sub_22107C2C0(v321);
LABEL_112:
  v14 = v17;
  _Block_object_dispose(&v337, 8);
  v15 = v293;
  if (v339.i64[1])
  {
    v340 = v339.i64[1];
    operator delete(v339.i64[1]);
  }

LABEL_114:
  sub_22107C800(&v344, v344._coordsForOwnerUid.__tree_.__end_node_.__left_);
LABEL_115:

  if (v349)
  {
    v350 = v349;
    operator delete(v349);
  }

  return v15;
}

@end