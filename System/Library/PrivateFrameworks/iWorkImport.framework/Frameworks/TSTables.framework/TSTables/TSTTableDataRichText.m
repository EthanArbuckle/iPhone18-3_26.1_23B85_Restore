@interface TSTTableDataRichText
+ (id)objectWithRichTextPayload:(id)a3 refCount:(unsigned int)a4;
- (id)description;
- (id)initObjectWithRichTextPayload:(id)a3 refCount:(unsigned int)a4;
- (id)richTextStorage;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5;
@end

@implementation TSTTableDataRichText

- (id)richTextStorage
{
  v5 = objc_msgSend_richTextPayload(self, a2, v2, v3, v4);
  v10 = objc_msgSend_storage(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)objectWithRichTextPayload:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  inited = objc_msgSend_initObjectWithRichTextPayload_refCount_(v7, v8, v6, v4, v9);

  return inited;
}

- (id)initObjectWithRichTextPayload:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSTTableDataRichText;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, a3);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_msgSend_sharedLoadFromArchive_(self, v10, a3, v11, v12);
  v13 = *(a3 + 8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2215C09C8;
  v18[3] = &unk_2784674F0;
  v18[4] = self;
  v14 = v9;
  v19 = v14;
  v15 = v8;
  v17 = objc_opt_class();
  if (v13)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v16, v13, v17, 0, v18);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v16, MEMORY[0x277D80A18], v17, 0, v18);
  }
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = TSTTableDataRichText;
  [(TSTTableDataObject *)&v16 encodeToArchive:a3 archiver:v6];
  v13 = objc_msgSend_richTextPayload(self, v7, v8, v9, v10);
  *(a3 + 4) |= 0x20u;
  v14 = *(a3 + 8);
  if (!v14)
  {
    v15 = *(a3 + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x223DA0390](v15);
    *(a3 + 8) = v14;
  }

  objc_msgSend_setStrongReference_message_(v6, v11, v13, v14, v12);
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v12 = objc_msgSend_richTextStorage(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"refCount: %d   storage: %@", v14, v15, v7, v12);

  return v16;
}

@end