@interface TSCH3DBoxTexture
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)texture;
- (id)get;
@end

@implementation TSCH3DBoxTexture

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DBoxTexture;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)texture
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276217380;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A46B20 != -1)
  {
    dispatch_once(&qword_280A46B20, block);
  }

  v2 = qword_280A46B18;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DBoxTexture allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1026, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)get
{
  v15 = 0x200000001;
  v4 = objc_msgSend_bufferWithCapacitySize_components_(TSCH3DVectorN2DDataBuffer, a2, COERCE_DOUBLE(0x200000001), v2, v3, &v15, 4);
  objc_msgSend_fillCapacity(v4, v5, v6, v7, v8);
  v13 = *objc_msgSend_container(v4, v9, v10, v11, v12);
  *v13 = -1;
  v13[1] = -16777216;

  return v4;
}

@end