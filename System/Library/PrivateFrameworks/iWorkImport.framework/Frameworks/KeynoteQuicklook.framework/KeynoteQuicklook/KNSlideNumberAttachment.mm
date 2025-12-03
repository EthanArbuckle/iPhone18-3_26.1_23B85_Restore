@interface KNSlideNumberAttachment
+ (Class)classForUnarchiver:(id)unarchiver;
+ (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver;
- (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver;
- (id)stringWithPageNumber:(unint64_t)number pageCount:(unint64_t)count charIndex:(unint64_t)index;
@end

@implementation KNSlideNumberAttachment

- (id)stringWithPageNumber:(unint64_t)number pageCount:(unint64_t)count charIndex:(unint64_t)index
{
  if (number == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = sub_275DC204C();
    v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"X", &stru_2884D8E20, @"Keynote");
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = objc_msgSend_parentStorage(self, v10, v11);
    v15 = objc_msgSend_documentRoot(v12, v13, v14);
    v18 = objc_msgSend_documentLocale(v15, v16, v17);
    v21 = objc_msgSend_locale(v18, v19, v20);
    objc_msgSend_setLocale_(v5, v22, v21);

    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, number);
    v7 = objc_msgSend_stringFromNumber_(v5, v25, v24);
  }

  return v7;
}

+ (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v4, v5) == 14)
  {
    v8 = unarchiverCopy;
    v9 = MEMORY[0x277D810B8];
    google::protobuf::internal::AssignDescriptors();
    v11 = objc_msgSend_messageWithDescriptor_(v8, v10, *(*(v9 + 88) + 976));
  }

  else
  {
    v12 = objc_msgSend_messageType(unarchiverCopy, v6, v7);
    v13 = unarchiverCopy;
    if (v12 == 2043)
    {
      v14 = MEMORY[0x277D810B8];
      google::protobuf::internal::AssignDescriptors();
      v16 = objc_msgSend_messageWithDescriptor_(v13, v15, *(*(v14 + 88) + 1072));

      v17 = *(v16 + 40);
    }

    else
    {
      google::protobuf::internal::AssignDescriptors();
      v19 = objc_msgSend_messageWithDescriptor_(v13, v18, off_2812EA908[94]);

      v17 = *(v19 + 24);
    }

    if (v17)
    {
      v11 = v17;
    }

    else
    {
      v11 = MEMORY[0x277D81088];
    }
  }

  return v11;
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = objc_msgSend_textualAttachmentArchiveFromUnarchiver_(self, v5, unarchiverCopy);
  if ((*(v6 + 16) & 2) == 0 || *(v6 + 32))
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___KNSlideNumberAttachment;
    selfCopy = objc_msgSendSuper2(&v10, sel_classForUnarchiver_, unarchiverCopy);
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return v8;
}

- (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = objc_opt_class();
  v6 = objc_msgSend_textualAttachmentArchiveFromUnarchiver_(v4, v5, unarchiverCopy);

  return v6;
}

@end