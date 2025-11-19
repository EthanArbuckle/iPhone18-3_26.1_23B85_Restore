@interface TSDBrushStrokeLayoutOptions
- (TSDBrushStrokeLayoutOptions)init;
- (void)setStrokeEnd:(double)a3;
@end

@implementation TSDBrushStrokeLayoutOptions

- (TSDBrushStrokeLayoutOptions)init
{
  v3.receiver = self;
  v3.super_class = TSDBrushStrokeLayoutOptions;
  result = [(TSDBrushStrokeLayoutOptions *)&v3 init];
  if (result)
  {
    result->_strokeEnd = 1.0;
  }

  return result;
}

- (void)setStrokeEnd:(double)a3
{
  TSUClamp();
  self->_strokeEnd = v6;
  if (v6 != a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDBrushStrokeLayoutOptions setStrokeEnd:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 188, 0, "strokeEnd (%f) should be between 0 and 1 inclusive.", *&a3);

    v14 = MEMORY[0x277D81150];

    objc_msgSend_logFullBacktrace(v14, v12, v13);
  }
}

@end