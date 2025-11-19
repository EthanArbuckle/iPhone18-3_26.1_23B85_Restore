@interface TSWPTextualAttachment
+ (Class)classForUnarchiver:(id)a3;
- (id)stringEquivalentWithLayoutParent:(id)a3;
- (id)stringEquivalentWithNumberProvider:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPTextualAttachment

+ (Class)classForUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_opt_class() == a1)
  {
    v5 = v4;
    google::protobuf::internal::AssignDescriptors();
    v7 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812DC408[122]);

    if ((*(v7 + 16) & 2) != 0)
    {
      if (*(v7 + 32) < 3u)
      {
LABEL_9:
        a1 = objc_opt_class();
        goto LABEL_10;
      }
    }

    else
    {
      v10 = objc_msgSend_messageType(v5, v8, v9);
      if (v10 == 2004 || v10 == 2009 || v10 == 2007)
      {
        goto LABEL_9;
      }
    }

    a1 = 0;
  }

LABEL_10:
  v11 = a1;

  return a1;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[122]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v12 = a4;
  if (objc_msgSend_shouldArchiveStringEquivalent(self, v6, v7) && (*(a3 + 16) & 1) != 0)
  {
    v9 = *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      v9 = *v9;
    }

    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9);
    objc_msgSend_setStringEquivalent_(self, v11, v10);
  }
}

- (void)saveToArchiver:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPTextualAttachment saveToArchiver:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTextualAttachment.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 68, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSWPTextualAttachment saveToArchiver:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  if (objc_msgSend_shouldArchiveStringEquivalent(self, a2, a3, a4))
  {
    v12 = objc_msgSend_stringEquivalent(self, v6, v7);
    if (v12)
    {
      v8 = v12;
      v11 = objc_msgSend_UTF8String(v8, v9, v10);
      sub_276DD0794(a3, v11);
    }
  }
}

- (id)stringEquivalentWithNumberProvider:(id)a3
{
  v3 = objc_msgSend_stringEquivalent(self, a2, a3);

  return v3;
}

- (id)stringEquivalentWithLayoutParent:(id)a3
{
  v3 = objc_msgSend_stringEquivalent(self, a2, a3);

  return v3;
}

@end