@interface TSAFunctionBrowserState
- (TSAFunctionBrowserState)initWithContext:(id)a3;
- (unsigned)back;
- (unsigned)backByAmount:(unint64_t)a3;
- (unsigned)forward;
- (unsigned)forwardByAmount:(unint64_t)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_filterOutUnknownFunctions:(id)a3;
- (void)recordNavigationTo:(unsigned __int16)a3;
- (void)recordRecentFunction:(unsigned __int16)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSAFunctionBrowserState

- (TSAFunctionBrowserState)initWithContext:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TSAFunctionBrowserState;
  v5 = [(TSAFunctionBrowserState *)&v16 initWithContext:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = objc_msgSend_initWithObjects_(v6, v7, &unk_28851B440, v8, &unk_28851B458, &unk_28851B470, &unk_28851B488, &unk_28851B4A0, &unk_28851B4B8, &unk_28851B4D0, 0);
    mRecentFunctions = v5->mRecentFunctions;
    v5->mRecentFunctions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBackFunctions = v5->mBackFunctions;
    v5->mBackFunctions = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mForwardFunctions = v5->mForwardFunctions;
    v5->mForwardFunctions = v13;

    v5->mCurrentFunction = 0;
  }

  return v5;
}

- (void)p_filterOutUnknownFunctions:(id)a3
{
  v8 = a3;
  v5 = objc_msgSend_indexesOfObjectsPassingTest_(v8, v3, &unk_28850F9F0, v4);
  objc_msgSend_removeObjectsAtIndexes_(v8, v6, v5, v7);
}

- (void)loadFromUnarchiver:(id)a3
{
  v46 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v46, v4, off_2812F3500[2], v5);

  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_tsp_initWithUInt32Array_(v7, v8, v6 + 40, v9);
  mBackFunctions = self->mBackFunctions;
  self->mBackFunctions = v10;

  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_tsp_initWithUInt32Array_(v12, v13, v6 + 56, v14);
  mForwardFunctions = self->mForwardFunctions;
  self->mForwardFunctions = v15;

  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v20 = objc_msgSend_tsp_initWithUInt32Array_(v17, v18, v6 + 24, v19);
  mRecentFunctions = self->mRecentFunctions;
  self->mRecentFunctions = v20;

  objc_msgSend_p_filterOutUnknownFunctions_(self, v22, self->mBackFunctions, v23);
  objc_msgSend_p_filterOutUnknownFunctions_(self, v24, self->mForwardFunctions, v25);
  objc_msgSend_p_filterOutUnknownFunctions_(self, v26, self->mRecentFunctions, v27);
  if (objc_msgSend_count(self->mRecentFunctions, v28, v29, v30) >= 0xD)
  {
    v34 = self->mRecentFunctions;
    v35 = objc_msgSend_count(v34, v31, v32, v33);
    objc_msgSend_removeObjectsInRange_(v34, v36, 12, v35 - 12);
  }

  if (objc_msgSend_count(self->mBackFunctions, v31, v32, v33) >= 0x65)
  {
    v40 = self->mBackFunctions;
    v41 = objc_msgSend_count(v40, v37, v38, v39);
    objc_msgSend_removeObjectsInRange_(v40, v42, 0, v41 - 100);
  }

  if (*(v6 + 16))
  {
    v43 = *(v6 + 72);
    self->mCurrentFunction = v43;
    v44 = v46;
    if (!v43)
    {
      goto LABEL_12;
    }

    v45 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v37, v43, v39);
    if (!v45)
    {
      self->mCurrentFunction = 0;
    }
  }

  else
  {
    self->mCurrentFunction = 0;
  }

  v44 = v46;
LABEL_12:
}

- (unsigned)back
{
  objc_msgSend_willModify(self, a2, v2, v3);
  if (!objc_msgSend_count(self->mBackFunctions, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAFunctionBrowserState back]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/mac/TSAFunctionBrowserState.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 97, 0, "can't go back; history is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_lastObject(self->mBackFunctions, v8, v9, v10);
  v24 = objc_msgSend_unsignedIntegerValue(v20, v21, v22, v23);

  objc_msgSend_removeLastObject(self->mBackFunctions, v25, v26, v27);
  if (self->mCurrentFunction)
  {
    mForwardFunctions = self->mForwardFunctions;
    v31 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v28, self->mCurrentFunction, v29);
    objc_msgSend_addObject_(mForwardFunctions, v32, v31, v33);
  }

  self->mCurrentFunction = v24;
  return v24;
}

- (unsigned)forward
{
  objc_msgSend_willModify(self, a2, v2, v3);
  if (!objc_msgSend_count(self->mForwardFunctions, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAFunctionBrowserState forward]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/mac/TSAFunctionBrowserState.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 111, 0, "can't go forward; history is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_lastObject(self->mForwardFunctions, v8, v9, v10);
  v24 = objc_msgSend_unsignedIntegerValue(v20, v21, v22, v23);

  objc_msgSend_removeLastObject(self->mForwardFunctions, v25, v26, v27);
  mBackFunctions = self->mBackFunctions;
  v31 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v29, self->mCurrentFunction, v30);
  objc_msgSend_addObject_(mBackFunctions, v32, v31, v33);

  self->mCurrentFunction = v24;
  return v24;
}

- (unsigned)backByAmount:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  do
  {
    result = objc_msgSend_back(self, a2, a3, v3);
    --v4;
  }

  while (v4);
  return result;
}

- (unsigned)forwardByAmount:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  do
  {
    result = objc_msgSend_forward(self, a2, a3, v3);
    --v4;
  }

  while (v4);
  return result;
}

- (void)recordNavigationTo:(unsigned __int16)a3
{
  if (self->mCurrentFunction != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3);
    objc_msgSend_removeAllObjects(self->mForwardFunctions, v6, v7, v8);
    mCurrentFunction = self->mCurrentFunction;
    if (self->mCurrentFunction)
    {
      mBackFunctions = self->mBackFunctions;
      v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, mCurrentFunction, v10);
      objc_msgSend_addObject_(mBackFunctions, v14, v13, v15);
    }

    if (objc_msgSend_count(self->mBackFunctions, v9, mCurrentFunction, v10) >= 0x65)
    {
      objc_msgSend_removeObjectAtIndex_(self->mBackFunctions, v16, 0, v17);
    }

    self->mCurrentFunction = a3;
  }
}

- (void)recordRecentFunction:(unsigned __int16)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, a2, a3, v3);
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, v4, v7);
  objc_msgSend_removeObject_(self->mRecentFunctions, v8, v16, v9);
  if (objc_msgSend_count(self->mRecentFunctions, v10, v11, v12) >= 0xC)
  {
    objc_msgSend_removeLastObject(self->mRecentFunctions, v13, v14, v15);
  }

  objc_msgSend_insertObject_atIndex_(self->mRecentFunctions, v13, v16, 0);
}

- (void)saveToArchiver:(id)a3
{
  v13 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v13, v4, sub_2760D38D8, off_2812F3500[2]);

  objc_msgSend_tsp_saveToUInt32Array_(self->mRecentFunctions, v6, v5 + 24, v7);
  objc_msgSend_tsp_saveToUInt32Array_(self->mBackFunctions, v8, v5 + 40, v9);
  objc_msgSend_tsp_saveToUInt32Array_(self->mForwardFunctions, v10, v5 + 56, v11);
  mCurrentFunction = self->mCurrentFunction;
  *(v5 + 16) |= 1u;
  *(v5 + 72) = mCurrentFunction;
}

@end