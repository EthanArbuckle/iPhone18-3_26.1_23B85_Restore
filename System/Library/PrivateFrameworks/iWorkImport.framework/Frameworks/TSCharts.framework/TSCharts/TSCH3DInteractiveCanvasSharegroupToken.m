@interface TSCH3DInteractiveCanvasSharegroupToken
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)token;
@end

@implementation TSCH3DInteractiveCanvasSharegroupToken

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DInteractiveCanvasSharegroupToken;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)token
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2763044CC;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A47A70 != -1)
  {
    dispatch_once(&qword_280A47A70, block);
  }

  v2 = qword_280A47A68;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DInteractiveCanvasSharegroupToken allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1085, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

@end