@interface TSCH3DSceneRenderSceneTransformSetup
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)setup;
- (void)setupPipeline:(id)a3 fromCamera:(id)a4;
@end

@implementation TSCH3DSceneRenderSceneTransformSetup

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DSceneRenderSceneTransformSetup;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)setup
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27615D1F4;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A467E8 != -1)
  {
    dispatch_once(&qword_280A467E8, block);
  }

  v2 = qword_280A467E0;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSceneRenderSceneTransformSetup allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 131, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (void)setupPipeline:(id)a3 fromCamera:(id)a4
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_scene(v4, v10, v11, v12, v13);
  v19 = v14;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16, v17, v18);
  }

  else
  {
    v20 = 0.0;
    memset(v21, 0, sizeof(v21));
  }

  objc_msgSend_multiply_(v9, v15, v20, v17, v18, v21);
}

@end