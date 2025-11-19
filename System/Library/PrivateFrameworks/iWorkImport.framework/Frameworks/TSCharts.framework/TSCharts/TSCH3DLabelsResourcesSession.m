@interface TSCH3DLabelsResourcesSession
+ (void)performBlockWithRenderer:(id)a3 resources:(id)a4 expectedSize:(tvec2<int>)a5 block:(id)a6;
@end

@implementation TSCH3DLabelsResourcesSession

+ (void)performBlockWithRenderer:(id)a3 resources:(id)a4 expectedSize:(tvec2<int>)a5 block:(id)a6
{
  v55 = a3;
  v9 = a4;
  v11 = a6;
  if (!v55)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "+[TSCH3DLabelsResourcesSession performBlockWithRenderer:resources:expectedSize:block:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 918, 0, "invalid nil value for '%{public}s'", "renderer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (!v9)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "+[TSCH3DLabelsResourcesSession performBlockWithRenderer:resources:expectedSize:block:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 919, 0, "invalid nil value for '%{public}s'", "resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = objc_msgSend_beginResources_expectedSize_(v55, v10, v12, v13, v14, v9, a5);
  isCacheValid = objc_msgSend_isCacheValid(v55, v46, v47, v48, v49);
  v11[2](v11, v45 & (isCacheValid ^ 1u));
  if (v45)
  {
    objc_msgSend_endResources(v55, v51, v52, v53, v54);
  }
}

@end