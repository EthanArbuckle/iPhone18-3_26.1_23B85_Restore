@interface TSCH3DDefaultDataBufferResource
+ (id)resource;
+ (id)resourceWithBuffer:(id)a3;
- (TSCH3DDefaultDataBufferResource)init;
@end

@implementation TSCH3DDefaultDataBufferResource

+ (id)resource
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "+[TSCH3DDefaultDataBufferResource resource]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 76, 0, "should not be called");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  return 0;
}

+ (id)resourceWithBuffer:(id)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DDefaultDataBufferResource resourceWithBuffer:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 81, 0, "should not be called");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCH3DDefaultDataBufferResource)init
{
  v3 = objc_opt_class();
  v8 = objc_msgSend_defaultDataBuffer(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_initWithBuffer_(self, v9, v10, v11, v12, v8);

  return v13;
}

@end