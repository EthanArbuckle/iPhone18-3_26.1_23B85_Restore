@interface TSCH3DLabelResources
- (TSCH3DLabelResources)initWithSize:(const void *)a3;
- (TSWPStyleProviding)styleProvidingSource;
- (id)paragraphStyleForKey:(unint64_t)a3 defaultStyle:(id)a4;
- (id)prepareTextureAtlasWithSamples:(float)a3;
- (id)resourceAtIndex:(const void *)a3 string:(id)a4 bitmapContextInfo:(id)a5 labelWidth:(double)a6;
- (void)setParagraphStyle:(id)a3 atIndex:(const void *)a4;
- (void)setParagraphStyle:(id)a3 forKey:(unint64_t)a4 atIndex:(const void *)a5;
@end

@implementation TSCH3DLabelResources

- (TSCH3DLabelResources)initWithSize:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = TSCH3DLabelResources;
  v3 = [(TSCH3DArray2DResources *)&v7 initWithSize:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v3->_cache;
    v3->_cache = v4;
  }

  return v3;
}

- (id)prepareTextureAtlasWithSamples:(float)a3
{
  v5 = a3;
  atlas = self->_atlas;
  if (!atlas || (objc_msgSend_samples(atlas, a2, *&a3, v3, v4), v8 != v5) && (*&a3 = vabdd_f64(v5, v8), v3 = 0.00999999978, *&a3 >= 0.00999999978))
  {
    *&v9 = v5;
    v10 = objc_msgSend_atlasWithSamples_(TSCH3DTextureAtlas, a2, v9, v3, v4);
    v11 = self->_atlas;
    self->_atlas = v10;
  }

  v12 = self->_atlas;

  return v12;
}

- (id)paragraphStyleForKey:(unint64_t)a3 defaultStyle:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v7, v8, v9, v10, a3);
  v16 = objc_msgSend_objectForKey_(self->_cache, v12, v13, v14, v15, v11);
  if (!v16)
  {
    v16 = v6;
    objc_msgSend_setObject_forKey_(self->_cache, v17, v18, v19, v20, v16, v11);
  }

  return v16;
}

- (void)setParagraphStyle:(id)a3 atIndex:(const void *)a4
{
  v25 = a3;
  atlas = self->_atlas;
  if (atlas)
  {
    objc_msgSend_samples(atlas, v6, v7, v8, v9);
    v11 = *&v7;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = objc_msgSend_styleProvidingSource(self, v6, v7, v8, v9);
  v15 = objc_msgSend_labelAttributesWithParagraphStyle_string_bitmapContextInfo_labelWidth_renderSamples_styleProvidingSource_(TSCH3DLabelResourceAttributes, v13, 0.0, v11, v14, v25, 0, 0, v12);

  v20 = objc_msgSend_resourceWithLabelAttributes_(TSCH3DLabelResource, v16, v17, v18, v19, v15);
  objc_msgSend_setResource_atIndex_(self, v21, v22, v23, v24, v20, a4);
}

- (void)setParagraphStyle:(id)a3 forKey:(unint64_t)a4 atIndex:(const void *)a5
{
  v13 = objc_msgSend_paragraphStyleForKey_defaultStyle_(self, a2, v5, v6, v7, a4, a3);
  objc_msgSend_setParagraphStyle_atIndex_(self, v9, v10, v11, v12);
}

- (id)resourceAtIndex:(const void *)a3 string:(id)a4 bitmapContextInfo:(id)a5 labelWidth:(double)a6
{
  v10 = a4;
  v12 = a5;
  if (!v10)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DLabelResources resourceAtIndex:string:bitmapContextInfo:labelWidth:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 76, 0, "invalid nil value for '%{public}s'", "string");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v133.receiver = self;
  v133.super_class = TSCH3DLabelResources;
  v32 = [(TSCH3DStringIndexedResources *)&v133 resourceAtIndex:a3 string:v10];
  if (!v32)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCH3DLabelResources resourceAtIndex:string:bitmapContextInfo:labelWidth:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 79, 0, "invalid nil value for '%{public}s'", "label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  v51 = objc_msgSend_attributes(v32, v31, v33, v34, v35);

  if (!v51)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "[TSCH3DLabelResources resourceAtIndex:string:bitmapContextInfo:labelWidth:]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 81, 0, "invalid nil value for '%{public}s'", "label.attributes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  }

  v71 = objc_msgSend_attributes(v32, v52, v53, v54, v55);
  v76 = objc_msgSend_paragraphStyle(v71, v72, v73, v74, v75);

  if (!v76)
  {
    v81 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "[TSCH3DLabelResources resourceAtIndex:string:bitmapContextInfo:labelWidth:]");
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v88, v89, v90, v91, v82, v87, 82, 0, "invalid nil value for '%{public}s'", "label.attributes.paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94, v95);
  }

  v96 = objc_msgSend_attributes(v32, v77, v78, v79, v80);
  v102 = objc_msgSend_paragraphStyle(v96, v97, v98, v99, v100);
  atlas = self->_atlas;
  if (atlas)
  {
    objc_msgSend_samples(atlas, v101, v103, v104, v105);
    v107 = *&v103;
  }

  else
  {
    v107 = 1.0;
  }

  v108 = objc_msgSend_styleProvidingSource(self, v101, v103, v104, v105);
  v111 = objc_msgSend_labelAttributesWithParagraphStyle_string_bitmapContextInfo_labelWidth_renderSamples_styleProvidingSource_(TSCH3DLabelResourceAttributes, v109, a6, v107, v110, v102, v10, v12, v108);

  v117 = objc_msgSend_attributes(v32, v112, v113, v114, v115);
  if (!v117 || (objc_msgSend_attributes(v32, v116, v118, v119, v120), v121 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v121, v122, v123, v124, v125, v111), v121, v117, (isEqual & 1) == 0))
  {
    v127 = objc_msgSend_resourceWithLabelAttributes_(TSCH3DLabelResource, v116, v118, v119, v120, v111);

    v32 = v127;
    objc_msgSend_setResource_atIndex_(self, v128, v129, v130, v131, v127, a3);
  }

  return v32;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

@end