@interface TSCH3DSceneRenderViewportSetup
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)setup;
- (void)setupPipeline:(id)pipeline fromCamera:(id)camera;
@end

@implementation TSCH3DSceneRenderViewportSetup

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DSceneRenderViewportSetup;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)setup
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27615CB38;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A467C8 != -1)
  {
    dispatch_once(&qword_280A467C8, block);
  }

  v2 = qword_280A467C0;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSceneRenderViewportSetup allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 110, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (void)setupPipeline:(id)pipeline fromCamera:(id)camera
{
  cameraCopy = camera;
  v11 = objc_msgSend_context(pipeline, v6, v7, v8, v9);
  if (cameraCopy)
  {
    objc_msgSend_viewport(cameraCopy, v10, v12, v13, v14);
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
  }

  objc_msgSend_viewport_(v11, v10, v12, v13, v14, v15);
}

@end