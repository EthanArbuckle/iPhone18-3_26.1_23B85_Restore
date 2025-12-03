@interface TSCHStyleMapper
+ (id)mappedStyleWithMapper:(id)mapper forStyle:(id)style bakeComputable:(BOOL)computable;
+ (id)mappedStylesWithMapper:(id)mapper forStyles:(id)styles bakeComputable:(BOOL)computable;
+ (id)mapperWithMapper:(id)mapper;
+ (void)replaceReferencedStylesInMap:(id)map withMapper:(id)mapper;
- (TSCHStyleMapper)initWithMapper:(id)mapper;
- (id)mappedStyleForStyle:(id)style bakeComputable:(BOOL)computable;
- (void)replaceReferencedStylesInMap:(id)map;
@end

@implementation TSCHStyleMapper

+ (void)replaceReferencedStylesInMap:(id)map withMapper:(id)mapper
{
  mapCopy = map;
  mapperCopy = mapper;
  if (mapperCopy)
  {
    v11 = objc_msgSend_copy(mapCopy, v6, v8, v9, v10);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_27632D770;
    v16[3] = &unk_27A6B9A40;
    v17 = mapperCopy;
    v18 = mapCopy;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v11, v12, v13, v14, v15, v16);
  }
}

+ (id)mappedStyleWithMapper:(id)mapper forStyle:(id)style bakeComputable:(BOOL)computable
{
  computableCopy = computable;
  styleCopy = style;
  v12 = styleCopy;
  if (mapper)
  {
    v13 = objc_msgSend_mappedStyleForStyle_bakeComputable_(mapper, v8, v9, v10, v11, styleCopy, computableCopy);
  }

  else
  {
    v13 = styleCopy;
  }

  v14 = v13;

  return v14;
}

+ (id)mappedStylesWithMapper:(id)mapper forStyles:(id)styles bakeComputable:(BOOL)computable
{
  mapperCopy = mapper;
  v12 = mapperCopy;
  if (mapperCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_27632D97C;
    v19[3] = &unk_27A6B9A68;
    v20 = mapperCopy;
    computableCopy = computable;
    v17 = objc_msgSend_tsu_arrayByTransformingWithBlock_(styles, v13, v14, v15, v16, v19);
  }

  else
  {
    v17 = objc_msgSend_copy(styles, v8, v9, v10, v11);
  }

  return v17;
}

+ (id)mapperWithMapper:(id)mapper
{
  if (mapper)
  {
    mapperCopy = mapper;
    v5 = [self alloc];
    v10 = objc_msgSend_initWithMapper_(v5, v6, v7, v8, v9, mapperCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TSCHStyleMapper)initWithMapper:(id)mapper
{
  mapperCopy = mapper;
  if (mapperCopy)
  {
    v29.receiver = self;
    v29.super_class = TSCHStyleMapper;
    v10 = [(TSCHStyleMapper *)&v29 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_underlyingMapper, mapper);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHStyleMapper initWithMapper:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 157, 0, "invalid nil value for '%{public}s'", "mapper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)replaceReferencedStylesInMap:(id)map
{
  mapCopy = map;
  v5 = objc_opt_class();
  v14 = objc_msgSend_underlyingMapper(self, v6, v7, v8, v9);
  objc_msgSend_replaceReferencedStylesInMap_withMapper_(v5, v10, v11, v12, v13, mapCopy, v14);
}

- (id)mappedStyleForStyle:(id)style bakeComputable:(BOOL)computable
{
  styleCopy = style;
  v11 = objc_msgSend_mappedStyleForStyle_(self->_underlyingMapper, v7, v8, v9, v10, styleCopy);
  v16 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v12, v13, v14, v15);
  v21 = objc_msgSend_propertyMap(styleCopy, v17, v18, v19, v20);
  v26 = objc_msgSend_allProperties(v21, v22, v23, v24, v25);
  objc_msgSend_addProperties_(v16, v27, v28, v29, v30, v26);

  v35 = objc_msgSend_propertyMap(v11, v31, v32, v33, v34);
  v40 = objc_msgSend_allProperties(v35, v36, v37, v38, v39);
  objc_msgSend_addProperties_(v16, v41, v42, v43, v44, v40);

  v49 = objc_msgSend_fullPropertyMap(styleCopy, v45, v46, v47, v48);
  v54 = objc_msgSend_propertyMapWithProperties_(v49, v50, v51, v52, v53, v16);

  if (!computable)
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
      v65 = objc_msgSend_overriddenProperties(styleCopy, v61, v62, v63, v64);
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