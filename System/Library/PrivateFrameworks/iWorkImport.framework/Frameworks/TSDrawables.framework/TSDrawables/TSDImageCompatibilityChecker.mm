@interface TSDImageCompatibilityChecker
+ (void)initialize;
- (TSDImageCompatibilityChecker)initWithImageData:(id)a3;
- (void)checkCompatibilityUpToLevel:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation TSDImageCompatibilityChecker

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc(MEMORY[0x277D81378]);
    v4 = objc_msgSend_initWithLimit_(v2, v3, 10);
    v5 = qword_280A4C3A8;
    qword_280A4C3A8 = v4;
  }
}

- (TSDImageCompatibilityChecker)initWithImageData:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDImageCompatibilityChecker initWithImageData:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageCompatibilityChecker.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 48, 0, "Invalid parameter not satisfying: %{public}s", "imageData != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17.receiver = self;
  v17.super_class = TSDImageCompatibilityChecker;
  v14 = [(TSDImageCompatibilityChecker *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mImageData, a3);
  }

  return v15;
}

- (void)checkCompatibilityUpToLevel:(int64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (a3 <= 1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImageCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageCompatibilityChecker.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 57, 0, "Invalid parameter not satisfying: %{public}s", "maxDesiredCompatibilityLevel > TSDMediaCompatibilityLevelNone");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = qword_280A4C3A8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2766FEB48;
  v18[3] = &unk_27A6CD238;
  v19 = v7;
  v20 = a3;
  v18[4] = self;
  v16 = v7;
  objc_msgSend_performAsync_(v15, v17, v18);
}

@end