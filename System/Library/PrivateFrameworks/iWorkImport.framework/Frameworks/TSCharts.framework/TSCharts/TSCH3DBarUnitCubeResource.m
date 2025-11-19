@interface TSCH3DBarUnitCubeResource
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)defaultDataBuffer;
+ (id)sharedInstance;
@end

@implementation TSCH3DBarUnitCubeResource

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DBarUnitCubeResource;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2761CD574;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46A00 != -1)
  {
    dispatch_once(&qword_280A46A00, block);
  }

  v2 = qword_280A469F8;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DBarUnitCubeResource allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractBarResource.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 23, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (id)defaultDataBuffer
{
  v30 = *MEMORY[0x277D85DE8];
  sub_2761EECB8(v23, v2, v3);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  sub_276154934(v23, &v24);
  v8 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v4, v5, v6, v7, 8);
  objc_msgSend_fillCapacity(v8, v9, v10, v11, v12);
  v17 = *objc_msgSend_container(v8, v13, v14, v15, v16);
  v18 = v25;
  *v17 = v24;
  v17[1] = v18;
  v19 = v26;
  v20 = v27;
  v21 = v29;
  v17[4] = v28;
  v17[5] = v21;
  v17[2] = v19;
  v17[3] = v20;

  return v8;
}

@end