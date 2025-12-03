@interface TSPKnownFieldVersionRequirementsMap
+ (id)newKnownFieldVersionRequirementsMapForMessage:(const Message *)message knownFieldRuleProvider:(id)provider;
+ (void)updateMap:(void *)map message:(const Message *)message byAddingRulesFromKnownFieldRuleProvider:(id)provider;
- (TSPKnownFieldVersionRequirementsMap)init;
- (TSPKnownFieldVersionRequirementsMap)initWithMap:(void *)map;
- (void)addRulesFromKnownFieldRuleProvider:(id)provider;
- (void)saveToArchiver:(id)archiver;
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

- (TSPKnownFieldVersionRequirementsMap)initWithMap:(void *)map
{
  selfCopy = map;
  if (map)
  {
    v7.receiver = self;
    v7.super_class = TSPKnownFieldVersionRequirementsMap;
    v4 = [(TSPKnownFieldVersionRequirementsMap *)&v7 init];
    v5 = v4;
    if (v4)
    {
      sub_276A1B874(v4 + 1, selfCopy);
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)newKnownFieldVersionRequirementsMapForMessage:(const Message *)message knownFieldRuleProvider:(id)provider
{
  providerCopy = provider;
  updated = objc_msgSend_updateMap_message_byAddingRulesFromKnownFieldRuleProvider_(self, v7, 0, message, providerCopy);
  if (updated)
  {
    v9 = [self alloc];
    v11 = objc_msgSend_initWithMap_(v9, v10, updated);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)updateMap:(void *)map message:(const Message *)message byAddingRulesFromKnownFieldRuleProvider:(id)provider
{
  providerCopy = provider;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  mapCopy = map;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A1AD34;
  v12[3] = &unk_27A6E4708;
  v14 = &v16;
  messageCopy = message;
  v13 = providerCopy;
  v8 = providerCopy;
  objc_msgSend_enumerateKnownFieldRulesUsingBlock_(v8, v9, v12);
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (void)addRulesFromKnownFieldRuleProvider:(id)provider
{
  providerCopy = provider;
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
  if (objc_msgSend_updateMap_message_byAddingRulesFromKnownFieldRuleProvider_(v5, v6, ptr, 0, providerCopy) != ptr)
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

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
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

  for (i = ptr + 16; ; objc_msgSend_addDocumentFeatureInfoWithIdentifier_readVersion_writeVersion_validatingValues_(archiverCopy, v4, *(i + 9), *(i + 10), *(i + 8), (i[88] & 1) == 0))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }
}

@end