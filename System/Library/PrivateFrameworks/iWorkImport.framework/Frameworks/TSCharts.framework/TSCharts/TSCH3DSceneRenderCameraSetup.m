@interface TSCH3DSceneRenderCameraSetup
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)setup;
- (void)setupPipeline:(id)a3 fromCamera:(id)a4;
@end

@implementation TSCH3DSceneRenderCameraSetup

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DSceneRenderCameraSetup;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)setup
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27615CE68;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A467D8 != -1)
  {
    dispatch_once(&qword_280A467D8, block);
  }

  v2 = qword_280A467D0;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSceneRenderCameraSetup allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 120, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (void)setupPipeline:(id)a3 fromCamera:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_processor(v5, v7, v8, v9, v10);
  if (v6)
  {
    objc_msgSend_projection(v6, v11, v13, v14, v15);
  }

  else
  {
    v16 = 0.0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  objc_msgSend_projection_(v12, v11, v16, v14, v15, &v27);

  v22 = objc_msgSend_processor(v5, v17, v18, v19, v20);
  if (v6)
  {
    objc_msgSend_space(v6, v21, v23, v24, v25);
  }

  else
  {
    v26 = 0.0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  objc_msgSend_replace_(v22, v21, v26, v24, v25, &v27);
}

@end