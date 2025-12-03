@interface TNPdfExporter
- (id)p_renderingExporterDelegate;
- (void)setOptions:(id)options;
@end

@implementation TNPdfExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC8]);
  v5 = objc_msgSend_initWithRenderingExporter_(v3, v4, self);

  return v5;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  v33.receiver = self;
  v33.super_class = TNPdfExporter;
  [(TSARenderingExporter *)&v33 setOptions:optionsCopy];
  v7 = objc_msgSend_objectForKey_(optionsCopy, v5, *MEMORY[0x277D80780]);
  if (v7)
  {
    v8 = *(&self->super.super.super.isa + *MEMORY[0x277D80000]);
    v11 = objc_msgSend_intValue(v7, v9, v10);
    objc_msgSend_setRenderingQuality_(v8, v12, v11);
  }

  v13 = objc_msgSend_objectForKey_(optionsCopy, v6, *MEMORY[0x277D80788]);
  v16 = objc_msgSend_BOOLValue(v13, v14, v15);
  objc_msgSend_setPaginate_(self, v17, v16);
  v18 = *MEMORY[0x277D807B8];
  v21 = objc_msgSend_objectForKey_(optionsCopy, v19, *MEMORY[0x277D807B8]);
  if (v21)
  {
    v22 = objc_msgSend_objectForKey_(optionsCopy, v20, v18);
    v25 = objc_msgSend_unsignedIntegerValue(v22, v23, v24);
    objc_msgSend_setRenderingComments_(self, v26, v25);
  }

  v27 = objc_msgSend_objectForKey_(optionsCopy, v20, *MEMORY[0x277D80778]);
  v30 = v27;
  if (v27)
  {
    v31 = objc_msgSend_BOOLValue(v27, v28, v29) ^ 1;
    objc_msgSend_setRenderingAllSheets_(self, v32, v31);
  }

  else
  {
    objc_msgSend_setRenderingAllSheets_(self, v28, 1);
  }
}

@end