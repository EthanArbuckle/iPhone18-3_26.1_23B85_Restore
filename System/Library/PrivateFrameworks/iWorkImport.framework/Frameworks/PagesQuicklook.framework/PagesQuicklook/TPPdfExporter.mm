@interface TPPdfExporter
- (id)p_renderingExporterDelegate;
- (void)setOptions:(id)options;
@end

@implementation TPPdfExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC8]);
  v9 = objc_msgSend_initWithRenderingExporter_(v3, v4, v5, v6, v7, v8, self);

  return v9;
}

- (void)setOptions:(id)options
{
  v87.receiver = self;
  v87.super_class = TPPdfExporter;
  optionsCopy = options;
  [(TPRenderingExporter *)&v87 setOptions:optionsCopy];
  v10 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, v6, v7, v8, v9, *MEMORY[0x277D80780], v87.receiver, v87.super_class);

  if (v10)
  {
    v16 = *(&self->super.super.super.isa + *MEMORY[0x277D80000]);
    v22 = objc_msgSend_intValue(v10, v17, v18, v19, v20, v21);
    objc_msgSend_setRenderingQuality_(v16, v23, v24, v25, v26, v27, v22);
  }

  v28 = *MEMORY[0x277D7FFF0];
  v29 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v28), v11, v12, v13, v14, v15, *MEMORY[0x277D807A0]);
  v35 = v29;
  if (v29)
  {
    v36 = objc_msgSend_BOOLValue(v29, v30, v31, v32, v33, v34);
    objc_msgSend_setIncludePencilAnnotations_(self, v37, v38, v39, v40, v41, v36);
  }

  v42 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v28), v30, v31, v32, v33, v34, *MEMORY[0x277D807B8]);
  v48 = v42;
  if (v42)
  {
    v49 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46, v47);
    objc_msgSend_setIncludeComments_(self, v50, v51, v52, v53, v54, v49);
  }

  v55 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v28), v43, v44, v45, v46, v47, *MEMORY[0x277D807A8]);
  v61 = v55;
  if (v55)
  {
    v62 = objc_msgSend_BOOLValue(v55, v56, v57, v58, v59, v60);
    objc_msgSend_setIncludeBackgrounds_(self, v63, v64, v65, v66, v67, v62);
  }

  v68 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v28), v56, v57, v58, v59, v60, *MEMORY[0x277D807B0]);
  v74 = v68;
  if (v68)
  {
    v75 = objc_msgSend_BOOLValue(v68, v69, v70, v71, v72, v73);
    v81 = objc_msgSend_documentRoot(self, v76, v77, v78, v79, v80);
    objc_msgSend_setShouldShowChangeTrackingMarkup_(v81, v82, v83, v84, v85, v86, v75);
  }
}

@end