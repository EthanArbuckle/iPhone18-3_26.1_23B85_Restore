@interface TSCH3DCategoryAxisLabelKind
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)kind;
- (double)unitSpaceValueForAxis:(id)a3 index:(unint64_t)a4;
- (id)labelForAxis:(id)a3 index:(unint64_t)a4;
- (unint64_t)count:(id)a3;
@end

@implementation TSCH3DCategoryAxisLabelKind

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DCategoryAxisLabelKind;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)kind
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276222424;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46B38 != -1)
  {
    dispatch_once(&qword_280A46B38, block);
  }

  v2 = qword_280A46B30;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DCategoryAxisLabelKind allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 108, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (unint64_t)count:(id)a3
{
  v6 = objc_msgSend_model(a3, a2, v3, v4, v5);
  v11 = objc_msgSend_numberOfValues(v6, v7, v8, v9, v10);

  return v11;
}

- (double)unitSpaceValueForAxis:(id)a3 index:(unint64_t)a4
{
  v5 = a3;
  isRangeContinuous = objc_msgSend_isRangeContinuous(v5, v6, v7, v8, v9);
  v14 = a4;
  if (isRangeContinuous)
  {
    objc_msgSend_unitSpaceValueForDataSpaceValue_(v5, v11, v14, v12, v13);
  }

  else
  {
    objc_msgSend_unitSpaceValueForCountSpaceValue_(v5, v11, v14, v12, v13);
  }

  v16 = v15;

  return v16;
}

- (id)labelForAxis:(id)a3 index:(unint64_t)a4
{
  v8 = objc_msgSend_model(a3, a2, v4, v5, v6);
  v13 = objc_msgSend_nameForCategory_(v8, v9, v10, v11, v12, a4);

  return v13;
}

@end