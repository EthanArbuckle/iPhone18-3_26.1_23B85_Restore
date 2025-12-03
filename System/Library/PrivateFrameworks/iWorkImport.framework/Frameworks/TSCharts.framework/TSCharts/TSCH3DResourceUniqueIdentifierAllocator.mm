@interface TSCH3DResourceUniqueIdentifierAllocator
+ (unint64_t)allocateResourceUniqueIdentifier;
@end

@implementation TSCH3DResourceUniqueIdentifierAllocator

+ (unint64_t)allocateResourceUniqueIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = qword_280A46B28++;
  objc_sync_exit(selfCopy);

  v8 = v3 + 1;
  if (v3 == -1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "+[TSCH3DResourceUniqueIdentifierAllocator allocateResourceUniqueIdentifier]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceUniqueIdentifierAllocator.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 22, 0, "We used all the cache identifiers");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  return v8;
}

@end