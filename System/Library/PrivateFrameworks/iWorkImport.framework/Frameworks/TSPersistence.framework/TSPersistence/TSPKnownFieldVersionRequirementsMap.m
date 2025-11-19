@interface TSPKnownFieldVersionRequirementsMap
+ (id)newKnownFieldVersionRequirementsMapForMessage:(const Message *)a3 knownFieldRuleProvider:(id)a4;
+ (void)updateMap:(void *)a3 message:(const Message *)a4 byAddingRulesFromKnownFieldRuleProvider:(id)a5;
- (TSPKnownFieldVersionRequirementsMap)init;
- (TSPKnownFieldVersionRequirementsMap)initWithMap:(void *)a3;
- (void)addRulesFromKnownFieldRuleProvider:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldVersionRequirementsMap

- (TSPKnownFieldVersionRequirementsMap)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPKnownFieldVersionRequirementsMap init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 47, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPKnownFieldVersionRequirementsMap init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPKnownFieldVersionRequirementsMap)initWithMap:(void *)a3
{
  v3 = a3;
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = TSPKnownFieldVersionRequirementsMap;
    v4 = [(TSPKnownFieldVersionRequirementsMap *)&v7 init];
    v5 = v4;
    if (v4)
    {
      sub_276A1B874(v4 + 1, v3);
    }

    self = v5;
    v3 = self;
  }

  return v3;
}

+ (id)newKnownFieldVersionRequirementsMapForMessage:(const Message *)a3 knownFieldRuleProvider:(id)a4
{
  v6 = a4;
  updated = objc_msgSend_updateMap_message_byAddingRulesFromKnownFieldRuleProvider_(a1, v7, 0, a3, v6);
  if (updated)
  {
    v9 = [a1 alloc];
    v11 = objc_msgSend_initWithMap_(v9, v10, updated);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)updateMap:(void *)a3 message:(const Message *)a4 byAddingRulesFromKnownFieldRuleProvider:(id)a5
{
  v7 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A1AD34;
  v12[3] = &unk_27A6E4708;
  v14 = &v16;
  v15 = a4;
  v13 = v7;
  v8 = v7;
  objc_msgSend_enumerateKnownFieldRulesUsingBlock_(v8, v9, v12);
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (void)addRulesFromKnownFieldRuleProvider:(id)a3
{
  v19 = a3;
  ptr = self->_map.__ptr_;
  if (!ptr)
  {
    TSUSetCrashReporterInfo();
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPKnownFieldVersionRequirementsMap addRulesFromKnownFieldRuleProvider:]", "[TSPKnownFieldVersionRequirementsMap addRulesFromKnownFieldRuleProvider:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm", 147);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 147, 1, "Map should have been initialized.");

    TSUCrashBreakpoint();
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  if (objc_msgSend_updateMap_message_byAddingRulesFromKnownFieldRuleProvider_(v5, v6, ptr, 0, v19) != ptr)
  {
    TSUSetCrashReporterInfo();
    v13 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPKnownFieldVersionRequirementsMap addRulesFromKnownFieldRuleProvider:]", "[TSPKnownFieldVersionRequirementsMap addRulesFromKnownFieldRuleProvider:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm", 150);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 150, 1, "Map address should have not changed.");

    TSUCrashBreakpoint();
LABEL_8:
    abort();
  }
}

- (void)saveToArchiver:(id)a3
{
  v13 = a3;
  ptr = self->_map.__ptr_;
  if (!ptr)
  {
    TSUSetCrashReporterInfo();
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPKnownFieldVersionRequirementsMap saveToArchiver:]", "[TSPKnownFieldVersionRequirementsMap saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm", 155);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 155, 1, "Map should have been initialized.");

    TSUCrashBreakpoint();
    abort();
  }

  for (i = ptr + 16; ; objc_msgSend_addDocumentFeatureInfoWithIdentifier_readVersion_writeVersion_validatingValues_(v13, v4, *(i + 9), *(i + 10), *(i + 8), (i[88] & 1) == 0))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }
}

@end