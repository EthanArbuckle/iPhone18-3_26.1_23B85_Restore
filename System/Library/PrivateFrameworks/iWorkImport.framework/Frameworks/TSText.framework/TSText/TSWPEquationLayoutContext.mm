@interface TSWPEquationLayoutContext
- (BOOL)isEqual:(id)equal;
- (CGSize)containerSize;
- (CGSize)targetSize;
- (TSWPEquationLayoutContext)init;
- (TSWPEquationLayoutContext)initWithFontName:(id)name fontSize:(double)size fontColor:(id)color targetSize:(CGSize)targetSize containerSize:(CGSize)containerSize textMacroFontSize:(double)fontSize;
- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties containerSize:(CGSize)size;
- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties fontSize:(double)size containerSize:(CGSize)containerSize;
- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties fontSize:(double)size containerSize:(CGSize)containerSize textMacroFontSize:(double)fontSize;
- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties targetSize:(CGSize)size;
- (unint64_t)hash;
@end

@implementation TSWPEquationLayoutContext

- (TSWPEquationLayoutContext)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPEquationLayoutContext init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationLayoutContext.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 33, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSWPEquationLayoutContext init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSWPEquationLayoutContext)initWithFontName:(id)name fontSize:(double)size fontColor:(id)color targetSize:(CGSize)targetSize containerSize:(CGSize)containerSize textMacroFontSize:(double)fontSize
{
  height = containerSize.height;
  width = containerSize.width;
  v11 = targetSize.height;
  v12 = targetSize.width;
  nameCopy = name;
  colorCopy = color;
  v28.receiver = self;
  v28.super_class = TSWPEquationLayoutContext;
  v20 = [(TSWPEquationLayoutContext *)&v28 init];
  if (v20)
  {
    v21 = objc_msgSend_copy(nameCopy, v18, v19);
    fontName = v20->_fontName;
    v20->_fontName = v21;

    v25 = objc_msgSend_copy(colorCopy, v23, v24);
    fontColor = v20->_fontColor;
    v20->_fontColor = v25;

    v20->_targetSize.width = v12;
    v20->_targetSize.height = v11;
    v20->_containerSize.width = width;
    v20->_containerSize.height = height;
    v20->_fontSize = size;
    v20->_textMacroFontSize = fontSize;
  }

  return v20;
}

- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  propertiesCopy = properties;
  v9 = objc_msgSend_objectForProperty_(propertiesCopy, v8, 48);
  v11 = objc_msgSend_fontNameFromTextProperties_(TSWPEquationInfo, v10, propertiesCopy);
  objc_msgSend_CGFloatValueForProperty_(propertiesCopy, v12, 17);
  v14 = v13;
  v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v15, v16);
  if (v9 == v19)
  {
    v20 = v9;
  }

  else
  {
    v20 = objc_msgSend_referenceColor(v9, v17, v18);
  }

  objc_msgSend_CGFloatValueForProperty_(propertiesCopy, v17, 17);
  v23 = objc_msgSend_initWithFontName_fontSize_fontColor_targetSize_containerSize_textMacroFontSize_(self, v21, v11, v20, v14, width, height, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v22);
  if (v9 != v19)
  {
  }

  return v23;
}

- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  propertiesCopy = properties;
  v9 = objc_msgSend_objectForProperty_(propertiesCopy, v8, 48);
  v11 = objc_msgSend_fontNameFromTextProperties_(TSWPEquationInfo, v10, propertiesCopy);
  objc_msgSend_CGFloatValueForProperty_(propertiesCopy, v12, 17);
  v14 = v13;
  v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v15, v16);
  if (v9 == v19)
  {
    v20 = v9;
  }

  else
  {
    v20 = objc_msgSend_referenceColor(v9, v17, v18);
  }

  objc_msgSend_CGFloatValueForProperty_(propertiesCopy, v17, 17);
  v23 = objc_msgSend_initWithFontName_fontSize_fontColor_targetSize_containerSize_textMacroFontSize_(self, v21, v11, v20, v14, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), width, height, v22);
  if (v9 != v19)
  {
  }

  return v23;
}

- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties fontSize:(double)size containerSize:(CGSize)containerSize
{
  height = containerSize.height;
  width = containerSize.width;
  propertiesCopy = properties;
  v11 = objc_msgSend_objectForProperty_(propertiesCopy, v10, 48);
  v13 = objc_msgSend_fontNameFromTextProperties_(TSWPEquationInfo, v12, propertiesCopy);

  v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);
  if (v11 == v18)
  {
    v19 = v11;
    v21 = objc_msgSend_initWithFontName_fontSize_fontColor_targetSize_containerSize_textMacroFontSize_(self, v16, v13, v11, size, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), width, height, size);
  }

  else
  {
    v19 = objc_msgSend_referenceColor(v11, v16, v17);
    v21 = objc_msgSend_initWithFontName_fontSize_fontColor_targetSize_containerSize_textMacroFontSize_(self, v20, v13, v19, size, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), width, height, size);
  }

  v22 = v21;
  if (v11 != v18)
  {
  }

  return v22;
}

- (TSWPEquationLayoutContext)initWithTextProperties:(id)properties fontSize:(double)size containerSize:(CGSize)containerSize textMacroFontSize:(double)fontSize
{
  height = containerSize.height;
  width = containerSize.width;
  propertiesCopy = properties;
  v13 = objc_msgSend_objectForProperty_(propertiesCopy, v12, 48);
  v15 = objc_msgSend_fontNameFromTextProperties_(TSWPEquationInfo, v14, propertiesCopy);

  v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17);
  if (v13 == v20)
  {
    v21 = v13;
    v23 = objc_msgSend_initWithFontName_fontSize_fontColor_targetSize_containerSize_textMacroFontSize_(self, v18, v15, v13, size, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), width, height, fontSize);
  }

  else
  {
    v21 = objc_msgSend_referenceColor(v13, v18, v19);
    v23 = objc_msgSend_initWithFontName_fontSize_fontColor_targetSize_containerSize_textMacroFontSize_(self, v22, v15, v21, size, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), width, height, fontSize);
  }

  v24 = v23;
  if (v13 != v20)
  {
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (objc_msgSend_fontSize(v5, v6, v7), v10 == self->_fontSize) && ((objc_msgSend_containerSize(v5, v8, v9), v14 == self->_containerSize.width) ? (v15 = v13 == self->_containerSize.height) : (v15 = 0), v15 && ((objc_msgSend_targetSize(v5, v11, v12), v19 == self->_targetSize.width) ? (v20 = v18 == self->_targetSize.height) : (v20 = 0), v20 && (objc_msgSend_textMacroFontSize(v5, v16, v17), v23 == self->_textMacroFontSize) && ((fontColor = self->_fontColor, objc_msgSend_fontColor(v5, v21, v22), v25 = objc_claimAutoreleasedReturnValue(), v25, fontColor == v25) || (v28 = self->_fontColor) != 0 && (objc_msgSend_fontColor(v5, v26, v27), v29 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_isEqual_(v28, v30, v29), v29, v31)))))
  {
    fontName = self->_fontName;
    v33 = objc_msgSend_fontName(v5, v26, v27);
    isEqual = objc_msgSend_isEqual_(fontName, v34, v33);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  objc_msgSend_hash(self->_fontName, a2, v2);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v4 = TSUHashWithSeed();
  return objc_msgSend_hash(self->_fontColor, v5, v6) ^ v4;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end