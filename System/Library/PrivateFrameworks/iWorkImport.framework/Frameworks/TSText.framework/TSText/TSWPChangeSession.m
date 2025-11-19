@interface TSWPChangeSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSession:(id)a3;
- (unint64_t)hash;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setAuthor:(id)a3;
- (void)setDate:(id)a3;
- (void)setSessionUID:(unsigned int)a3;
@end

@implementation TSWPChangeSession

- (void)setSessionUID:(unsigned int)a3
{
  if (self->_sessionUID != a3)
  {
    objc_msgSend_willModify(self, a2, *&a3);
    self->_sessionUID = a3;
  }
}

- (void)setAuthor:(id)a3
{
  v7 = a3;
  if (self->_author != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_author, a3);
  }
}

- (void)setDate:(id)a3
{
  v7 = a3;
  if (self->_date != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_date, a3);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[170]);

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
    v9 = v4;
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

- (void)saveToArchiver:(id)a3
{
  v15 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v15, v4, sub_276E0F8EC, off_2812DC408[170]);

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

    objc_msgSend_setStrongReference_message_(v15, v6, author, v10);
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

- (BOOL)isEqualToSession:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    isEqual = 1;
  }

  else
  {
    v7 = objc_msgSend_objectUUID(self, v4, v5);
    v10 = objc_msgSend_objectUUID(v6, v8, v9);
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);
  }

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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