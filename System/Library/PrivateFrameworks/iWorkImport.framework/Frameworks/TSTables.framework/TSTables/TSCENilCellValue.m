@interface TSCENilCellValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCellValue:(id)a3;
- (TSCENilCellValue)init;
- (TSCENilCellValue)initWithLocale:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareToCellValue:(id)a3;
@end

@implementation TSCENilCellValue

- (TSCENilCellValue)init
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);
  v10 = objc_msgSend_initWithLocale_(self, v7, v6, v8, v9);

  return v10;
}

- (TSCENilCellValue)initWithLocale:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSCENilCellValue;
  result = [(TSCECellValue *)&v4 initWithLocale:a3];
  if (result)
  {
    result->super._valueType = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCENilCellValue alloc];
  v9 = objc_msgSend_locale(self, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithLocale_(v4, v10, v9, v11, v12);

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSCENilCellValue;
  return [(TSCECellValue *)&v4 isEqual:a3];
}

- (BOOL)isEqualToCellValue:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_valueType(v3, v4, v5, v6, v7) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)compareToCellValue:(id)a3
{
  v6 = a3;
  v7 = v6[8];
  if (v7 < 8 && ((0xADu >> v7) & 1) != 0)
  {
    v8 = qword_2217E05C8[v7];
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCENilCellValue compareToCellValue:]", v4, v5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENilCellValue.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 83, 0, "Unexpected value type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    v8 = -1;
  }

  return v8;
}

@end