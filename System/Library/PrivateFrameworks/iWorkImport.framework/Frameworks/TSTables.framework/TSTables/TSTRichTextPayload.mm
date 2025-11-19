@interface TSTRichTextPayload
+ (id)payloadWithStorage:(id)a3;
- (BOOL)tst_dataObjectIsEqual:(id)a3;
- (TSTRichTextPayload)initWithContext:(id)a3 storage:(id)a4;
- (TSTRichTextPayload)initWithStorage:(id)a3;
- (id)copyWithContext:(id)a3;
- (id)string;
- (unint64_t)tst_dataObjectHash;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setStorage:(id)a3;
@end

@implementation TSTRichTextPayload

- (void)setStorage:(id)a3
{
  v9 = a3;
  if (self->_storage != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_storage, a3);
  }
}

+ (id)payloadWithStorage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_context(v3, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_storage_(v4, v10, v9, v3, v11);

  return v12;
}

- (TSTRichTextPayload)initWithStorage:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_storage_(self, v10, v9, v4, v11);

  return v12;
}

- (TSTRichTextPayload)initWithContext:(id)a3 storage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = TSTRichTextPayload;
  v11 = [(TSTRichTextPayload *)&v24 initWithContext:v6];
  if (v11)
  {
    if (!v7)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTRichTextPayload initWithContext:storage:]", v9, v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRichTextPayload.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 52, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    objc_storeStrong(&v11->_storage, a4);
  }

  return v11;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_storage(self, v6, v7, v8, v9);
  v14 = objc_msgSend_copyWithContext_(v10, v11, v4, v12, v13);
  v18 = objc_msgSend_initWithStorage_(v5, v15, v14, v16, v17);

  return v18;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[284], v6, v7);

  v9 = *(v8 + 24);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221427BC8;
  v13[3] = &unk_27845E090;
  v13[4] = self;
  v10 = v4;
  v12 = objc_opt_class();
  if (v9)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, v9, v12, 0, v13);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, MEMORY[0x277D80A18], v12, 0, v13);
  }
}

- (void)saveToArchiver:(id)a3
{
  v14 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v14, v4, sub_221427D7C, off_2812E4498[284], v5);

  storage = self->_storage;
  *(v6 + 16) |= 1u;
  v10 = *(v6 + 24);
  if (!v10)
  {
    v11 = *(v6 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0390](v11);
    *(v6 + 24) = v10;
  }

  objc_msgSend_setStrongReference_message_(v14, v7, storage, v10, v8);
  *(v6 + 16) |= 4u;
  v12 = *(v6 + 40);
  if (!v12)
  {
    v13 = *(v6 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v13);
    *(v6 + 40) = v12;
  }

  sub_221123904(0x7FFF7FFFFFFFuLL, v12);
}

- (id)string
{
  v5 = objc_msgSend_storage(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stringValue(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)tst_dataObjectHash
{
  v5 = objc_msgSend_storage(self, a2, v2, v3, v4);
  v10 = objc_msgSend_hash(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)tst_dataObjectIsEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9)
  {
    v10 = objc_msgSend_storage(self, v5, v6, v7, v8);
    v15 = objc_msgSend_storage(v9, v11, v12, v13, v14);
    isEqual = objc_msgSend_isEqual_(v10, v16, v15, v17, v18);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end