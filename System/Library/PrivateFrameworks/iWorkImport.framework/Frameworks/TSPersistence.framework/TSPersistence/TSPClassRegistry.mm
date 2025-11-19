@interface TSPClassRegistry
- (Class)classForMessage:(const Message *)a3;
- (TSPClassRegistry)init;
- (TSPClassRegistry)initWithName:(id)a3;
@end

@implementation TSPClassRegistry

- (TSPClassRegistry)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPClassRegistry init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPClassRegistry.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 21, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPClassRegistry init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPClassRegistry)initWithName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSPClassRegistry;
  v7 = [(TSPClassRegistry *)&v13 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    name = v7->_name;
    v7->_name = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registry = v7->_registry;
    v7->_registry = v10;
  }

  return v7;
}

- (Class)classForMessage:(const Message *)a3
{
  ExtensionFieldInMessage = objc_msgSend_tagNumberForLastExtensionFieldInMessage_(TSPArchivingUtility, a2, a3);
  if (ExtensionFieldInMessage)
  {
    v7 = ExtensionFieldInMessage;
    v8 = objc_msgSend_p_classForExtensionNumber_(self, v6, ExtensionFieldInMessage);
    if (v8)
    {
LABEL_12:
      v29 = v8;
      goto LABEL_13;
    }

    (*(a3->var0 + 19))(a3);
    KnownExtensionByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v9, v7);
    v11 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPClassRegistry classForMessage:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPClassRegistry.mm");
    name = self->_name;
    if (KnownExtensionByNumber)
    {
      v18 = *KnownExtensionByNumber;
      if (*(*KnownExtensionByNumber + 23) < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v13, v16, 39, 0, "%{public}@ could not find class for extension number: %d, extension type: %{public}s", name, v7, *v18);
LABEL_11:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        goto LABEL_12;
      }
    }

    else
    {
      v18 = "";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v13, v16, 39, 0, "%{public}@ could not find class for extension number: %d, extension type: %{public}s", name, v7, v18);
    goto LABEL_11;
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPClassRegistry classForMessage:]");
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPClassRegistry.mm");
  v23 = self->_name;
  v24 = (*(a3->var0 + 19))(a3);
  v26 = *v24;
  if (*(*v24 + 23) < 0)
  {
    v26 = *v26;
  }

  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v22, 44, 0, "%{public}@ could not find extension number for message: %{public}s", v23, v26);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  v29 = 0;
LABEL_13:

  return v29;
}

@end