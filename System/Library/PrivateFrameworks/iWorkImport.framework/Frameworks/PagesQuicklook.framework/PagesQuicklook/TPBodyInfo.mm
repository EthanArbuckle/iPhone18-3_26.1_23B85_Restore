@interface TPBodyInfo
- (TPBodyInfo)initWithBodyStorage:(id)storage;
- (TSDInfo)parentInfo;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)setGeometry:(id)geometry;
@end

@implementation TPBodyInfo

- (TPBodyInfo)initWithBodyStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = TPBodyInfo;
  v6 = [(TPBodyInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bodyStorage, storage);
  }

  return v7;
}

- (void)setGeometry:(id)geometry
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPBodyInfo setGeometry:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 65, 0, "can't set geometry on a body");

  v25 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v25, v20, v21, v22, v23, v24);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  if (WeakRetained == neededCopy)
  {

    objc_storeWeak(&self->_parentInfo, 0);
  }
}

- (TSDInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

@end