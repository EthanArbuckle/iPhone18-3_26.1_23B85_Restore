@interface TSCHChartGridValue
+ (id)NSDateConvertedFromGridValue:(id)a3;
+ (id)NSDateFromGridValue:(id)a3;
+ (id)instanceWithArchive:(const void *)a3;
+ (void)saveGridValue:(id)a3 toArchive:(void *)a4;
- (TSCHChartGridValue)initWithArchive:(const void *)a3;
@end

@implementation TSCHChartGridValue

+ (id)NSDateFromGridValue:(id)a3
{
  v3 = a3;
  if (objc_msgSend_chartGridValueType(v3, v4, v5, v6, v7) == 2)
  {
    objc_opt_class();
    v12 = TSUCheckedDynamicCast();
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "+[TSCHChartGridValue NSDateFromGridValue:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGridValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 116, 0, "Attempted to find NSDate from a non-date value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v12 = 0;
  }

  return v12;
}

+ (id)NSDateConvertedFromGridValue:(id)a3
{
  objc_msgSend_doubleValue(a3, a2, v3, v4, v5);

  return objc_msgSend_dateValueWithDouble_(TSCHChartGridValue, v6, v7, v8, v9);
}

+ (id)instanceWithArchive:(const void *)a3
{
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, v3, v4, v5);
  v11 = *(a3 + 4);
  if (v11)
  {
    v12 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v7, *(a3 + 3), v9, v10);
  }

  else if ((v11 & 8) != 0)
  {
    v12 = objc_msgSend_dateValueWithDouble_(TSCHChartGridValue, v7, *(a3 + 6), v9, v10);
  }

  else
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_8;
    }

    v12 = objc_msgSend_durationValueWithDouble_(TSCHChartGridValue, v7, *(a3 + 5), v9, v10);
  }

  v13 = v12;

  v8 = v13;
LABEL_8:

  return v8;
}

- (TSCHChartGridValue)initWithArchive:(const void *)a3
{
  v7 = objc_msgSend_instanceWithArchive_(TSCHChartGridValue, a2, v3, v4, v5, a3);

  return v7;
}

+ (void)saveGridValue:(id)a3 toArchive:(void *)a4
{
  v17 = a3;
  v9 = objc_msgSend_chartGridValueType(v17, v5, v6, v7, v8);
  switch(v9)
  {
    case 1:
      objc_msgSend_doubleValue(v17, v10, v11, v12, v13);
      v15 = 1;
      v16 = 24;
      break;
    case 2:
      objc_msgSend_doubleValue(v17, v10, v11, v12, v13);
      v15 = 8;
      v16 = 48;
      break;
    case 3:
      objc_msgSend_doubleValue(v17, v10, v11, v12, v13);
      v15 = 4;
      v16 = 40;
      break;
    default:
      goto LABEL_8;
  }

  *(a4 + 4) |= v15;
  *(a4 + v16) = v14;
LABEL_8:
}

@end