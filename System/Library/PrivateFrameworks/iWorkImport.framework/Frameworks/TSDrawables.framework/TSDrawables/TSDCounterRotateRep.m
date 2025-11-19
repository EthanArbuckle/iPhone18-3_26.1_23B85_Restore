@interface TSDCounterRotateRep
- (CGRect)clipRect;
- (id)p_childRep;
- (id)p_counterRotateInfo;
- (id)p_possibleChildRep;
@end

@implementation TSDCounterRotateRep

- (id)p_counterRotateInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDCounterRotateRep p_counterRotateInfo]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 27, 0, "invalid nil value for '%{public}s'", "counterRotateInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  return v6;
}

- (id)p_possibleChildRep
{
  v4 = objc_msgSend_childReps(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) >= 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDCounterRotateRep p_possibleChildRep]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 33, 0, "Should have either one or zero child reps.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_childReps(self, v7, v8);
  v19 = objc_msgSend_firstObject(v16, v17, v18);

  return v19;
}

- (id)p_childRep
{
  v4 = objc_msgSend_p_possibleChildRep(self, a2, v2);
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDCounterRotateRep p_childRep]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 39, 0, "invalid nil value for '%{public}s'", "childRepToReturn");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return v4;
}

- (CGRect)clipRect
{
  v3 = objc_msgSend_p_childRep(self, a2, v2);
  objc_msgSend_clipRect(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_layout(v3, v14, v15);
  v19 = v16;
  if (v16)
  {
    objc_msgSend_transform(v16, v17, v18);
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
  }

  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v30 = CGRectApplyAffineTransform(v29, &v28);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

@end