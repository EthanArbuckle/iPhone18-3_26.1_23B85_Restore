@interface TSCEGridValue
+ (BOOL)valueAtGridCoordPassesCriteria:(TSCEGridAccessContext *)a3 coord:(TSCEGridCoord)a4 criteria:(id)a5 outError:(id *)a6;
+ (BOOL)valueAtIndexPassesCriteria:(TSCEGridAccessContext *)a3 index:(unint64_t)a4 criteria:(id)a5;
+ (id)emptyGrid;
+ (id)gridValue:(id)a3;
+ (id)gridValue:(id)a3 format:(const TSCEFormat *)a4;
+ (id)sortCriteriaByCost:(id)a3;
- (TSCEGridValue)init;
- (TSCEGridValue)initWithGrid:(id)a3;
- (TSCEGridValue)initWithGrid:(id)a3 format:(const TSCEFormat *)a4;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepResolveInPlace:(id)a3;
- (id)resolvedValueAtGridCoord:(TSCEGridCoord)a3 accessContext:(TSCEGridAccessContext *)a4;
- (id)subGridValueAtGridCoord:(TSCEGridCoord)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6;
- (id)uniqueIndexForGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 considerTypeForUnique:(BOOL)a6 rowOffset:(unint64_t)a7;
- (id)uniqueIndexesFor2DGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 byRowProcessing:(BOOL)a6 uniqueMode:(unint64_t)a7;
- (id)valueAtGridCoord:(TSCEGridCoord)a3 accessContext:(TSCEGridAccessContext *)a4;
- (id)valueAtIndexNoThrow:(TSCEGridAccessContext *)a3 index:(unint64_t)a4;
- (unint64_t)count;
@end

@implementation TSCEGridValue

+ (id)emptyGrid
{
  v2 = objc_alloc_init(TSCEGridValue);

  return v2;
}

+ (id)gridValue:(id)a3
{
  v3 = a3;
  v4 = [TSCEGridValue alloc];
  v8 = objc_msgSend_initWithGrid_(v4, v5, v3, v6, v7);

  return v8;
}

+ (id)gridValue:(id)a3 format:(const TSCEFormat *)a4
{
  v5 = a3;
  v6 = [TSCEGridValue alloc];
  v9 = objc_msgSend_initWithGrid_format_(v6, v7, v5, a4, v8);

  return v9;
}

- (TSCEGridValue)init
{
  v3.receiver = self;
  v3.super_class = TSCEGridValue;
  return [(TSCEValue *)&v3 init];
}

- (TSCEGridValue)initWithGrid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCEGridValue;
  v6 = [(TSCEValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grid, a3);
  }

  return v7;
}

- (TSCEGridValue)initWithGrid:(id)a3 format:(const TSCEFormat *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCEGridValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_grid, a3);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TSCEGridValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:0];
  objc_storeStrong(v4 + 7, self->_grid);
  return v4;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  grid = self->_grid;
  objc_msgSend_format(self, a2, a3, a4, *&a5, a6, a7);
  v10 = objc_msgSend_gridValue_format_(TSCEGridValue, v8, grid, &v12, v9);

  return v10;
}

- (id)deepResolveInPlace:(id)a3
{
  v6 = objc_msgSend_deepResolveInPlace_(self->_grid, a2, a3, v3, v4);
  grid = self->_grid;
  self->_grid = v6;

  return self;
}

- (unint64_t)count
{
  result = self->_grid;
  if (result)
  {
    return objc_msgSend_count(result, a2, v2, v3, v4);
  }

  return result;
}

- (id)valueAtGridCoord:(TSCEGridCoord)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v7 = a3;
  v5 = objc_msgSend_valueAtGridCoord_accessContext_(self->_grid, a2, &v7, a4, v4);

  return v5;
}

- (id)resolvedValueAtGridCoord:(TSCEGridCoord)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v7 = a3;
  v5 = objc_msgSend_resolvedValueAtGridCoord_accessContext_(self->_grid, a2, &v7, a4, v4);

  return v5;
}

- (id)valueAtIndexNoThrow:(TSCEGridAccessContext *)a3 index:(unint64_t)a4
{
  if (objc_msgSend_count(self, a2, a3, a4, v4) <= a4)
  {
    v12 = objc_msgSend_errorForErrorType_(TSCEError, v8, 24, v9, v10);
    v11 = objc_msgSend_errorValue_(TSCEErrorValue, v13, v12, v14, v15);
  }

  else
  {
    v11 = objc_msgSend_valueAtIndex_accessContext_(self->_grid, v8, a4, a3, v10);
  }

  return v11;
}

- (id)subGridValueAtGridCoord:(TSCEGridCoord)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6
{
  v8 = a3;
  v6 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(self->_grid, a2, &v8, *&a4, *&a5, a6);

  return v6;
}

- (id)uniqueIndexForGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 considerTypeForUnique:(BOOL)a6 rowOffset:(unint64_t)a7
{
  v87 = a6;
  v84 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, *&a5);
  v85 = a4;
  v83 = objc_msgSend_functionIndex(a4, v11, v12, v13, v14);
  v19 = objc_msgSend_count(self, v15, v16, v17, v18);
  v20 = a3;
  v90[0] = v20;
  v90[1] = a4;
  v91 = 0;
  v92 = a5;
  v93[0] = 0;
  *(v93 + 3) = 0;
  v94 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v95 = 0;
  v96 = 0;
  v82 = objc_msgSend_locale(v20, v21, v22, v23, v24);
  v81 = objc_msgSend_locale(v82, v25, v26, v27, v28);
  if (v19)
  {
    v31 = 0;
    v88 = v20;
    do
    {
      v32 = objc_msgSend_valueAtIndex_accessContext_(self, v29, v31, v90, v30);
      if ((objc_msgSend_isError(v32, v33, v34, v35, v36) & 1) == 0 && (objc_msgSend_isNil(v32, v37, v38, v39, v40) & 1) == 0)
      {
        if (v87)
        {
          if (objc_msgSend_isReferenceValue(v32, v41, v42, v43, v44))
          {
            v49 = objc_msgSend_asReferenceValue(v32, v45, v46, v47, v48);
            v52 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v49, v50, v88, 1, v51);

            v56 = objc_msgSend_errorWithContext_(v52, v53, v88, v54, v55);

            v32 = v52;
            objc_msgSend_canonicalKeyStringForLocale_(v52, v57, v82, v58, v59);
          }

          else
          {
            v56 = 0;
            objc_msgSend_canonicalKeyStringForLocale_(v32, v45, v82, v47, v48);
          }

          v69 = v68 = v56;
        }

        else
        {
          v89 = 0;
          v60 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v32, v41, v20, v85, a5, &v89);
          v61 = v89;
          v66 = v61;
          if (v83 == 345)
          {
            v67 = objc_msgSend_lowercaseStringWithLocale_(v60, v62, v81, v64, v65);

            v68 = v66;
            v69 = v67;
          }

          else
          {
            v68 = v61;
            v69 = v60;
          }
        }

        v20 = v88;
        if (!v68)
        {
          v20 = v88;
          if (objc_msgSend_length(v69, v62, v63, v64, v65))
          {
            v77 = objc_msgSend_objectForKey_(v84, v70, v69, v71, v72);
            if (!v77)
            {
              v77 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v73, v74, v75, v76);
              objc_msgSend_setObject_forKey_(v84, v78, v77, v69, v79);
            }

            objc_msgSend_addIndex_(v77, v73, a7, v75, v76);
          }
        }
      }

      ++v31;
      ++a7;
    }

    while (v19 != v31);
  }

  return v84;
}

- (id)uniqueIndexesFor2DGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 byRowProcessing:(BOOL)a6 uniqueMode:(unint64_t)a7
{
  v190 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, *&a5);
  v192 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13, v14, v15);
  v204[0] = a3;
  v204[1] = a4;
  v205 = 0;
  v206 = a5;
  v207[0] = 0;
  *(v207 + 3) = 0;
  v208 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v209 = 0;
  v210 = 0;
  v193 = v204[0];
  v20 = objc_msgSend_locale(v204[0], v16, v17, v18, v19);
  v189 = objc_msgSend_locale(v20, v21, v22, v23, v24);
  v188 = a5;
  v203 = objc_msgSend_dimensions(self, v25, v26, v27, v28);
  v201 = 0;
  v202 = 0;
  v199 = 0;
  v200 = 0;
  v191 = v20;
  if (a6)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v211[0] = objc_msgSend_valueAtGridCoord_accessContext_(self, v29, v31, v204, v30);
      if (objc_msgSend_isReferenceValue(v211[0], v33, v34, v35, v36))
      {
        v41 = objc_msgSend_asReferenceValue(v211[0], v37, v38, v39, v40);
        v44 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v41, v42, v193, 1, v43);
        v45 = v211[0];
        v211[0] = v44;
      }

      v46 = objc_msgSend_nativeType(v211[0], v37, v38, v39, v40);
      if (v46 == 5)
      {
        break;
      }

      if (v46 == 7)
      {
        v198 = 0;
        v51 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v211[0], v47, v193, a4, v188, &v198);
        v52 = v198;
        v56 = objc_msgSend_lowercaseStringWithLocale_(v51, v53, v189, v54, v55);

        v60 = objc_msgSend_stringValue_(TSCEStringValue, v57, v56, v58, v59);
        v61 = v211[0];
        v211[0] = v60;

LABEL_14:
      }

      sub_221179A54(&v199, v211);
      row = v202.row;
      v31 = TSCEGridDimensions::nextCoordRowMajorOrder(&v203, &v202);
      v202 = v31;
      if (row != HIDWORD(v31))
      {
        v83 = [TSTGroupValueTuple alloc];
        v86 = objc_msgSend_initWithTSCEValues_locale_(v83, v84, &v199, v20, v85);
        v90 = objc_msgSend_objectForKey_(v192, v87, v86, v88, v89);
        v95 = v90;
        if (v90)
        {
          if (a7 == 1)
          {
            v96 = objc_msgSend_unsignedIntegerValue(v90, v91, v92, v93, v94);
            objc_msgSend_removeIndex_(v190, v97, v96, v98, v99);
          }
        }

        else
        {
          v100 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v91, row, v93, v94);
          objc_msgSend_setObject_forKey_(v192, v101, v100, v86, v102);

          objc_msgSend_addIndex_(v190, v103, row, v104, v105);
        }

        v106 = v199;
        for (i = v200; i != v106; i -= 8)
        {
          v108 = *(i - 8);
        }

        v200 = v106;

        v20 = v191;
      }

      if (v31 == 0x7FFFFFFF || HIDWORD(v31) == 0x7FFFFFFF)
      {
        goto LABEL_51;
      }
    }

    v52 = objc_msgSend_asNumberValue(v211[0], v47, v48, v49, v50);
    if (objc_msgSend_hasUnits(v52, v62, v63, v64, v65))
    {
      v197._tskFormat = objc_msgSend_decimalRepresentation(v52, v66, v67, v68, v69);
      *&v197._formatType = v70;
      v73 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v70, &v197, v71, v72);

      v74 = v73;
      v52 = v74;
    }

    else
    {
      v74 = objc_msgSend_copy(v211[0], v66, v67, v68, v69);
    }

    v75 = v211[0];
    v211[0] = v74;

    if (!v32)
    {
      v32 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v76, 256, v20, v77);
    }

    v78 = v211[0];
    TSCEFormat::TSCEFormat(&v196, v32, 0);
    TSCEFormat::TSCEFormat(&v197, &v196);
    objc_msgSend_setFormat_(v78, v79, &v197, v80, v81);
    goto LABEL_14;
  }

  v109 = 0;
  v32 = 0;
  do
  {
    v211[0] = objc_msgSend_valueAtGridCoord_accessContext_(self, v29, v109, v204, v30);
    if (objc_msgSend_isReferenceValue(v211[0], v110, v111, v112, v113))
    {
      v118 = objc_msgSend_asReferenceValue(v211[0], v114, v115, v116, v117);
      v121 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v118, v119, v193, 1, v120);
      v122 = v211[0];
      v211[0] = v121;
    }

    v123 = objc_msgSend_nativeType(v211[0], v114, v115, v116, v117);
    if (v123 == 5)
    {
      v129 = objc_msgSend_asNumberValue(v211[0], v124, v125, v126, v127);
      if (objc_msgSend_hasUnits(v129, v139, v140, v141, v142))
      {
        v197._tskFormat = objc_msgSend_decimalRepresentation(v129, v143, v144, v145, v146);
        *&v197._formatType = v147;
        v150 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v147, &v197, v148, v149);

        v151 = v150;
        v129 = v151;
      }

      else
      {
        v151 = objc_msgSend_copy(v211[0], v143, v144, v145, v146);
      }

      v152 = v211[0];
      v211[0] = v151;

      if (!v32)
      {
        v32 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v153, 256, v20, v154);
      }

      v155 = v211[0];
      TSCEFormat::TSCEFormat(&v194, v32, 0);
      TSCEFormat::TSCEFormat(&v197, &v194);
      objc_msgSend_setFormat_(v155, v156, &v197, v157, v158);
    }

    else
    {
      if (v123 != 7)
      {
        goto LABEL_40;
      }

      v195 = 0;
      v128 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v211[0], v124, v193, a4, v188, &v195);
      v129 = v195;
      v133 = objc_msgSend_lowercaseStringWithLocale_(v128, v130, v189, v131, v132);

      v137 = objc_msgSend_stringValue_(TSCEStringValue, v134, v133, v135, v136);
      v138 = v211[0];
      v211[0] = v137;
    }

LABEL_40:
    sub_221179A54(&v199, v211);
    column = v202.column;
    v109 = TSCEGridDimensions::nextCoordColumnMajorOrder(&v203, &v202);
    v202 = v109;
    if (column != v109)
    {
      v160 = [TSTGroupValueTuple alloc];
      v163 = objc_msgSend_initWithTSCEValues_locale_(v160, v161, &v199, v20, v162);
      v167 = objc_msgSend_objectForKey_(v192, v164, v163, v165, v166);
      v172 = v167;
      if (v167)
      {
        if (a7 == 1)
        {
          v173 = objc_msgSend_unsignedIntegerValue(v167, v168, v169, v170, v171);
          objc_msgSend_removeIndex_(v190, v174, v173, v175, v176);
        }
      }

      else
      {
        v177 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v168, column, v170, v171);
        objc_msgSend_setObject_forKey_(v192, v178, v177, v163, v179);

        objc_msgSend_addIndex_(v190, v180, column, v181, v182);
      }

      v183 = v199;
      for (j = v200; j != v183; j -= 8)
      {
        v185 = *(j - 8);
      }

      v200 = v183;

      v20 = v191;
    }
  }

  while (v109 != 0x7FFFFFFF && (v109 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
LABEL_51:

  v197._tskFormat = &v199;
  sub_22107C2C0(&v197);

  return v190;
}

+ (id)sortCriteriaByCost:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5, v6, v7) < 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = objc_msgSend_sortedArrayUsingComparator_(v3, v8, &unk_2834A2430, v9, v10);
  }

  v12 = v11;

  return v12;
}

+ (BOOL)valueAtGridCoordPassesCriteria:(TSCEGridAccessContext *)a3 coord:(TSCEGridCoord)a4 criteria:(id)a5 outError:(id *)a6
{
  v72 = a5;
  v71 = a3->var0;
  if (!v71)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSCEGridValue valueAtGridCoordPassesCriteria:coord:criteria:outError:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEGridValue.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 562, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v26 = objc_msgSend_count(v72, v8, v9, v10, v11);
  if (v26)
  {
    v69 = a6;
    v27 = 1;
    while (1)
    {
      v28 = objc_msgSend_objectAtIndex_(v72, v23, v27 - 1, v24, v25);
      v33 = objc_msgSend_first(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_value(v33, v34, v35, v36, v37);
      v39 = a3->var1;
      v74 = 0;
      v41 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v38, v40, v71, v39, 0, 1, &v74);
      v42 = v74;

      if (v42)
      {
        goto LABEL_16;
      }

      v47 = objc_msgSend_second(v28, v43, v44, v45, v46);
      if (objc_msgSend_gridKind(v41, v48, v49, v50, v51) == 1 && objc_msgSend_count(v41, v52, v53, v54, v55) >= 2)
      {
        break;
      }

      v58 = objc_msgSend_valueAtGridCoord_accessContext_(v41, v52, *&a4, a3, v55);
      v73 = 0;
      v61 = objc_msgSend_compare_outError_(v47, v59, v58, &v73, v60);
      v62 = v73;
      v42 = v62;
      if (v62)
      {
        if (objc_msgSend_errorType(v62, v63, v64, v65, v66) == 68)
        {
          v67 = v42;
          *v69 = v42;

LABEL_16:
          v47 = v41;
          v41 = v33;
          v33 = v28;
          v28 = v42;
          goto LABEL_18;
        }

        v61 = 0;
      }

      if (v27 < v26)
      {
        ++v27;
        if (v61)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    *v69 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v52, v56, v57, v55);
LABEL_18:

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

LABEL_19:

  return v61;
}

+ (BOOL)valueAtIndexPassesCriteria:(TSCEGridAccessContext *)a3 index:(unint64_t)a4 criteria:(id)a5
{
  v53 = a4;
  v6 = a5;
  v14 = objc_msgSend_count(v6, v7, v8, v9, v10);
  if (v14)
  {
    v15 = 1;
    while (1)
    {
      v16 = objc_msgSend_objectAtIndex_(v6, v11, v15 - 1, v12, v13, v53);
      v21 = objc_msgSend_first(v16, v17, v18, v19, v20);
      v26 = objc_msgSend_value(v21, v22, v23, v24, v25);
      v31 = objc_msgSend_gridValue(v26, v27, v28, v29, v30);

      v36 = objc_msgSend_second(v16, v32, v33, v34, v35);
      if (objc_msgSend_gridKind(v31, v37, v38, v39, v40) == 1 && objc_msgSend_count(v31, v41, v42, v43, v44) > 1)
      {
        v45 = 0;
        v46 = 1;
      }

      else
      {
        v47 = objc_msgSend_valueAtIndex_accessContext_(v31, v41, v53, a3, v44);
        v54 = 0;
        v50 = objc_msgSend_compare_outError_(v36, v48, v47, &v54, v49);
        v46 = (v54 == 0) & v50;

        v45 = 1;
      }

      if ((v45 & 1) == 0)
      {
        break;
      }

      if (v15++ >= v14 || !v46)
      {
        goto LABEL_12;
      }
    }

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

LABEL_12:

  return v46;
}

@end