@interface TSCHImageFillSet
- (id)fillFromSageProperties:(id)a3 context:(id)a4;
- (id)p_tspDataFromProperties:(id)a3 context:(id)a4;
- (unint64_t)p_techniqueFromString:(id)a3;
@end

@implementation TSCHImageFillSet

- (unint64_t)p_techniqueFromString:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  if ((objc_msgSend_isEqualToString_(v3, v4, v5, v6, v7, @"tile") & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHImageFillSet p_techniqueFromString:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 452, 0, "unsuppored technique: %@", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 2;
LABEL_6:

  return v13;
}

- (id)p_tspDataFromProperties:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v12 = objc_msgSend_objectForKey_(v7, v8, v9, v10, v11, @"path");

  v13 = sub_2761C47AC();

  v18 = objc_msgSend_plistPath(self, v14, v15, v16, v17);
  v23 = objc_msgSend_stringByDeletingPathExtension(v18, v19, v20, v21, v22);

  v28 = objc_msgSend_stringByAppendingPathComponent_(v23, v24, v25, v26, v27, v13);
  v34 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v29, v30, v31, v32, v28);
  if (v6)
  {
    objc_msgSend_dataFromURL_useExternalReferenceIfAllowed_context_(MEMORY[0x277D80828], v33, v35, v36, v37, v34, 0, v6);
  }

  else
  {
    objc_msgSend_readOnlyDataFromURL_(MEMORY[0x277D80828], v33, v35, v36, v37, v34);
  }
  v38 = ;

  return v38;
}

- (id)fillFromSageProperties:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v12 = objc_msgSend_objectForKey_(v6, v8, v9, v10, v11, @"class");
  v13 = sub_2761C47AC();

  if ((objc_msgSend_isEqualToString_(v13, v14, v15, v16, v17, @"textured-fill") & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHImageFillSet fillFromSageProperties:context:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 471, 0, "only textured-fill is supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  objc_opt_class();
  v41 = objc_msgSend_objectForKey_(v6, v37, v38, v39, v40, @"filtered-image");
  v42 = sub_2761C47AC();

  objc_opt_class();
  v47 = objc_msgSend_objectForKey_(v42, v43, v44, v45, v46, @"data");
  v48 = sub_2761C47AC();

  v53 = objc_msgSend_p_tspDataFromProperties_context_(self, v49, v50, v51, v52, v48, v7);

  objc_opt_class();
  v58 = objc_msgSend_objectForKey_(v6, v54, v55, v56, v57, @"color");
  v59 = TSUDynamicCast();

  if (v59)
  {
    v64 = objc_msgSend_colorFromProperties_(self, v60, v61, v62, v63, v59);
  }

  else
  {
    v64 = 0;
  }

  objc_opt_class();
  v69 = objc_msgSend_objectForKey_(v6, v65, v66, v67, v68, @"technique");
  v70 = TSUDynamicCast();

  v75 = objc_msgSend_p_techniqueFromString_(self, v71, v72, v73, v74, v70);
  v76 = objc_alloc(MEMORY[0x277D802C0]);
  v79 = objc_msgSend_initWithImageData_technique_tintColor_size_(v76, v77, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v78, v53, v75, v64);

  return v79;
}

@end