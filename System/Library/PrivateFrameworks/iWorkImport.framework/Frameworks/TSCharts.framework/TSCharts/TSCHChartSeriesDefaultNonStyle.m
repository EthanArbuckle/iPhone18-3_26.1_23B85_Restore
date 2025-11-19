@interface TSCHChartSeriesDefaultNonStyle
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)defaultNonStyle;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
@end

@implementation TSCHChartSeriesDefaultNonStyle

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCHChartSeriesDefaultNonStyle;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)defaultNonStyle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762B6B34;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A47260 != -1)
  {
    dispatch_once(&qword_280A47260, block);
  }

  v2 = qword_280A47258;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHChartSeriesDefaultNonStyle allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 387, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartSeriesDefaultNonStyle mixingTypeWithObject:context:]", a4);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v17, v18, v19, v8, v13, 460, 0, "%@ does not respond to %s", v15, "[TSCHChartSeriesDefaultNonStyle mixingTypeWithObject:context:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, v4, v5, "[TSCHChartSeriesDefaultNonStyle mixedObjectWithFraction:ofObject:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v16, v17, v18, v7, v12, 466, 0, "%@ does not respond to %s", v14, "[TSCHChartSeriesDefaultNonStyle mixedObjectWithFraction:ofObject:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  return 0;
}

@end