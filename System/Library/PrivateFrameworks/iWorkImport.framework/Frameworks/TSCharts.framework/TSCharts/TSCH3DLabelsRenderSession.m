@interface TSCH3DLabelsRenderSession
+ (void)performBlockWithRenderer:(id)a3 pipeline:(id)a4 useLabelBounds:(BOOL)a5 block:(id)a6;
@end

@implementation TSCH3DLabelsRenderSession

+ (void)performBlockWithRenderer:(id)a3 pipeline:(id)a4 useLabelBounds:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v12 = a6;
  if (!v9)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "+[TSCH3DLabelsRenderSession performBlockWithRenderer:pipeline:useLabelBounds:block:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 897, 0, "invalid nil value for '%{public}s'", "renderer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (!v10)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "+[TSCH3DLabelsRenderSession performBlockWithRenderer:pipeline:useLabelBounds:block:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 898, 0, "invalid nil value for '%{public}s'", "pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v90 = 1065353216;
  v92 = 0;
  v91 = 0;
  v93 = 1065353216;
  v94 = 0;
  v95 = 0;
  v96 = 1065353216;
  v98 = 0;
  v97 = 0;
  v99 = 1065353216;
  v46 = objc_msgSend_processor(v10, v11, v13, v14, v15);
  objc_msgSend_copyProjectionInto_(v46, v47, v48, v49, v50, &v90);

  v55 = objc_msgSend_processor(v10, v51, v52, v53, v54);
  objc_msgSend_pushMatrix(v55, v56, v57, v58, v59);

  objc_msgSend_setUseLabelBounds_(v9, v60, v61, v62, v63, v7);
  objc_msgSend_prerender_(v9, v64, v65, v66, v67, v10);
  v12[2](v12, v10);
  v72 = objc_msgSend_processor(v10, v68, v69, v70, v71);
  objc_msgSend_projection_(v72, v73, v74, v75, v76, &v90);

  v81 = objc_msgSend_processor(v10, v77, v78, v79, v80);
  objc_msgSend_popMatrix(v81, v82, v83, v84, v85);

  objc_msgSend_postrender_(v9, v86, v87, v88, v89, v10);
}

@end