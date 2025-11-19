@interface TSWPSmartField
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEquivalentToObject:(id)a3;
- (TSWPSmartField)initWithContext:(id)a3;
- (TSWPStorage)parentStorage;
- (_NSRange)range;
- (id)copyWithContext:(id)a3;
- (id)initFromSmartField:(id)a3;
- (unsigned)smartFieldKind;
- (void)i_setTextAttributeUUIDString:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)resetTextAttributeUUIDString;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPSmartField

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v7 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v5, *MEMORY[0x277CBE658], @"It is illegal to instantiate TSWPSmartField it is abstract", 0);;
    objc_exception_throw(v7);
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___TSWPSmartField;
  return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
}

- (TSWPSmartField)initWithContext:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TSWPSmartField;
  v7 = [(TSWPSmartField *)&v14 initWithContext:v4];
  if (v7)
  {
    v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v5, v6);
    v11 = objc_msgSend_UUIDString(v8, v9, v10);
    textAttributeUUIDString = v7->_textAttributeUUIDString;
    v7->_textAttributeUUIDString = v11;
  }

  return v7;
}

- (id)initFromSmartField:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(v4, v5, v6);
  v17.receiver = self;
  v17.super_class = TSWPSmartField;
  v8 = [(TSWPSmartField *)&v17 initWithContext:v7];

  if (v8)
  {
    v11 = objc_msgSend_textAttributeUUIDString(v4, v9, v10);
    textAttributeUUIDString = v8->_textAttributeUUIDString;
    v8->_textAttributeUUIDString = v11;

    v15 = objc_msgSend_parentStorage(v4, v13, v14);
    objc_storeWeak(&v8->_parentStorage, v15);
  }

  return v8;
}

- (void)i_setTextAttributeUUIDString:(id)a3
{
  v7 = a3;
  if (self->_textAttributeUUIDString != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_textAttributeUUIDString, a3);
  }
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContext_(v5, v6, v4);
  objc_storeStrong(v7 + 8, self->_textAttributeUUIDString);

  return v7;
}

- (unsigned)smartFieldKind
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPSmartField smartFieldKind]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSmartField.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 83, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSWPSmartField smartFieldKind]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (_NSRange)range
{
  v4 = MEMORY[0x277D81490];
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  v7 = objc_msgSend_parentStorage(self, a2, v2);
  v10 = objc_msgSend_attributeArrayKind(self, v8, v9);
  v12 = objc_msgSend_attributeArrayForKind_(v7, v11, v10);
  v13 = v12;
  if (v12)
  {
    v14 = (*(*v12 + 112))(v12, self, self->_lastTableIndex);
    self->_lastTableIndex = v14;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = TSWPAttributeArray::rangeForAttributeIndex(v13, v14);
      v6 = v15;
      if (v5 > objc_msgSend_length(v7, v15, v16) || &v6[v5] > objc_msgSend_length(v7, v17, v18))
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPSmartField range]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSmartField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 109, 0, "Bad range past end of storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
        v5 = *v4;
        v6 = v4[1];
      }
    }
  }

  v26 = v5;
  v27 = v6;
  result.length = v27;
  result.location = v26;
  return result;
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = objc_msgSend_context(a3, a2, a3, a4);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v5, v6);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v5 = objc_msgSend_context(a3, a2, a3);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v4, v5);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  textAttributeUUIDString = self->_textAttributeUUIDString;
  if (textAttributeUUIDString)
  {
    sub_276D9F478(v6, textAttributeUUIDString);
    sub_276DD7900(a3, __s);
    if (v7)
    {
      free(v7);
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPSmartField saveToArchiver:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSmartField.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 176, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSWPSmartField saveToArchiver:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 16))
  {
    v11 = v6;
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v7, v8, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    if (v10)
    {
      objc_msgSend_i_setTextAttributeUUIDString_(self, v9, v10);
    }

    v6 = v11;
  }
}

- (void)resetTextAttributeUUIDString
{
  v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  v6 = objc_msgSend_UUIDString(v8, v4, v5);
  objc_msgSend_i_setTextAttributeUUIDString_(self, v7, v6);
}

- (BOOL)isEquivalentToObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      v10 = objc_msgSend_textAttributeUUIDString(v6, v7, v8);
      if (!self->_textAttributeUUIDString)
      {
        v11 = MEMORY[0x277D81150];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPSmartField isEquivalentToObject:]");
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSmartField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 203, 0, "Expect to have a UUIDString.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      }

      if (v10)
      {
        textAttributeUUIDString = self->_textAttributeUUIDString;
        if (textAttributeUUIDString)
        {
          isEqualToString = objc_msgSend_isEqualToString_(textAttributeUUIDString, v9, v10);
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPSmartField isEquivalentToObject:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSmartField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 204, 0, "Expect to have a UUIDString for other object.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }

      isEqualToString = 0;
      goto LABEL_12;
    }

    isEqualToString = 0;
  }

LABEL_13:

  return isEqualToString;
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end