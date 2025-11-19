@interface TSCH3DVectorDataBuffer
+ (id)bufferWithCapacity:(unint64_t)a3;
+ (id)bufferWithCapacity:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation TSCH3DVectorDataBuffer

+ (id)bufferWithCapacity:(unint64_t)a3 dimension:(unint64_t)a4
{
  v8 = a4 - 1;
  if (a4 - 1 >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "+[TSCH3DVectorDataBuffer bufferWithCapacity:dimension:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVectorDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 39, 0, "dimension out of bounds %lu must be 1-4", a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (v8 > 3 || (v25 = objc_opt_class()) == 0)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "+[TSCH3DVectorDataBuffer bufferWithCapacity:dimension:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVectorDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 55, 0, "invalid nil value for '%{public}s'", "bufferClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    v25 = 0;
  }

  return objc_msgSend_bufferWithCapacity_(v25, a2, v4, v5, v6, a3);
}

+ (id)bufferWithCapacity:(unint64_t)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithCapacity_(v4, v5, v6, v7, v8, a3);

  return v9;
}

@end