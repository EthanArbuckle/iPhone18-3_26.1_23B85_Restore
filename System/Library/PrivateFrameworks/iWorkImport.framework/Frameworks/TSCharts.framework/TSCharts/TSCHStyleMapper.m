@interface TSCHStyleMapper
+ (id)mappedStyleWithMapper:(id)a3 forStyle:(id)a4 bakeComputable:(BOOL)a5;
+ (id)mappedStylesWithMapper:(id)a3 forStyles:(id)a4 bakeComputable:(BOOL)a5;
+ (id)mapperWithMapper:(id)a3;
+ (void)replaceReferencedStylesInMap:(id)a3 withMapper:(id)a4;
- (TSCHStyleMapper)initWithMapper:(id)a3;
- (id)mappedStyleForStyle:(id)a3 bakeComputable:(BOOL)a4;
- (void)replaceReferencedStylesInMap:(id)a3;
@end

@implementation TSCHStyleMapper

+ (void)replaceReferencedStylesInMap:(id)a3 withMapper:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v7)
  {
    v11 = objc_msgSend_copy(v5, v6, v8, v9, v10);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_27632D770;
    v16[3] = &unk_27A6B9A40;
    v17 = v7;
    v18 = v5;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v11, v12, v13, v14, v15, v16);
  }
}

+ (id)mappedStyleWithMapper:(id)a3 forStyle:(id)a4 bakeComputable:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v12 = v7;
  if (a3)
  {
    v13 = objc_msgSend_mappedStyleForStyle_bakeComputable_(a3, v8, v9, v10, v11, v7, v5);
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  return v14;
}

+ (id)mappedStylesWithMapper:(id)a3 forStyles:(id)a4 bakeComputable:(BOOL)a5
{
  v7 = a3;
  v12 = v7;
  if (v7)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_27632D97C;
    v19[3] = &unk_27A6B9A68;
    v20 = v7;
    v21 = a5;
    v17 = objc_msgSend_tsu_arrayByTransformingWithBlock_(a4, v13, v14, v15, v16, v19);
  }

  else
  {
    v17 = objc_msgSend_copy(a4, v8, v9, v10, v11);
  }

  return v17;
}

+ (id)mapperWithMapper:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 alloc];
    v10 = objc_msgSend_initWithMapper_(v5, v6, v7, v8, v9, v4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TSCHStyleMapper)initWithMapper:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v29.receiver = self;
    v29.super_class = TSCHStyleMapper;
    v10 = [(TSCHStyleMapper *)&v29 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_underlyingMapper, a3);
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHStyleMapper initWithMapper:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 157, 0, "invalid nil value for '%{public}s'", "mapper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v12 = 0;
  }

  return v12;
}

- (void)replaceReferencedStylesInMap:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v14 = objc_msgSend_underlyingMapper(self, v6, v7, v8, v9);
  objc_msgSend_replaceReferencedStylesInMap_withMapper_(v5, v10, v11, v12, v13, v4, v14);
}

- (id)mappedStyleForStyle:(id)a3 bakeComputable:(BOOL)a4
{
  v6 = a3;
  v11 = objc_msgSend_mappedStyleForStyle_(self->_underlyingMapper, v7, v8, v9, v10, v6);
  v16 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v12, v13, v14, v15);
  v21 = objc_msgSend_propertyMap(v6, v17, v18, v19, v20);
  v26 = objc_msgSend_allProperties(v21, v22, v23, v24, v25);
  objc_msgSend_addProperties_(v16, v27, v28, v29, v30, v26);

  v35 = objc_msgSend_propertyMap(v11, v31, v32, v33, v34);
  v40 = objc_msgSend_allProperties(v35, v36, v37, v38, v39);
  objc_msgSend_addProperties_(v16, v41, v42, v43, v44, v40);

  v49 = objc_msgSend_fullPropertyMap(v6, v45, v46, v47, v48);
  v54 = objc_msgSend_propertyMapWithProperties_(v49, v50, v51, v52, v53, v16);

  if (!a4)
  {
    objc_opt_class();
    v59 = TSUDynamicCast();

    if (v59)
    {
      if (qword_280A47AE0 != -1)
      {
        sub_2764A8690();
      }

      v60 = objc_msgSend_mutableCopy(qword_280A47AD8, v55, v56, v57, v58);
      v65 = objc_msgSend_overriddenProperties(v6, v61, v62, v63, v64);
      objc_msgSend_removeProperties_(v60, v66, v67, v68, v69, v65);

      objc_msgSend_removeValuesForProperties_(v54, v70, v71, v72, v73, v60);
    }
  }

  if (objc_msgSend_isVariation(v11, v55, v56, v57, v58))
  {
    v78 = objc_msgSend_parent(v11, v74, v75, v76, v77);
  }

  else
  {
    v78 = v11;
  }

  v83 = v78;
  objc_msgSend_replaceReferencedStylesInMap_(self, v79, v80, v81, v82, v54);
  v88 = objc_msgSend_targetStylesheet(self, v84, v85, v86, v87);
  v93 = objc_msgSend_variationOfStyle_propertyMap_(v88, v89, v90, v91, v92, v83, v54);

  return v93;
}

@end