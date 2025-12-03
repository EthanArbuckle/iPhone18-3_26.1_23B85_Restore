@interface TSWPTOCPartitioner
- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally;
- (CGRect)totalPartitionFrame;
- (TSWPTOCInfo)info;
- (TSWPTOCPartitioner)initWithInfo:(id)info;
- (id)hintForLayout:(id)layout;
- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
@end

@implementation TSWPTOCPartitioner

- (TSWPTOCPartitioner)initWithInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = TSWPTOCPartitioner;
  v5 = [(TSWPTOCPartitioner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_info, infoCopy);
  }

  return v6;
}

- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  hintCopy = hint;
  objc_opt_class();
  v14 = TSUDynamicCast();

  if (v14)
  {
    v17 = objc_msgSend_charRange(v14, v15, v16);
    v19 = v17 + v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = TSUProtocolCast();
  IsVertical = objc_msgSend_textIsVertical(v20, v21, v22, &unk_2886383A0);
  v24 = IsVertical;
  if (IsVertical)
  {
    v25 = height;
  }

  else
  {
    v25 = width;
  }

  if (IsVertical)
  {
    height = width;
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = objc_msgSend_inlineTableOfContentsLayoutClass(v20, v26, v27);
  }

  else
  {
    v28 = objc_opt_class();
  }

  v29 = [v28 alloc];
  v32 = objc_msgSend_info(self, v30, v31);
  IsVertical_maxSize = objc_msgSend_initWithInfo_initialCharIndex_textIsVertical_maxSize_(v29, v33, v32, v19, v24, v25, height);

  if (finished)
  {
    *finished = objc_msgSend_isLastLayoutInTOC(IsVertical_maxSize, v35, v36);
  }

  return IsVertical_maxSize;
}

- (CGRect)totalPartitionFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPTOCPartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]", hint, horizontally, finished, size.width, size.height);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCPartitioner.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 71, 0, "unsupported method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  return 0;
}

- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally
{
  nextHintCopy = nextHint;
  hintCopy = hint;
  objc_opt_class();
  v8 = TSUDynamicCast();

  objc_opt_class();
  v9 = TSUDynamicCast();

  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v13 = objc_msgSend_charRange(v8, v10, v11);
    v16 = &v14[v13] == objc_msgSend_charRange(v9, v14, v15);
  }

  return v16;
}

- (id)hintForLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPTOCPartitioner hintForLayout:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCPartitioner.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 89, 0, "invalid nil value for '%{public}s'", "tocLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_hint(v4, v5, v6);

  return v14;
}

- (TSWPTOCInfo)info
{
  WeakRetained = objc_loadWeakRetained(&self->_info);

  return WeakRetained;
}

@end