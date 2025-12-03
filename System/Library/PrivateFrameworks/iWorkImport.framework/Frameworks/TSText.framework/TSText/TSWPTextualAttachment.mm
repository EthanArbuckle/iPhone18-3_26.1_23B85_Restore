@interface TSWPTextualAttachment
+ (Class)classForUnarchiver:(id)unarchiver;
- (id)stringEquivalentWithLayoutParent:(id)parent;
- (id)stringEquivalentWithNumberProvider:(id)provider;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPTextualAttachment

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_opt_class() == self)
  {
    v5 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v7 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812DC408[122]);

    if ((*(v7 + 16) & 2) != 0)
    {
      if (*(v7 + 32) < 3u)
      {
LABEL_9:
        self = objc_opt_class();
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

    self = 0;
  }

LABEL_10:
  selfCopy = self;

  return self;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[122]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_shouldArchiveStringEquivalent(self, v6, v7) && (*(archive + 16) & 1) != 0)
  {
    v9 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      v9 = *v9;
    }

    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9);
    objc_msgSend_setStringEquivalent_(self, v11, v10);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
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

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  if (objc_msgSend_shouldArchiveStringEquivalent(self, a2, archive, archiver))
  {
    v12 = objc_msgSend_stringEquivalent(self, v6, v7);
    if (v12)
    {
      v8 = v12;
      v11 = objc_msgSend_UTF8String(v8, v9, v10);
      sub_276DD0794(archive, v11);
    }
  }
}

- (id)stringEquivalentWithNumberProvider:(id)provider
{
  v3 = objc_msgSend_stringEquivalent(self, a2, provider);

  return v3;
}

- (id)stringEquivalentWithLayoutParent:(id)parent
{
  v3 = objc_msgSend_stringEquivalent(self, a2, parent);

  return v3;
}

@end