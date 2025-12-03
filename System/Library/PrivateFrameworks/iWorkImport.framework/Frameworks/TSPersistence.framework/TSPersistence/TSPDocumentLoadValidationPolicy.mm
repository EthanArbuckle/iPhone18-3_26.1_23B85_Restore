@interface TSPDocumentLoadValidationPolicy
- (TSPDocumentLoadValidationPolicy)initWithTiming:(int64_t)timing validateModel:(BOOL)model validateDataCRC:(BOOL)c validateDataDigest:(BOOL)digest scanForOSLikeCorruption:(BOOL)corruption;
- (id)description;
@end

@implementation TSPDocumentLoadValidationPolicy

- (TSPDocumentLoadValidationPolicy)initWithTiming:(int64_t)timing validateModel:(BOOL)model validateDataCRC:(BOOL)c validateDataDigest:(BOOL)digest scanForOSLikeCorruption:(BOOL)corruption
{
  v23.receiver = self;
  v23.super_class = TSPDocumentLoadValidationPolicy;
  v12 = [(TSPDocumentLoadValidationPolicy *)&v23 init];
  v14 = v12;
  if (v12)
  {
    if (timing > 2)
    {
      v12->_timing = 0;
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPDocumentLoadValidationPolicy initWithTiming:validateModel:validateDataCRC:validateDataDigest:scanForOSLikeCorruption:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentValidationPolicy.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 84, 0, "Invalid value for TSPDocumentLoadValidationTiming: %td", timing);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    else
    {
      v12->_timing = timing;
    }

    v14->_validateModel = model;
    v14->_validateDataCRC = c;
    v14->_validateDataDigest = digest;
    v14->_scanForOSLikeCorruption = corruption;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = sub_276A79430(self->_timing, v6);
  if (self->_validateModel)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_validateDataCRC)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_validateDataDigest)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_scanForOSLikeCorruption)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v10;
  v13 = v9;
  v14 = v8;
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"<%@ timing=%@, validateModel=%@, validateDataCRC=%@, validateDataDigest=%@, scanForOSLikeCorruption=%@>", v5, v7, v14, v13, v12, v11);

  return v16;
}

@end