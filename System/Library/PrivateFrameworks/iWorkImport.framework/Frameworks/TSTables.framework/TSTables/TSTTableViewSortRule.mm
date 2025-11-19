@interface TSTTableViewSortRule
+ (id)ruleWithViewIndex:(TSUViewColumnOrRowIndex)a3 direction:(int)a4;
- (TSTTableViewSortRule)initWithViewIndex:(TSUViewColumnOrRowIndex)a3 direction:(int)a4;
- (TSUModelColumnOrRowIndex)baseIndex;
- (id)initFromArchive:(const void *)a3;
- (void)encodeToArchive:(void *)a3;
@end

@implementation TSTTableViewSortRule

+ (id)ruleWithViewIndex:(TSUViewColumnOrRowIndex)a3 direction:(int)a4
{
  v4 = *&a4;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithViewIndex_direction_(v6, v7, a3._index, v4, v8);

  return v9;
}

- (TSTTableViewSortRule)initWithViewIndex:(TSUViewColumnOrRowIndex)a3 direction:(int)a4
{
  v6.receiver = self;
  v6.super_class = TSTTableViewSortRule;
  result = [(TSTTableSortRule *)&v6 initWithBaseIndex:0x7FFFFFFFLL direction:*&a4];
  if (result)
  {
    result->_viewIndex = a3;
  }

  return result;
}

- (TSUModelColumnOrRowIndex)baseIndex
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableViewSortRule baseIndex]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortRule.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 111, 0, "Base index is not valid on TSTTableViewSortRule.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v17.receiver = self;
  v17.super_class = TSTTableViewSortRule;
  return [(TSTTableSortRule *)&v17 baseIndex];
}

- (void)encodeToArchive:(void *)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableViewSortRule encodeToArchive:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortRule.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 118, 0, "TSTTableViewColumnSortRule should never be archived");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: %s", v19, v20, "TSTTableViewColumnSortRule should never be archived", "[TSTTableViewSortRule encodeToArchive:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v22, v17, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (id)initFromArchive:(const void *)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableViewSortRule initFromArchive:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortRule.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 122, 0, "TSTTableViewColumnSortRule should never be unarchived");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s: %s", v18, v19, "TSTTableViewColumnSortRule should never be unarchived", "[TSTTableViewSortRule initFromArchive:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

@end