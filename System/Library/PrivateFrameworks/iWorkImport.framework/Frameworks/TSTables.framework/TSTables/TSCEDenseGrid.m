@interface TSCEDenseGrid
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (TSCEDenseGrid)initWithValueGrid:(id)a3;
- (TSCEDenseGrid)initWithValues:(const void *)a3;
- (TSCEDenseGrid)initWithValues:(const void *)a3 gridKind:(char)a4;
- (TSCEDenseGrid)initWithValues:(const void *)a3 gridKind:(char)a4 isFlattened:(BOOL)a5;
- (TSCEDenseGrid)initWithValues:(const void *)a3 gridKind:(char)a4 isFlattened:(BOOL)a5 dimensions:(const TSCEGridDimensions *)a6;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)asDate:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asReference:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asValueGrid:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepResolveInPlace:(id)a3;
- (id)error;
- (id)errorWithContext:(id)a3;
- (id)flattenedGrid:(TSCEGridAccessContext *)a3 format:(const TSCEFormat *)a4;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6;
- (id)valueAtIndex:(unint64_t)a3 accessContext:(TSCEGridAccessContext *)a4;
@end

@implementation TSCEDenseGrid

- (TSCEDenseGrid)initWithValueGrid:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = TSCEDenseGrid;
  v6 = [(TSCEAbstractGrid *)&v39 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueGrid, a3);
    v8->_gridKind = 0;
    v8->_isFlattened = 1;
    if (objc_msgSend_count(v5, v9, v10, v11, v12) && objc_msgSend_topLeftCoord(v5, v13, v14, v15, v16))
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEDenseGrid initWithValueGrid:]", v15, v16);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v20, v21);
      v38 = objc_msgSend_topLeftCoord(v5, v23, v24, v25, v26);
      v31 = sub_2211786FC(&v38, v27, v28, v29, v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v32, v18, v22, 34, 0, "Warning, making a TSCEDenseGrid with a non-zero based offset: %@", v31);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    objc_msgSend_compressToZeroBased(v7->_valueGrid, v13, v14, v15, v16);
  }

  return v8;
}

- (TSCEDenseGrid)initWithValues:(const void *)a3
{
  v4[0] = (*(a3 + 1) - *a3) >> 3;
  v4[1] = 1;
  return objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(self, a2, a3, 0, 1, v4);
}

- (TSCEDenseGrid)initWithValues:(const void *)a3 gridKind:(char)a4
{
  v5[0] = (*(a3 + 1) - *a3) >> 3;
  v5[1] = 1;
  return objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(self, a2, a3, a4, 1, v5);
}

- (TSCEDenseGrid)initWithValues:(const void *)a3 gridKind:(char)a4 isFlattened:(BOOL)a5
{
  v6[0] = (*(a3 + 1) - *a3) >> 3;
  v6[1] = 1;
  return objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(self, a2, a3, a4, a5, v6);
}

- (TSCEDenseGrid)initWithValues:(const void *)a3 gridKind:(char)a4 isFlattened:(BOOL)a5 dimensions:(const TSCEGridDimensions *)a6
{
  v17.receiver = self;
  v17.super_class = TSCEDenseGrid;
  v10 = [(TSCEAbstractGrid *)&v17 init];
  if (v10)
  {
    v11 = [TSCEValueGrid alloc];
    v14 = objc_msgSend_initWithValueVector_dimensions_(v11, v12, a3, a6, v13);
    valueGrid = v10->_valueGrid;
    v10->_valueGrid = v14;

    v10->_gridKind = a4;
    v10->_isFlattened = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEDenseGrid alloc];
  v9 = objc_msgSend_copy(self->_valueGrid, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithValueGrid_(v4, v10, v9, v11, v12);

  v13[16] = self->_gridKind;
  v13[17] = self->_isFlattened;
  return v13;
}

- (char)deepType:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (objc_msgSend_count(self, v7, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_valueAtIndex_(self, v11, 0, v12, v13);
    v17 = objc_msgSend_deepType_outError_(v14, v15, v6, a4, v16);
  }

  else
  {
    v17 = 9;
  }

  return v17;
}

- (id)errorWithContext:(id)a3
{
  v7 = objc_msgSend_count(self, a2, a3, v3, v4);
  if (v7)
  {
    if (v7 == 1)
    {
      v12 = objc_msgSend_valueAtIndex_(self, v8, 0, v10, v11);
      v16 = objc_msgSend_errorWithContext_(v12, v13, a3, v14, v15);
    }

    else
    {
      v16 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v8, v9, v10, v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)asValueGrid:(id)a3
{
  v5 = objc_msgSend_copy(self->_valueGrid, a2, a3, v3, v4);

  return v5;
}

- (id)deepResolveInPlace:(id)a3
{
  objc_msgSend_deepResolveInPlace_(self->_valueGrid, a2, a3, v3, v4);
  if (self->_gridKind == 2)
  {
    self->_gridKind = 0;
  }

  return self;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asNumber:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 152, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self, v10, v11, v12, v13) == 1)
  {
    v30 = objc_msgSend_firstValue(self->_valueGrid, v26, v27, v28, v29);
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, v14, a4, v7, a6);
  }

  else
  {
    *a6 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
    v32 = objc_msgSend_zero(TSCENumberValue, v33, v34, v35, v36);
  }

  return v32;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asDate:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 162, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self, v10, v11, v12, v13) == 1)
  {
    v30 = objc_msgSend_firstValue(self->_valueGrid, v26, v27, v28, v29);
    v32 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v31, v14, a4, v7, a6);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
    *a6 = v32 = 0;
  }

  return v32;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asBoolean:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 172, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self, v10, v11, v12, v13) == 1)
  {
    v30 = objc_msgSend_firstValue(self->_valueGrid, v26, v27, v28, v29);
    v32 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v30, v31, v14, a4, v7, a6);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
    *a6 = v32 = 0;
  }

  return v32;
}

- (id)asReference:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asReference:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 182, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self, v10, v11, v12, v13) == 1)
  {
    v30 = objc_msgSend_firstValue(self->_valueGrid, v26, v27, v28, v29);
    v32 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v30, v31, v14, a4, v7, a6);
  }

  else
  {
    *a6 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
    v32 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v33, v34, v35, v36);
  }

  return v32;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asString:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 192, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self, v10, v11, v12, v13) == 1)
  {
    v30 = objc_msgSend_firstValue(self->_valueGrid, v26, v27, v28, v29);
    v32 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v30, v31, v14, a4, v7, a6);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
    *a6 = v32 = 0;
  }

  return v32;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asRawString:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 202, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self, v10, v11, v12, v13) == 1)
  {
    v30 = objc_msgSend_firstValue(self->_valueGrid, v26, v27, v28, v29);
    v32 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v30, v31, v14, a4, v7, a6);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
    *a6 = v32 = 0;
  }

  return v32;
}

- (id)valueAtIndex:(unint64_t)a3 accessContext:(TSCEGridAccessContext *)a4
{
  if (!self->_isFlattened)
  {
    v8 = objc_msgSend_valueAt1DIndex_(self->_valueGrid, a2, a3, a4, v4);
    v17 = a4->var0;
    v36 = a4->var1;
    if (!a4->var6)
    {
      if (objc_msgSend_isReferenceValue(v8, v32, v33, v34, v35))
      {
        var3 = a4->var3;
        v143 = 0;
        v42 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v8, v37, v17, v36, var3, &v143);
        v26 = v143;
        if (v26)
        {
          v31 = objc_msgSend_errorValue_(TSCEErrorValue, v43, v26, v45, v46);

LABEL_49:
          goto LABEL_60;
        }

        if (a4->var5)
        {
          v64 = objc_msgSend_calcEngine(v17, v43, v44, v45, v46);
          objc_msgSend_resetResolver_(v42, v65, v64, v66, v67);
        }

        isOutputOfAFunction = objc_msgSend_isOutputOfAFunction(v42, v43, v44, v45, v46);
        if (v17)
        {
          v73 = isOutputOfAFunction;
        }

        else
        {
          v73 = 0;
        }

        if (v73 == 1)
        {
          if (v42)
          {
            objc_msgSend_anyRef(v42, v69, v70, v71, v72);
          }

          else
          {
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v145 = 0u;
          }

          objc_msgSend_addCalculatedPrecedent_(v17, v69, &v145, v71, v72);
        }
      }

      v84 = TSCEGridAccessContext::argSpec(a4, v37, v38, v39, v40);
      v85 = v84;
      if (v84)
      {
        v86 = objc_msgSend_accessorMode(v84, v32, v33, v34, v35);
        v91 = objc_msgSend_argumentType(v85, v87, v88, v89, v90);
        if (v86 >= 2 && (v86 != 2 || v91 == 1))
        {
          v92 = objc_msgSend_argumentAccessor(v85, v32, v33, v34, v35);
          v142 = v8;
          v26 = (*(*v92 + 16))(v92, &v142, a4, self->_gridKind == 0);
          v93 = v142;

          if (v26)
          {
            v31 = objc_msgSend_errorValue_(TSCEErrorValue, v32, v26, v34, v35);
            v8 = v93;
            goto LABEL_49;
          }

          v8 = v93;
        }
      }
    }

    if (a4->var7)
    {
      if (objc_msgSend_nativeType(v8, v32, v33, v34, v35) == 6)
      {
        v98 = objc_msgSend_asReferenceValue(v8, v94, v95, v96, v97);
        v103 = objc_msgSend_evalRef(v98, v99, v100, v101, v102);
        a4->var9 = objc_msgSend_getHidingActionForRows_(v103, v104, 0, v105, v106);

        v111 = objc_msgSend_asReferenceValue(v8, v107, v108, v109, v110);
        v116 = objc_msgSend_evalRef(v111, v112, v113, v114, v115);
        a4->var10 = objc_msgSend_getHidingActionForRows_(v116, v117, 1, v118, v119);
      }

      else
      {
        *&a4->var9 = 0;
      }
    }

    v8 = v8;
    v26 = 0;
    v31 = v8;
    goto LABEL_49;
  }

  v8 = a4->var0;
  v12 = objc_msgSend_valueAt1DIndex_(self->_valueGrid, v9, a3, v10, v11);
  v17 = v12;
  if (a4->var7)
  {
    *&a4->var9 = 0;
  }

  if (a4->var6)
  {
    goto LABEL_58;
  }

  if (objc_msgSend_isReferenceValue(v12, v13, v14, v15, v16))
  {
    v22 = a4->var1;
    v23 = a4->var3;
    v150 = 0;
    v25 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v17, v24, v8, v22, v23, &v150);
    v26 = v150;

    if (v26)
    {
      v31 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v26, v29, v30);

      goto LABEL_60;
    }

    if (a4->var5)
    {
      v74 = objc_msgSend_calcEngine(v8, v27, v28, v29, v30);
      objc_msgSend_resetResolver_(v25, v75, v74, v76, v77);
    }

    v78 = objc_msgSend_isOutputOfAFunction(v25, v27, v28, v29, v30);
    if (v8)
    {
      v83 = v78;
    }

    else
    {
      v83 = 0;
    }

    if (v83 == 1)
    {
      if (v25)
      {
        objc_msgSend_anyRef(v25, v79, v80, v81, v82);
      }

      else
      {
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
      }

      objc_msgSend_addCalculatedPrecedent_(v8, v79, &v145, v81, v82);
    }

    v63 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v25, v79, v8, 1, v82);
  }

  else
  {
    if (objc_msgSend_isCategoryRefValue(v17, v18, v19, v20, v21))
    {
      v51 = objc_msgSend_asCategoryRefValue(v17, v47, v48, v49, v50);
      v55 = objc_msgSend_referredToValue_(v51, v52, v8, v53, v54);
    }

    else
    {
      if (!objc_msgSend_isViewTractRefValue(v17, v47, v48, v49, v50))
      {
        v63 = v17;
        goto LABEL_53;
      }

      v51 = objc_msgSend_asViewTractRefValue(v17, v56, v57, v58, v59);
      v55 = objc_msgSend_referredToValue_(v51, v60, v8, v61, v62);
    }

    v63 = v55;
  }

LABEL_53:
  v120 = TSCEGridAccessContext::argSpec(a4, v56, v57, v58, v59);
  v125 = v120;
  if (v120 && (v126 = objc_msgSend_accessorMode(v120, v121, v122, v123, v124), v131 = objc_msgSend_argumentType(v125, v127, v128, v129, v130), v126 >= 2) && (v126 != 2 || v131 == 1))
  {
    v138 = objc_msgSend_argumentAccessor(v125, v132, v133, v134, v135);
    v144 = v63;
    v26 = (*(*v138 + 16))(v138, &v144, a4, self->_gridKind == 0);
    v17 = v144;

    if (v26)
    {
      v136 = objc_msgSend_errorValue_(TSCEErrorValue, v139, v26, v140, v141);
      goto LABEL_59;
    }
  }

  else
  {
    v17 = v63;
  }

LABEL_58:
  v136 = v17;
  v17 = v136;
  v26 = 0;
LABEL_59:
  v31 = v136;
LABEL_60:

  return v31;
}

- (id)flattenedGrid:(TSCEGridAccessContext *)a3 format:(const TSCEFormat *)a4
{
  if (objc_msgSend_gridKind(self, a2, a3, a4, v4))
  {
    v12.receiver = self;
    v12.super_class = TSCEDenseGrid;
    v10 = [(TSCEAbstractGrid *)&v12 flattenedGrid:a3 format:a4];
  }

  else
  {
    v10 = objc_msgSend_gridValue_format_(TSCEGridValue, v8, self, a4, v9);
  }

  return v10;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6
{
  v7 = objc_msgSend_subGridAtGridCoord_width_height_(self->_valueGrid, a2, a3, *&a4, *&a5, a6);
  v8 = [TSCEDenseGrid alloc];
  v12 = objc_msgSend_initWithValueGrid_(v8, v9, v7, v10, v11);
  v12[17] = self->_isFlattened;
  v16 = objc_msgSend_gridValue_(TSCEGridValue, v13, v12, v14, v15);

  return v16;
}

- (id)error
{
  v10 = 0;
  v3 = objc_msgSend_deepType_outError_(self, a2, 0, &v10, v2);
  v7 = v10;
  if (v3 == 9)
  {
    v8 = objc_msgSend_errorForErrorType_(TSCEError, v4, 27, v5, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end