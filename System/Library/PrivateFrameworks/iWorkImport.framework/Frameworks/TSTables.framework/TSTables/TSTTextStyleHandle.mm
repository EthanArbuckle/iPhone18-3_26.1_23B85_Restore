@interface TSTTextStyleHandle
+ (id)handleForTextStyle:(id)style;
- (TSTTextStyleHandle)initWithTextStyle:(id)style;
@end

@implementation TSTTextStyleHandle

+ (id)handleForTextStyle:(id)style
{
  if (style)
  {
    styleCopy = style;
    v5 = [self alloc];
    v9 = objc_msgSend_initWithTextStyle_(v5, v6, styleCopy, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TSTTextStyleHandle)initWithTextStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTextStyleHandle initWithTextStyle:]", v10, v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTextStyleHandle.m", v15, v16);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v13, v17, 28, 0, "expected text style got %{public}@", v19);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24);
      selfCopy = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTextStyleHandle initWithTextStyle:]", v6, v7);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTextStyleHandle.m", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 24, 0, "invalid nil value for '%{public}s'", "textStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v77.receiver = self;
  v77.super_class = TSTTextStyleHandle;
  v37 = [(TSTTextStyleHandle *)&v77 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_textStyle, style);
    v38->_isVariation = objc_msgSend_isVariation(styleCopy, v39, v40, v41, v42);
    objc_msgSend_overrideCGFloatValueForProperty_(styleCopy, v43, 17, v44, v45);
    v51 = v50;
    v38->_fontSize = v50;
    if (((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FF0000000000000 && *&v50 != 0xFFF0000000000000 && (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL)
    {
      v38->_nonDefaultFontSize = 0;
    }

    else
    {
      v55 = objc_msgSend_parent(styleCopy, v46, v47, v48, v49);
      objc_msgSend_CGFloatValueForProperty_(v55, v56, 17, v57, v58);
      v38->_nonDefaultFontSize = v51 != v59;
    }

    v60 = objc_msgSend_overrideValueForProperty_(styleCopy, v46, 16, v48, v49);
    v38->_nonDefaultFontName = v60 != 0;

    v38->_direction = objc_msgSend_intValueForProperty_(styleCopy, v61, 44, v62, v63);
    if (objc_msgSend_intValueForProperty_(styleCopy, v64, 49, v65, v66))
    {
      objc_opt_class();
      v70 = objc_msgSend_objectForProperty_(styleCopy, v67, 48, v68, v69);
      v71 = TSUCheckedDynamicCast();
      v38->_containsGradientThatFillsContainer = objc_msgSend_fillType(v71, v72, v73, v74, v75) == 1;
    }

    else
    {
      v38->_containsGradientThatFillsContainer = 0;
    }
  }

  self = v38;
  selfCopy = self;
LABEL_22:

  return selfCopy;
}

@end