@interface KNSlideNumberAttachment
+ (Class)classForUnarchiver:(id)a3;
+ (const)textualAttachmentArchiveFromUnarchiver:(id)a3;
- (const)textualAttachmentArchiveFromUnarchiver:(id)a3;
- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5;
@end

@implementation KNSlideNumberAttachment

- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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

    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, a3);
    v7 = objc_msgSend_stringFromNumber_(v5, v25, v24);
  }

  return v7;
}

+ (const)textualAttachmentArchiveFromUnarchiver:(id)a3
{
  v3 = a3;
  if (objc_msgSend_messageType(v3, v4, v5) == 14)
  {
    v8 = v3;
    v9 = MEMORY[0x277D810B8];
    google::protobuf::internal::AssignDescriptors();
    v11 = objc_msgSend_messageWithDescriptor_(v8, v10, *(*(v9 + 88) + 976));
  }

  else
  {
    v12 = objc_msgSend_messageType(v3, v6, v7);
    v13 = v3;
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

+ (Class)classForUnarchiver:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_textualAttachmentArchiveFromUnarchiver_(a1, v5, v4);
  if ((*(v6 + 16) & 2) == 0 || *(v6 + 32))
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___KNSlideNumberAttachment;
    v7 = objc_msgSendSuper2(&v10, sel_classForUnarchiver_, v4);
  }

  else
  {
    v7 = a1;
  }

  v8 = v7;

  return v8;
}

- (const)textualAttachmentArchiveFromUnarchiver:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v6 = objc_msgSend_textualAttachmentArchiveFromUnarchiver_(v4, v5, v3);

  return v6;
}

@end