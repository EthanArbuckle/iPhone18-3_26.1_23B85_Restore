@interface TSCHStyleSwapUndoTuple
+ (id)convertedSwapTuplesForSwapTuples:(id)a3 chartInfo:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSwappingSameStyleObject:(id)a3;
- (BOOL)isSwappingSameStyleValues:(id)a3;
- (TSCHStyleOwnerReference)styleOwnerReference;
- (TSCHStyleSemanticTag)semanticTag;
- (TSCHStyleSwapUndoTuple)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCHStyleSwapUndoTuple)initWithChartInfo:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7;
- (TSCHStyleSwapUndoTuple)initWithChartInfo:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 refLineUUID:(id)a8;
- (TSCHStyleSwapUndoTuple)initWithChartStylePreset:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7;
- (TSCHStyleSwapUndoTuple)initWithPersistentStyleSwapSupporting:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 refLineUUID:(id)a8;
- (TSSPropertySet)mutatedProperties;
- (id)convertedSwapTupleForChartInfo:(id)a3;
- (id)description;
- (id)inverse;
- (id)migratedStyleForStyle:(id)a3 documentRoot:(id)a4;
- (id)migratedSwapTupleForDocumentRoot:(id)a3;
- (id)p_nonequalPropertiesFromMap:(id)a3 toMap:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHStyleSwapUndoTuple

+ (id)convertedSwapTuplesForSwapTuples:(id)a3 chartInfo:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "+[TSCHStyleSwapUndoTuple convertedSwapTuplesForSwapTuples:chartInfo:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 58, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_276310BE4;
  v33[3] = &unk_27A6B9950;
  v26 = v7;
  v34 = v26;
  v31 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v5, v27, v28, v29, v30, v33);

  return v31;
}

- (TSCHStyleSwapUndoTuple)initWithPersistentStyleSwapSupporting:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 refLineUUID:(id)a8
{
  v46 = a5;
  v47 = a3;
  v13 = a6;
  v14 = a7;
  v16 = a8;
  if (!(v13 | v14))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHStyleSwapUndoTuple initWithPersistentStyleSwapSupporting:swapType:index:oldValue:newValue:refLineUUID:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 72, 0, "At least one value must be not nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v48.receiver = self;
  v48.super_class = TSCHStyleSwapUndoTuple;
  v35 = [(TSCHStyleSwapUndoTuple *)&v48 init];
  v36 = v35;
  if (v35)
  {
    v35->_swapType = a4;
    v35->_index = v46;
    objc_storeStrong(&v35->_styleSwapSupporting, a3);
    objc_storeStrong(&v36->_oldValue, a6);
    objc_storeStrong(&v36->_newValue, a7);
    mutatedProperties = v36->_mutatedProperties;
    v36->_mutatedProperties = 0;

    v42 = objc_msgSend_copy(v16, v38, v39, v40, v41);
    refLineUUID = v36->_refLineUUID;
    v36->_refLineUUID = v42;
  }

  return v36;
}

- (TSCHStyleSwapUndoTuple)initWithChartInfo:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 refLineUUID:(id)a8
{
  v12 = *&a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v18 = a8;
  if (!v14)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v19, v20, v21, "[TSCHStyleSwapUndoTuple initWithChartInfo:swapType:index:oldValue:newValue:refLineUUID:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 89, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v37 = objc_msgSend_drawableInfo(v14, v17, v19, v20, v21);
  v42 = objc_msgSend_initWithPersistentStyleSwapSupporting_swapType_index_oldValue_newValue_refLineUUID_(self, v38, v39, v40, v41, v37, v12, a5, v15, v16, v18);

  return v42;
}

- (TSCHStyleSwapUndoTuple)initWithChartInfo:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a6;
  v15 = a7;
  if (!v12)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCHStyleSwapUndoTuple initWithChartInfo:swapType:index:oldValue:newValue:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 95, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_refLineUUID_(self, v14, v16, v17, v18, v12, v10, a5, v13, v15, 0);

  return v34;
}

- (TSCHStyleSwapUndoTuple)initWithChartStylePreset:(id)a3 swapType:(int)a4 index:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a6;
  v15 = a7;
  if (!v12)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCHStyleSwapUndoTuple initWithChartStylePreset:swapType:index:oldValue:newValue:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 100, 0, "invalid nil value for '%{public}s'", "chartPreset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_initWithPersistentStyleSwapSupporting_swapType_index_oldValue_newValue_refLineUUID_(self, v14, v16, v17, v18, v12, v10, a5, v13, v15, 0);

  return v34;
}

- (id)inverse
{
  v3 = [TSCHStyleSwapUndoTuple alloc];
  styleSwapSupporting = self->_styleSwapSupporting;
  v9 = objc_msgSend_swapType(self, v5, v6, v7, v8);
  v14 = objc_msgSend_index(self, v10, v11, v12, v13);
  v19 = objc_msgSend_afterValue(self, v15, v16, v17, v18);
  v24 = objc_msgSend_beforeValue(self, v20, v21, v22, v23);
  v29 = objc_msgSend_initWithPersistentStyleSwapSupporting_swapType_index_oldValue_newValue_refLineUUID_(v3, v25, v26, v27, v28, styleSwapSupporting, v9, v14, v19, v24, 0);

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    isEqual = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(v5, v7, v8, v9, v10, v6))
    {
      v15 = v5;
      v16 = v15;
      if (self->_styleSwapSupporting == v15[5] && self->_oldValue == v15[1] && self->_newValue == v15[2] && self->_index == *(v15 + 7) && self->_swapType == *(v15 + 6))
      {
        isEqual = sub_27631154C(self->_refLineUUID, v15[4]);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = objc_msgSend_isEqual_(v5, v11, v12, v13, v14, self);
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)isSwappingSameStyleObject:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_index == v4[7] && self->_swapType == v4[6];

  return v5;
}

- (BOOL)isSwappingSameStyleValues:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ((v6 = v4[1], v7 = self->_oldValue, v8 = v6, !(v7 | v8)) || (v13 = v8, v14 = objc_msgSend_isEqual_(v7, v9, v10, v11, v12, v8), v13, v7, v14)))
  {
    v15 = v5[2];
    v16 = self->_newValue;
    v18 = v15;
    if (v16 | v18)
    {
      isEqual = objc_msgSend_isEqual_(v16, v17, v19, v20, v21, v18);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)p_nonequalPropertiesFromMap:(id)a3 toMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D80AB8]);
  v12 = objc_msgSend_initWithPropertyMap_(v7, v8, v9, v10, v11, v5);
  objc_msgSend_minusPropertyMap_(v12, v13, v14, v15, v16, v6);
  v21 = objc_msgSend_allProperties(v12, v17, v18, v19, v20);

  return v21;
}

- (TSSPropertySet)mutatedProperties
{
  mutatedProperties = self->_mutatedProperties;
  if (!mutatedProperties)
  {
    v4 = objc_alloc_init(MEMORY[0x277D80AA8]);
    v9 = objc_msgSend_afterValue(self, v5, v6, v7, v8);
    v15 = objc_msgSend_propertyMap(v9, v10, v11, v12, v13);
    if (v15)
    {
      v19 = objc_msgSend_beforeValue(self, v14, v16, v17, v18);
      v24 = objc_msgSend_propertyMap(v19, v20, v21, v22, v23);

      if (v24)
      {
        v29 = objc_msgSend_beforeValue(self, v25, v26, v27, v28);
        v34 = objc_msgSend_propertyMap(v29, v30, v31, v32, v33);
        v39 = objc_msgSend_copy(v34, v35, v36, v37, v38);

        v44 = objc_msgSend_afterValue(self, v40, v41, v42, v43);
        v49 = objc_msgSend_propertyMap(v44, v45, v46, v47, v48);
        objc_msgSend_minusPropertyMap_(v39, v50, v51, v52, v53, v49);

        v58 = objc_msgSend_allProperties(v39, v54, v55, v56, v57);
        objc_msgSend_addProperties_(v4, v59, v60, v61, v62, v58);

        v67 = objc_msgSend_afterValue(self, v63, v64, v65, v66);
        v72 = objc_msgSend_propertyMap(v67, v68, v69, v70, v71);
        v77 = objc_msgSend_copy(v72, v73, v74, v75, v76);

        v82 = objc_msgSend_beforeValue(self, v78, v79, v80, v81);
        v87 = objc_msgSend_propertyMap(v82, v83, v84, v85, v86);
        objc_msgSend_minusPropertyMap_(v77, v88, v89, v90, v91, v87);

        v96 = objc_msgSend_allProperties(v77, v92, v93, v94, v95);
        objc_msgSend_addProperties_(v4, v97, v98, v99, v100, v96);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v101 = objc_msgSend_afterValue(self, v25, v26, v27, v28);
    v106 = objc_msgSend_propertyMap(v101, v102, v103, v104, v105);

    if (v106)
    {
      v77 = objc_msgSend_afterValue(self, v107, v108, v109, v110);
      v96 = objc_msgSend_propertyMap(v77, v111, v112, v113, v114);
      v119 = objc_msgSend_allProperties(v96, v115, v116, v117, v118);
      objc_msgSend_addProperties_(v4, v120, v121, v122, v123, v119);
    }

    else
    {
      v124 = objc_msgSend_beforeValue(self, v107, v108, v109, v110);
      v129 = objc_msgSend_propertyMap(v124, v125, v126, v127, v128);

      if (!v129)
      {
LABEL_12:
        v146 = objc_msgSend_copy(v4, v130, v131, v132, v133);
        v147 = self->_mutatedProperties;
        self->_mutatedProperties = v146;

        mutatedProperties = self->_mutatedProperties;
        goto LABEL_13;
      }

      v77 = objc_msgSend_beforeValue(self, v130, v131, v132, v133);
      v96 = objc_msgSend_propertyMap(v77, v134, v135, v136, v137);
      v119 = objc_msgSend_allProperties(v96, v138, v139, v140, v141);
      objc_msgSend_addProperties_(v4, v142, v143, v144, v145, v119);
    }

LABEL_11:
    goto LABEL_12;
  }

LABEL_13:

  return mutatedProperties;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v57.receiver = self;
  v57.super_class = TSCHStyleSwapUndoTuple;
  v4 = [(TSCHStyleSwapUndoTuple *)&v57 description];
  v9 = objc_msgSend_initWithFormat_(v3, v5, v6, v7, v8, @"%@ = {\n", v4);

  objc_msgSend_appendFormat_(v9, v10, v11, v12, v13, @"\tstyleSwapSupporting = %@,\n", self->_styleSwapSupporting);
  v14 = sub_2762E6140(self->_swapType);
  objc_msgSend_appendFormat_(v9, v15, v16, v17, v18, @"\tswapType = %@,\n", v14);

  objc_msgSend_appendFormat_(v9, v19, v20, v21, v22, @"\tindex = %lu,\n", self->_index);
  objc_opt_class();
  v23 = TSUDynamicCast();
  v28 = v23;
  if (v23)
  {
    oldValue = objc_msgSend_shortDescription(v23, v24, v25, v26, v27);
  }

  else
  {
    oldValue = self->_oldValue;
  }

  objc_msgSend_appendFormat_(v9, v24, v25, v26, v27, @"\toldValue = %@,\n", oldValue);
  if (v28)
  {
  }

  objc_opt_class();
  v30 = TSUDynamicCast();
  v35 = v30;
  if (v30)
  {
    newValue = objc_msgSend_shortDescription(v30, v31, v32, v33, v34);
  }

  else
  {
    newValue = self->_newValue;
  }

  objc_msgSend_appendFormat_(v9, v31, v32, v33, v34, @"\tnewValue = %@,\n", newValue);
  if (v35)
  {
  }

  if (self->_refLineUUID)
  {
    v41 = objc_msgSend_refLineUUID(self, v37, v38, v39, v40);
    v46 = objc_msgSend_UUIDString(v41, v42, v43, v44, v45);
    objc_msgSend_appendFormat_(v9, v47, v48, v49, v50, @"\trefLineUUID = %@,\n", v46);
  }

  objc_msgSend_appendString_(v9, v37, v38, v39, v40, @"};\n");
  v55 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v51, v52, v53, v54, v9);

  return v55;
}

- (TSCHStyleSemanticTag)semanticTag
{
  v3 = [TSCHStyleSemanticTag alloc];
  v8 = objc_msgSend_swapType(self, v4, v5, v6, v7);
  v13 = objc_msgSend_index(self, v9, v10, v11, v12);
  v18 = objc_msgSend_initWithType_index_(v3, v14, v15, v16, v17, v8, v13);

  return v18;
}

- (TSCHStyleOwnerReference)styleOwnerReference
{
  v6 = objc_msgSend_swapType(self, a2, v2, v3, v4);
  v7 = sub_2762E60FC(v6);
  v13 = objc_msgSend_index(self, v8, v9, v10, v11);

  return objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v12, v14, v15, v16, v7, v13);
}

- (id)migratedStyleForStyle:(id)a3 documentRoot:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHStyleSwapUndoTuple migratedStyleForStyle:documentRoot:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 241, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v28 = v6;
  if (v28)
  {
    v32 = objc_msgSend_swapType(self, v27, v29, v30, v31);
    if (v32 > 0xE || (v37 = v28, ((1 << v32) & 0x4954) == 0))
    {
      v37 = objc_msgSend_migratedStyleForStyle_(v8, v33, v34, v35, v36, v28);
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)migratedSwapTupleForDocumentRoot:(id)a3
{
  v74 = a3;
  if (!v74)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHStyleSwapUndoTuple migratedSwapTupleForDocumentRoot:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 252, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_beforeValue(self, v4, v5, v6, v7);
  v28 = objc_msgSend_migratedStyleForStyle_documentRoot_(self, v24, v25, v26, v27, v23, v74);

  v33 = objc_msgSend_afterValue(self, v29, v30, v31, v32);
  v38 = objc_msgSend_migratedStyleForStyle_documentRoot_(self, v34, v35, v36, v37, v33, v74);

  if (v28)
  {
    v43 = v28;
  }

  else
  {
    v43 = objc_msgSend_beforeValue(self, v39, v40, v41, v42);
  }

  v48 = v43;
  if (v38)
  {
    v49 = v38;
  }

  else
  {
    v49 = objc_msgSend_afterValue(self, v44, v45, v46, v47);
  }

  v50 = v49;
  v51 = [TSCHStyleSwapUndoTuple alloc];
  styleSwapSupporting = self->_styleSwapSupporting;
  v57 = objc_msgSend_swapType(self, v53, v54, v55, v56);
  v62 = objc_msgSend_index(self, v58, v59, v60, v61);
  v67 = objc_msgSend_refLineUUID(self, v63, v64, v65, v66);
  v72 = objc_msgSend_initWithPersistentStyleSwapSupporting_swapType_index_oldValue_newValue_refLineUUID_(v51, v68, v69, v70, v71, styleSwapSupporting, v57, v62, v48, v50, v67);

  return v72;
}

- (id)convertedSwapTupleForChartInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHStyleSwapUndoTuple convertedSwapTupleForChartInfo:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 265, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_styleSwapSupporting(self, v4, v6, v7, v8);

  if (v24 == v5)
  {
    v55 = self;
  }

  else
  {
    v25 = [TSCHStyleSwapUndoTuple alloc];
    v30 = objc_msgSend_swapType(self, v26, v27, v28, v29);
    v35 = objc_msgSend_index(self, v31, v32, v33, v34);
    v40 = objc_msgSend_beforeValue(self, v36, v37, v38, v39);
    v45 = objc_msgSend_afterValue(self, v41, v42, v43, v44);
    v50 = objc_msgSend_refLineUUID(self, v46, v47, v48, v49);
    v55 = objc_msgSend_initWithPersistentStyleSwapSupporting_swapType_index_oldValue_newValue_refLineUUID_(v25, v51, v52, v53, v54, v5, v30, v35, v40, v45, v50);
  }

  return v55;
}

- (TSCHStyleSwapUndoTuple)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v76.receiver = self;
  v76.super_class = TSCHStyleSwapUndoTuple;
  v8 = [(TSCHStyleSwapUndoTuple *)&v76 init];
  if (!v8)
  {
LABEL_20:
    v28 = v8;
    goto LABEL_21;
  }

  v12 = *(a3 + 4);
  if ((v12 & 1) != 0 && (~v12 & 0x30) == 0 && ((v12 & 2) != 0 || (v12 & 4) != 0))
  {
    v29 = *(a3 + 15);
    if ((v29 - 1) >= 0xF)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "TSCHStyleSwapType styleSwapTypeFromArchiveStyleSwapType(TSCH::StyleSwapType)");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 380, 0, "Invalid style owner type.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
      v29 = 1;
    }

    v45 = *(a3 + 14);
    v8->_swapType = v29;
    v8->_index = v45;
    v46 = *(a3 + 4);
    if (v46)
    {
      v47 = *(a3 + 3);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = sub_276312908;
      v74[3] = &unk_27A6B9978;
      v75 = v8;
      sub_27631285C(v6, v47, &unk_2885A4498, v74);

      v46 = *(a3 + 4);
    }

    if ((v46 & 2) != 0)
    {
      v48 = *(a3 + 4);
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_276312914;
      v72[3] = &unk_27A6B99A0;
      v73 = v8;
      v49 = v6;
      v50 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v49, v51, v52, v53, v54, v48, v50, 0, v72);

      v46 = *(a3 + 4);
    }

    if ((v46 & 4) != 0)
    {
      v55 = *(a3 + 5);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_276312920;
      v70[3] = &unk_27A6B99A0;
      v71 = v8;
      v56 = v6;
      v57 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v56, v58, v59, v60, v61, v55, v57, 0, v70);

      v46 = *(a3 + 4);
    }

    if ((v46 & 8) != 0)
    {
      v62 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(a3 + 6))
      {
        v67 = objc_msgSend_tsp_initWithMessage_(v62, v63, v64, v65, v66, *(a3 + 6));
      }

      else
      {
        v67 = objc_msgSend_tsp_initWithMessage_(v62, v63, v64, v65, v66, MEMORY[0x277D809E0]);
      }

      refLineUUID = v8->_refLineUUID;
      v8->_refLineUUID = v67;
    }

    goto LABEL_20;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHStyleSwapUndoTuple initWithArchive:unarchiver:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 393, 0, "Invalid StyleSwapUndoTupleArchive");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  v28 = 0;
LABEL_21:

  return v28;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v63 = a4;
  v11 = objc_msgSend_styleSwapSupporting(self, v6, v7, v8, v9);
  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHStyleSwapUndoTuple saveToArchive:archiver:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 427, 0, "invalid nil value for '%{public}s'", "drawableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  *(a3 + 4) |= 1u;
  v30 = *(a3 + 3);
  if (!v30)
  {
    v31 = *(a3 + 1);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x277C97B90](v31);
    *(a3 + 3) = v30;
  }

  objc_msgSend_setStrongReference_message_(v63, v10, v12, v13, v14, v11, v30);
  swapType = self->_swapType;
  if ((swapType - 1) >= 0xF)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "TSCH::StyleSwapType archiveStyleSwapTypeFromStyleSwapType(TSCHStyleSwapType)");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 326, 0, "Invalid style owner type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    swapType = 1;
  }

  v52 = *(a3 + 4);
  *(a3 + 4) = v52 | 0x20;
  *(a3 + 15) = swapType;
  index = self->_index;
  *(a3 + 4) = v52 | 0x30;
  *(a3 + 14) = index;
  oldValue = self->_oldValue;
  if (oldValue)
  {
    *(a3 + 4) = v52 | 0x32;
    v55 = *(a3 + 4);
    if (!v55)
    {
      v56 = *(a3 + 1);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x277C97B90](v56);
      *(a3 + 4) = v55;
    }

    objc_msgSend_setStrongReference_message_(v63, v32, v33, v34, v35, oldValue, v55);
  }

  newValue = self->_newValue;
  if (newValue)
  {
    *(a3 + 4) |= 4u;
    v58 = *(a3 + 5);
    if (!v58)
    {
      v59 = *(a3 + 1);
      if (v59)
      {
        v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
      }

      v58 = MEMORY[0x277C97B90](v59);
      *(a3 + 5) = v58;
    }

    objc_msgSend_setStrongReference_message_(v63, v32, v33, v34, v35, newValue, v58);
  }

  refLineUUID = self->_refLineUUID;
  if (refLineUUID)
  {
    *(a3 + 4) |= 8u;
    v61 = *(a3 + 6);
    if (!v61)
    {
      v62 = *(a3 + 1);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x277C97B40](v62);
      *(a3 + 6) = v61;
    }

    objc_msgSend_tsp_saveToMessage_(refLineUUID, v32, v33, v34, v35, v61);
  }
}

@end