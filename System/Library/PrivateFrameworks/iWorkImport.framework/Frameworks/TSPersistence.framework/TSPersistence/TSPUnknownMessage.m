@interface TSPUnknownMessage
- (TSPUnknownMessage)init;
- (TSPUnknownMessage)initWithMessageInfo:(const void *)a3 data:(id)a4;
- (const)fieldPath;
- (unint64_t)messageVersion;
@end

@implementation TSPUnknownMessage

- (unint64_t)messageVersion
{
  v3 = objc_msgSend_messageInfo(self, a2, v2) + 24;

  return UnsafePointer(v3, v4);
}

- (const)fieldPath
{
  v3 = objc_msgSend_messageInfo(self, a2, v2);
  if (*(v3 + 192))
  {
    return *(v3 + 192);
  }

  else
  {
    return &qword_2812FC940;
  }
}

- (TSPUnknownMessage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownMessage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownMessage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 14, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPUnknownMessage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPUnknownMessage)initWithMessageInfo:(const void *)a3 data:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSPUnknownMessage;
  v8 = [(TSPUnknownMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    sub_2769E0D78(v8 + 1, a3);
    objc_storeStrong(&v9->_messageData, a4);
  }

  return v9;
}

@end