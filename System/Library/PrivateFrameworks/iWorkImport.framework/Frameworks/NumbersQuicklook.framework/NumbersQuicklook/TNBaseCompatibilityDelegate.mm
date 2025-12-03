@interface TNBaseCompatibilityDelegate
- (BOOL)isSageDocumentType:(id)type;
- (BOOL)isTextOnlyType:(id)type;
- (Class)exportOptionsControllerClass;
- (Class)exporterClassForType:(id)type options:(id)options;
- (id)backwardsCompatibleTypeForType:(id)type;
- (id)exportableTypes;
@end

@implementation TNBaseCompatibilityDelegate

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && (objc_msgSend_identifier(*MEMORY[0x277CE1E08], v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v10, v9), v9, v11))
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (Class)exportOptionsControllerClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNBaseCompatibilityDelegate exportOptionsControllerClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNBaseCompatibilityDelegate.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 186, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TNBaseCompatibilityDelegate exportOptionsControllerClass]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)exportableTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275F31ADC;
  block[3] = &unk_27A6A31A0;
  block[4] = self;
  if (qword_280A3DFA0 != -1)
  {
    dispatch_once(&qword_280A3DFA0, block);
  }

  return qword_280A3DF98;
}

- (BOOL)isSageDocumentType:(id)type
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"com.apple.iwork.numbers.numbers";
  v9[1] = @"com.apple.iwork.numbers.sffnumbers";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v9, 2);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v7, v6);

  return v3;
}

- (BOOL)isTextOnlyType:(id)type
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"public.comma-separated-values-text";
  v9[1] = @"public.tab-separated-values-text";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v9, 2);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v7, v6);

  return v3;
}

- (id)backwardsCompatibleTypeForType:(id)type
{
  if (objc_msgSend_isEqualToString_(type, a2, @"org.openxmlformats.spreadsheetml.sheet"))
  {
    v3 = @"com.microsoft.excel.xls";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end