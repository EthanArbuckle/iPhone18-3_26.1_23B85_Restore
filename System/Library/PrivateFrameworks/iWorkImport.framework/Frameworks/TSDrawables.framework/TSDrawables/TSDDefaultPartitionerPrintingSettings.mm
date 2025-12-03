@interface TSDDefaultPartitionerPrintingSettings
- (BOOL)isEqual:(id)equal;
- (TSDDefaultPartitionerPrintingSettings)initWithCanvas:(id)canvas;
@end

@implementation TSDDefaultPartitionerPrintingSettings

- (TSDDefaultPartitionerPrintingSettings)initWithCanvas:(id)canvas
{
  canvasCopy = canvas;
  v20.receiver = self;
  v20.super_class = TSDDefaultPartitionerPrintingSettings;
  v7 = [(TSDDefaultPartitionerPrintingSettings *)&v20 init];
  if (v7)
  {
    if (!canvasCopy)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDDefaultPartitionerPrintingSettings initWithCanvas:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDefaultPartitioner.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 56, 0, "invalid nil value for '%{public}s'", "canvas");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    v7->_isPrinting = objc_msgSend_isPrinting(canvasCopy, v5, v6);
    v7->_isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(canvasCopy, v15, v16);
    v7->_shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(canvasCopy, v17, v18);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    objc_opt_class();
    v7 = TSUCheckedDynamicCast();
    isPrinting = objc_msgSend_isPrinting(self, v8, v9);
    if (isPrinting == objc_msgSend_isPrinting(v7, v11, v12) && (isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(self, v13, v14), isDrawingIntoPDF == objc_msgSend_isDrawingIntoPDF(v7, v16, v17)))
    {
      shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(self, v18, v19);
      v20 = shouldSuppressBackgrounds ^ objc_msgSend_shouldSuppressBackgrounds(v7, v22, v23) ^ 1;
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

@end