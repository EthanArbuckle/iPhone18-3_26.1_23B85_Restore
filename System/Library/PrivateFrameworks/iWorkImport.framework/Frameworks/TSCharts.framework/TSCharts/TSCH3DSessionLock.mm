@interface TSCH3DSessionLock
+ (void)performBlockWithSession:(id)session block:(id)block;
+ (void)performBlockWithSession:(id)session renderingContext:(id)context shouldUpdateContextVirtualScreen:(BOOL)screen block:(id)block;
@end

@implementation TSCH3DSessionLock

+ (void)performBlockWithSession:(id)session block:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  v11 = objc_msgSend_sharegroupContext(sessionCopy, v7, v8, v9, v10);
  objc_msgSend_performBlockWithSession_renderingContext_shouldUpdateContextVirtualScreen_block_(self, v12, v13, v14, v15, sessionCopy, v11, 1, blockCopy);
}

+ (void)performBlockWithSession:(id)session renderingContext:(id)context shouldUpdateContextVirtualScreen:(BOOL)screen block:(id)block
{
  screenCopy = screen;
  sessionCopy = session;
  contextCopy = context;
  blockCopy = block;
  if (!sessionCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "+[TSCH3DSessionLock performBlockWithSession:renderingContext:shouldUpdateContextVirtualScreen:block:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 380, 0, "tried to lock a nil session");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (!contextCopy)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "+[TSCH3DSessionLock performBlockWithSession:renderingContext:shouldUpdateContextVirtualScreen:block:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 381, 0, "tried to set a nil context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v80 = sessionCopy;
  objc_msgSend_p_lock(v80, v46, v47, v48, v49);
  v54 = objc_msgSend_p_contextOrNil(v80, v50, v51, v52, v53);
  objc_msgSend_p_setContext_(v80, v55, v56, v57, v58, contextCopy);
  if (screenCopy)
  {
    v64 = objc_msgSend_virtualScreen(v80, v59, v60, v61, v62);
    if (v64 != -1 && v64 != objc_msgSend_virtualScreen(contextCopy, v63, v65, v66, v67))
    {
      objc_msgSend_setVirtualScreen_(contextCopy, v68, v69, v70, v71, v64);
    }
  }

  blockCopy[2](blockCopy);
  objc_msgSend_p_setContext_(v80, v72, v73, v74, v75, v54);
  objc_msgSend_p_unlock(v80, v76, v77, v78, v79);
}

@end