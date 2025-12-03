@interface TSPFileDataStorage
- (id)AVAssetWithOptions:(id)options forData:(id)data;
- (unint64_t)encodedLength;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)performReadWithAccessor:(id)accessor;
@end

@implementation TSPFileDataStorage

- (void)performReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPFileDataStorage performReadWithAccessor:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFileDataStorage.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 17, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPFileDataStorage performReadWithAccessor:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A15040;
  v7[3] = &unk_27A6E2ED0;
  v8 = accessorCopy;
  v5 = accessorCopy;
  objc_msgSend_performReadWithAccessor_(self, v6, v7);
}

- (id)AVAssetWithOptions:(id)options forData:(id)data
{
  optionsCopy = options;
  dataCopy = data;
  v10 = objc_msgSend_decryptionInfo(self, v8, v9);
  if (v10)
  {
    v24.receiver = self;
    v24.super_class = TSPFileDataStorage;
    v11 = [(TSPStreamDataStorage *)&v24 AVAssetWithOptions:optionsCopy usingResourceLoaderForData:dataCopy];
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_276A152AC;
    v22 = sub_276A152BC;
    v23 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276A152C4;
    v14[3] = &unk_27A6E3390;
    v17 = &v18;
    v15 = optionsCopy;
    selfCopy = self;
    objc_msgSend_performReadWithAccessor_(self, v12, v14);
    v11 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  return v11;
}

- (unint64_t)encodedLength
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276A1547C;
  v4[3] = &unk_27A6E4640;
  v4[4] = &v5;
  objc_msgSend_performReadWithAccessor_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end