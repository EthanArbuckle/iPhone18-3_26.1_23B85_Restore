@interface TSCH3DSeriesLabelKind
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)kind;
- (id)labelForAxis:(id)a3 index:(unint64_t)a4;
- (unint64_t)count:(id)a3;
@end

@implementation TSCH3DSeriesLabelKind

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DSeriesLabelKind;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)kind
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276222C30;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46B58 != -1)
  {
    dispatch_once(&qword_280A46B58, block);
  }

  v2 = qword_280A46B50;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSeriesLabelKind allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 145, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (unint64_t)count:(id)a3
{
  v3 = a3;
  if ((objc_msgSend_isCategory(v3, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSeriesLabelKind count:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 151, 0, "invalid axis %@ for series labels", v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_model(v3, v8, v9, v10, v11);
  v32 = objc_msgSend_numberOfSeries(v27, v28, v29, v30, v31);

  return v32;
}

- (id)labelForAxis:(id)a3 index:(unint64_t)a4
{
  v5 = a3;
  if ((objc_msgSend_isCategory(v5, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSeriesLabelKind labelForAxis:index:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 162, 0, "invalid axis %@ for series labels", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_model(v5, v10, v11, v12, v13);
  v34 = objc_msgSend_numberOfSeries(v29, v30, v31, v32, v33);

  v39 = objc_msgSend_model(v5, v35, v36, v37, v38);
  v44 = objc_msgSend_nameForSeries_(v39, v40, v41, v42, v43, a4 % v34);

  return v44;
}

@end