@interface TSWPPencilAnnotation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToObject:(id)object;
- (NSString)description;
- (TSWPPencilAnnotation)initWithContext:(id)context pencilAnnotationStorage:(id)storage;
- (TSWPStorage)parentStorage;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)i_setTextAttributeUUIDString:(id)string;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)resetTextAttributeUUIDString;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPPencilAnnotation

- (TSWPPencilAnnotation)initWithContext:(id)context pencilAnnotationStorage:(id)storage
{
  contextCopy = context;
  storageCopy = storage;
  v20.receiver = self;
  v20.super_class = TSWPPencilAnnotation;
  v10 = [(TSWPPencilAnnotation *)&v20 initWithContext:contextCopy];
  if (v10)
  {
    v11 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v8, v9);
    v14 = objc_msgSend_UUIDString(v11, v12, v13);
    v17 = objc_msgSend_copy(v14, v15, v16);
    textAttributeUUIDString = v10->_textAttributeUUIDString;
    v10->_textAttributeUUIDString = v17;

    objc_storeStrong(&v10->_pencilAnnotationStorage, storage);
  }

  return v10;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_pencilAnnotationStorage(self, v6, v7);
  v10 = objc_msgSend_initWithContext_pencilAnnotationStorage_(v5, v9, contextCopy, v8);

  v13 = objc_msgSend_textAttributeUUIDString(self, v11, v12);
  objc_msgSend_i_setTextAttributeUUIDString_(v10, v14, v13);

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_context(self, a2, zone);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (void)i_setTextAttributeUUIDString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_textAttributeUUIDString(self, v5, v6);

  if (v7 != stringCopy)
  {
    objc_msgSend_willModify(self, v8, v9);
    objc_storeStrong(&self->_textAttributeUUIDString, string);
  }
}

- (NSString)description
{
  v6 = objc_msgSend_parentStorage(self, a2, v2);
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_parentStorage(self, v4, v5);
    v10 = objc_msgSend_stringWithFormat_(v7, v9, @"%p", v8);
  }

  else
  {
    v10 = @"Not in storage";
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v16 = objc_msgSend_uuid(self, v14, v15);
  v19 = objc_msgSend_pencilAnnotationStorage(self, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(v11, v20, @"<%@: %p\n\t UUID: %@\n\t PAStorage: %p\n\t WPStorage: %@>", v13, self, v16, v19, v10);

  return v21;
}

- (void)resetTextAttributeUUIDString
{
  v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  v6 = objc_msgSend_UUIDString(v8, v4, v5);
  objc_msgSend_i_setTextAttributeUUIDString_(self, v7, v6);
}

- (BOOL)isEquivalentToObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (self == objectCopy)
  {
    isEqualToString = 1;
  }

  else if (objectCopy && (objc_msgSend_conformsToProtocol_(objectCopy, v5, &unk_288643E30) & 1) != 0)
  {
    v9 = objc_msgSend_textAttributeUUIDString(v6, v7, v8);
    v12 = objc_msgSend_textAttributeUUIDString(self, v10, v11);

    if (!v12)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPPencilAnnotation isEquivalentToObject:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPencilAnnotation.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 92, 0, "Expect to have a UUIDString.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    if (!v9)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPPencilAnnotation isEquivalentToObject:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPencilAnnotation.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 93, 0, "Expect to have a UUIDString for other object.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v29 = objc_msgSend_textAttributeUUIDString(self, v13, v14);

    isEqualToString = 0;
    if (v9 && v29)
    {
      v33 = objc_msgSend_textAttributeUUIDString(self, v30, v31);
      isEqualToString = objc_msgSend_isEqualToString_(v33, v34, v9);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEquivalentToObject = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEquivalentToObject = objc_msgSend_isEquivalentToObject_(self, v6, v5);
  }

  else
  {
    isEquivalentToObject = 0;
  }

  return isEquivalentToObject;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_textAttributeUUIDString(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 4);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    if (v11)
    {
      objc_msgSend_i_setTextAttributeUUIDString_(self, v10, v11);
    }

    v7 = *(archive + 4);
  }

  if ((v7 & 2) != 0)
  {
    v12 = *(archive + 4);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_276D9EF9C;
    v13[3] = &unk_27A6F4400;
    v13[4] = self;
    sub_276D9EEF0(unarchiverCopy, v12, &unk_28866C828, v13);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[22]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  v24 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276D9F40C, off_2812DC408[22]);

  v9 = objc_msgSend_textAttributeUUIDString(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_textAttributeUUIDString(self, v10, v11);
    sub_276D9F478(v21, v12);

    sub_276D9F218(v6, __s);
    if (v22)
    {
      free(v22);
    }
  }

  v13 = objc_msgSend_pencilAnnotationStorage(self, v10, v11);
  v14 = v13 == 0;

  if (!v14)
  {
    v18 = objc_msgSend_pencilAnnotationStorage(self, v15, v16);
    *(v6 + 16) |= 2u;
    v19 = *(v6 + 32);
    if (!v19)
    {
      v20 = *(v6 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277CA3250](v20);
      *(v6 + 32) = v19;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v17, v18, v19);
  }
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end