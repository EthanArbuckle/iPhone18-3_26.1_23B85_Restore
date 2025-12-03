@interface TPPageControllerCanvasDelegate
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas;
- (TPPageControllerCanvasDelegate)initWithDocumentRoot:(id)root canvas:(id)canvas;
- (id)documentRoot;
- (void)dealloc;
@end

@implementation TPPageControllerCanvasDelegate

- (TPPageControllerCanvasDelegate)initWithDocumentRoot:(id)root canvas:(id)canvas
{
  rootCopy = root;
  canvasCopy = canvas;
  if (!rootCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageControllerCanvasDelegate initWithDocumentRoot:canvas:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageControllerCanvasDelegate.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 40, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  v34.receiver = self;
  v34.super_class = TPPageControllerCanvasDelegate;
  v31 = [(TPPageControllerCanvasDelegate *)&v34 init];
  v32 = v31;
  if (v31)
  {
    objc_storeWeak(&v31->_documentRoot, rootCopy);
    objc_storeStrong(&v32->_canvas, canvas);
    v32->_textLayoutMustIncludeAdornmentsCounter = 0;
  }

  return v32;
}

- (void)dealloc
{
  objc_msgSend_teardown(self->_canvas, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = TPPageControllerCanvasDelegate;
  [(TPPageControllerCanvasDelegate *)&v7 dealloc];
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end