@interface TSCH3DTransformGeometryRenderProcessor
- (TSCH3DTransformGeometryRenderProcessor)init;
- (TSCH3DTransformGeometryRenderProcessor)initWithOriginal:(id)a3;
- (void)geometry:(id)a3;
@end

@implementation TSCH3DTransformGeometryRenderProcessor

- (TSCH3DTransformGeometryRenderProcessor)initWithOriginal:(id)a3
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v3, v4, v5, a2);

  return 0;
}

- (TSCH3DTransformGeometryRenderProcessor)init
{
  v6 = objc_msgSend_processor(TSCH3DMatrixRenderProcessor, a2, v2, v3, v4);
  v9.receiver = self;
  v9.super_class = TSCH3DTransformGeometryRenderProcessor;
  v7 = [(TSCH3DRetargetRenderProcessor *)&v9 initWithOriginal:v6];

  return v7;
}

- (void)geometry:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_buffer(v4, v5, v6, v7, v8);
  buffer = self->_buffer;
  self->_buffer = v9;

  if (!v4 || !self->_buffer)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DTransformGeometryRenderProcessor geometry:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTransformGeometryRenderProcessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 44, 0, "geometry resource is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30.receiver = self;
  v30.super_class = TSCH3DTransformGeometryRenderProcessor;
  [(TSCH3DRenderProcessor *)&v30 geometry:v4];
}

@end