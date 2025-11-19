@interface TPRenderingExporterPageEntry
- (id)description;
@end

@implementation TPRenderingExporterPageEntry

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v10 = objc_msgSend_descriptionWithObject_class_(v3, v5, v6, v7, v8, v9, self, v4);
  v16 = objc_msgSend_documentPageIndex(self, v11, v12, v13, v14, v15);
  objc_msgSend_addField_format_(v10, v17, v18, v19, v20, v21, @"documentPageIndex", @"%ld", v16);
  v27 = objc_msgSend_commentOverflowPageIndex(self, v22, v23, v24, v25, v26);
  objc_msgSend_addField_format_(v10, v28, v29, v30, v31, v32, @"commentOverflowPageIndex", @"%ld", v27);
  AnnotationNumber = objc_msgSend_firstAnnotationNumber(self, v33, v34, v35, v36, v37);
  objc_msgSend_addField_format_(v10, v39, v40, v41, v42, v43, @"firstAnnotationNumber", @"%ld", AnnotationNumber);
  v49 = objc_msgSend_descriptionString(v10, v44, v45, v46, v47, v48);

  return v49;
}

@end