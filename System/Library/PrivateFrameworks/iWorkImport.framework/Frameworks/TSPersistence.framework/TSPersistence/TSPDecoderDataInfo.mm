@interface TSPDecoderDataInfo
- (TSPDecoderDataInfo)init;
- (TSPDecoderDataInfo)initWithIdentifier:(int64_t)a3 digest:(id)a4 length:(unint64_t)a5 preferredFilename:(id)a6 documentResourceLocator:(id)a7 externalFilePath:(id)a8;
- (TSPDecoderDataInfo)initWithMessage:(const void *)a3;
@end

@implementation TSPDecoderDataInfo

- (TSPDecoderDataInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDecoderDataInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderDataInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 25, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDecoderDataInfo init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDecoderDataInfo)initWithIdentifier:(int64_t)a3 digest:(id)a4 length:(unint64_t)a5 preferredFilename:(id)a6 documentResourceLocator:(id)a7 externalFilePath:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v37.receiver = self;
  v37.super_class = TSPDecoderDataInfo;
  v18 = [(TSPDecoderDataInfo *)&v37 init];
  v21 = v18;
  if (v18)
  {
    v18->_identifier = a3;
    v22 = objc_msgSend_copy(v14, v19, v20);
    digest = v21->_digest;
    v21->_digest = v22;

    v26 = objc_msgSend_copy(v15, v24, v25);
    preferredFilename = v21->_preferredFilename;
    v21->_preferredFilename = v26;

    v30 = objc_msgSend_copy(v16, v28, v29);
    documentResourceLocator = v21->_documentResourceLocator;
    v21->_documentResourceLocator = v30;

    v34 = objc_msgSend_copy(v17, v32, v33);
    externalFilePath = v21->_externalFilePath;
    v21->_externalFilePath = v34;

    v21->_length = a5;
  }

  return v21;
}

- (TSPDecoderDataInfo)initWithMessage:(const void *)a3
{
  v5 = [TSPDigest alloc];
  v8 = objc_msgSend_initFromProtobufString_(v5, v6, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
  if (v8)
  {
    v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
    if ((*(a3 + 16) & 8) != 0)
    {
      v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v11 = 0;
    }

    if ((*(a3 + 16) & 0x80) != 0)
    {
      v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, *(a3 + 10) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v13 = 0;
    }

    v14 = &qword_276C14018;
    if ((*(a3 + 4) & 0x8000) != 0)
    {
      v14 = (a3 + 128);
    }

    self = objc_msgSend_initWithIdentifier_digest_length_preferredFilename_documentResourceLocator_externalFilePath_(self, v9, *(a3 + 14), v8, *v14, v10, v11, v13);

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end