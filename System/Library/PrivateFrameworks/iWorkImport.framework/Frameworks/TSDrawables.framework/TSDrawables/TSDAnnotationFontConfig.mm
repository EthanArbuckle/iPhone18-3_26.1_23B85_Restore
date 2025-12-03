@interface TSDAnnotationFontConfig
+ (double)commentFontSize;
@end

@implementation TSDAnnotationFontConfig

+ (double)commentFontSize
{
  v3 = objc_msgSend_commentPossibleFontSizes(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5) <= 4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSDAnnotationFontConfig commentFontSize]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDAnnotationFontConfig.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 32, 0, "Invalid parameter not satisfying: %{public}s", "index < [commentPossibleFontSizes count]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_count(v3, v6, v7);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v3, v16, 4 * (v15 > 4));
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = v20;

  return v21;
}

@end