@interface TSCH3DSceneRenderIdentitySetup
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)setup;
- (void)setupPipeline:(id)a3 fromCamera:(id)a4;
@end

@implementation TSCH3DSceneRenderIdentitySetup

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DSceneRenderIdentitySetup;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)setup
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27615C790;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A467B8 != -1)
  {
    dispatch_once(&qword_280A467B8, block);
  }

  v2 = qword_280A467B0;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSceneRenderIdentitySetup allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 96, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (void)setupPipeline:(id)a3 fromCamera:(id)a4
{
  v4 = a3;
  v40 = 0;
  v39 = 0;
  v42 = 0;
  v43 = 0;
  v45 = xmmword_2764D6020;
  v38 = 0x40000000;
  v41 = 0x40000000;
  v44 = 0x40000000;
  v8 = objc_msgSend_context(v4, v5, -0.00781250557, v6, v7);
  *v30 = xmmword_2764D6030;
  objc_msgSend_viewport_(v8, v9, 0.0, v10, v11, v30);

  v16 = objc_msgSend_processor(v4, v12, v13, v14, v15);
  objc_msgSend_projection_(v16, v17, v18, v19, v20, &v38);

  v25 = objc_msgSend_processor(v4, v21, v22, v23, v24);
  *v30 = 1065353216;
  *&v30[4] = 0uLL;
  v31 = 1065353216;
  v32 = 0;
  v33 = 0;
  v34 = 1065353216;
  v36 = 0;
  v35 = 0;
  v37 = 1065353216;
  objc_msgSend_replace_(v25, v26, v27, v28, v29, v30);
}

@end