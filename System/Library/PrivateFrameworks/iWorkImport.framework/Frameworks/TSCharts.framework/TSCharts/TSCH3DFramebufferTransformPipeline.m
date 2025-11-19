@interface TSCH3DFramebufferTransformPipeline
- (BOOL)prepareFramebuffer;
- (BOOL)run;
- (void)dealloc;
- (void)loadSource;
@end

@implementation TSCH3DFramebufferTransformPipeline

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_input);

  if (WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DFramebufferTransformPipeline dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferTransformPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 24, 0, "expected nil value for '%{public}s'", "_input");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23.receiver = self;
  v23.super_class = TSCH3DFramebufferTransformPipeline;
  [(TSCH3DFramebufferTransformPipeline *)&v23 dealloc];
}

- (void)loadSource
{
  WeakRetained = objc_loadWeakRetained(&self->_input);

  if (WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DFramebufferTransformPipeline loadSource]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferTransformPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 28, 0, "expected nil value for '%{public}s'", "_input");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_output(self->_source, v4, v5, v6, v7);
  objc_storeWeak(&self->_input, v23);

  v24 = objc_loadWeakRetained(&self->_input);
  if (!v24)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DFramebufferTransformPipeline loadSource]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferTransformPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 30, 0, "invalid nil value for '%{public}s'", "_input");

    v44 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v44, v40, v41, v42, v43);
  }
}

- (BOOL)prepareFramebuffer
{
  objc_msgSend_resetBuffers(self->super.super._processor, a2, v2, v3, v4);
  target = self->_target;
  if (!target)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DFramebufferTransformPipeline prepareFramebuffer]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferTransformPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 35, 0, "invalid nil value for '%{public}s'", "_target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    target = self->_target;
  }

  objc_msgSend_setActiveFramebuffer_(self->super.super._processor, v6, v7, v8, v9, target);
  v30 = self->_target;
  session = self->super.super._session;

  return objc_msgSend_activateInsideSession_(v30, v26, v27, v28, v29, session);
}

- (BOOL)run
{
  objc_msgSend_loadSource(self, a2, v2, v3, v4);
  v11 = objc_msgSend_prepareFramebuffer(self, v6, v7, v8, v9);
  if (v11)
  {
    objc_msgSend_transformFramebuffer(self, v10, v12, v13, v14);
    WeakRetained = objc_loadWeakRetained(&self->_input);

    if (WeakRetained)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DFramebufferTransformPipeline run]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferTransformPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 46, 0, "expected nil value for '%{public}s'", "_input");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }
  }

  else
  {
    objc_storeWeak(&self->_input, 0);
  }

  return v11;
}

@end