@interface TSCKAuthorUtilities
+ (BOOL)author:(id)a3 matchesAuthor:(id)a4;
@end

@implementation TSCKAuthorUtilities

+ (BOOL)author:(id)a3 matchesAuthor:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSCKAuthorUtilities author:matchesAuthor:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKAuthorUtilities.m", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 20, 0, "invalid nil value for '%{public}s'", "otherAuthor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  objc_opt_class();
  v19 = TSUDynamicCast();
  v23 = objc_msgSend_name(v19, v20, v21, v22);

  objc_opt_class();
  v24 = TSUDynamicCast();
  v28 = objc_msgSend_name(v24, v25, v26, v27);

  v30 = objc_msgSend_author_name_matchesOtherAuthor_otherName_(a1, v29, v6, v23, v9, v28);
  return v30;
}

@end