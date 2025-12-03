@interface TSCH3DGaussTexture
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)texture;
- (id)get;
@end

@implementation TSCH3DGaussTexture

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DGaussTexture;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)texture
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276216FD0;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A46B10 != -1)
  {
    dispatch_once(&qword_280A46B10, block);
  }

  v2 = qword_280A46B08;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DGaussTexture allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1011, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)get
{
  v17 = 0x2000000001;
  v4 = objc_msgSend_bufferWithCapacitySize_components_(TSCH3DVectorN2DDataBuffer, a2, COERCE_DOUBLE(0x2000000001), v2, v3, &v17, 4);
  objc_msgSend_fillCapacity(v4, v5, v6, v7, v8);
  v13 = 0;
  v14 = *objc_msgSend_container(v4, v9, v10, v11, v12);
  do
  {
    v15 = vdupq_n_s16((exp(v13 * 0.022 * (v13 * 0.022) / -0.08) * 1.9947114 * 0.501325655 * 255.0));
    v15.i16[3] = 255;
    *(v14 + 4 * v13++) = vmovn_s16(v15).u32[0];
  }

  while (v13 != 32);

  return v4;
}

@end