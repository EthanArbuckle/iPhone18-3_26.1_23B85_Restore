@interface TSWPChangeSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSession:(id)session;
- (unint64_t)hash;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAuthor:(id)author;
- (void)setDate:(id)date;
- (void)setSessionUID:(unsigned int)d;
@end

@implementation TSWPChangeSession

- (void)setSessionUID:(unsigned int)d
{
  if (self->_sessionUID != d)
  {
    objc_msgSend_willModify(self, a2, *&d);
    self->_sessionUID = d;
  }
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  if (self->_author != authorCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_author, author);
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if (self->_date != dateCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_date, date);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[170]);

  v7 = *(v6 + 16);
  if ((v7 & 4) != 0)
  {
    self->_sessionUID = *(v6 + 40);
    v7 = *(v6 + 16);
  }

  if (v7)
  {
    v8 = *(v6 + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_276E0F558;
    v16[3] = &unk_27A6F4DF8;
    v16[4] = self;
    v9 = unarchiverCopy;
    v10 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v16);

    v7 = *(v6 + 16);
  }

  if ((v7 & 2) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    if (*(v6 + 32))
    {
      v14 = objc_msgSend_tsp_initWithMessage_(v12, v13, *(v6 + 32));
    }

    else
    {
      v14 = objc_msgSend_tsp_initWithMessage_(v12, v13, MEMORY[0x277D809C0]);
    }

    date = self->_date;
    self->_date = v14;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276E0F8EC, off_2812DC408[170]);

  sessionUID = self->_sessionUID;
  v8 = *(v5 + 16);
  *(v5 + 16) = v8 | 4;
  *(v5 + 40) = sessionUID;
  author = self->_author;
  if (author)
  {
    *(v5 + 16) = v8 | 5;
    v10 = *(v5 + 24);
    if (!v10)
    {
      v11 = *(v5 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277CA3250](v11);
      *(v5 + 24) = v10;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, author, v10);
  }

  date = self->_date;
  if (date)
  {
    *(v5 + 16) |= 2u;
    v13 = *(v5 + 32);
    if (!v13)
    {
      v14 = *(v5 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277CA31F0](v14);
      *(v5 + 32) = v13;
    }

    objc_msgSend_tsp_saveToMessage_(date, v6, v13);
  }
}

- (BOOL)isEqualToSession:(id)session
{
  sessionCopy = session;
  if (self == sessionCopy)
  {
    isEqual = 1;
  }

  else
  {
    v7 = objc_msgSend_objectUUID(self, v4, v5);
    v10 = objc_msgSend_objectUUID(sessionCopy, v8, v9);
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);
  }

  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    isEqualToSession = objc_msgSend_isEqualToSession_(self, v5, v6);
  }

  else
  {
    isEqualToSession = 0;
  }

  return isEqualToSession;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v6 = objc_msgSend_objectUUID(self, v4, v5);
  objc_msgSend_addObject_(v3, v7, v6);

  v10 = objc_msgSend_hashValue(v3, v8, v9);
  return v10;
}

@end