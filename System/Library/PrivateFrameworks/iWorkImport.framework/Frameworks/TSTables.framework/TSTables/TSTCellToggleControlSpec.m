@interface TSTCellToggleControlSpec
+ (id)cellSpecFromTSKFormat:(id)a3;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)toggleControlSpec;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateFormatAndValue:(id)a3;
- (TSTCellToggleControlSpec)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTCellToggleControlSpec

+ (id)toggleControlSpec
{
  v2 = objc_alloc_init(TSTCellToggleControlSpec);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)validateFormatAndValue:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_getCurrentFormat(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_formatType(v8, v9, v10, v11, v12);

  v18 = v13 == 263 && objc_msgSend_valueType(v3, v14, v15, v16, v17) == 6;
  return v18;
}

+ (id)cellSpecFromTSKFormat:(id)a3
{
  v3 = a3;
  if (objc_msgSend_formatType(v3, v4, v5, v6, v7) != 263)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSTCellToggleControlSpec cellSpecFromTSKFormat:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellToggleControlSpec.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 68, 0, "Expected checkbox format.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_alloc_init(TSTCellToggleControlSpec);

  return v22;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSTCellToggleControlSpec alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5, v8);

  return v9;
}

- (TSTCellToggleControlSpec)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v22.receiver = self;
  v22.super_class = TSTCellToggleControlSpec;
  v8 = [(TSTCellSpec *)&v22 init:a3];
  if (v8)
  {
    v9 = *(a3 + 16) == 8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellToggleControlSpec initWithArchive:unarchiver:]", v6, v7);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellToggleControlSpec.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 82, 0, "Wrong interaction type for a checkbox.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = objc_msgSend_interactionType(self, a2, a3, a4, v4);
  *(a3 + 4) |= 0x20u;
  *(a3 + 16) = v6;
}

@end