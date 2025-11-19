@interface TSTTableDataString
+ (id)objectWithString:(id)a3 refCount:(unsigned int)a4;
- (id)description;
- (id)initObjectWithString:(id)a3 refCount:(unsigned int)a4;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5;
@end

@implementation TSTTableDataString

+ (id)objectWithString:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  inited = objc_msgSend_initObjectWithString_refCount_(v7, v8, v6, v4, v9);

  return inited;
}

- (id)initObjectWithString:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v35.receiver = self;
  v35.super_class = TSTTableDataString;
  v11 = [(TSTTableDataObject *)&v35 initWithRefCount:v4];
  if (v11)
  {
    if (!v6)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataString initObjectWithString:refCount:]", v9, v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 793, 0, "created a string table entry with a nil string");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v23 = objc_msgSend_copy(v6, v7, v8, v9, v10);
    payload = v11->super._payload;
    v11->super._payload = v23;

    v29 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v25, v26, v27, v28);
    v33 = objc_msgSend_rangeOfCharacterFromSet_(v6, v30, v29, v31, v32);

    v11->_shouldWrap = v33 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5
{
  v25 = a4;
  v8 = a5;
  objc_msgSend_sharedLoadFromArchive_(self, v9, a3, v10, v11);
  v15 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v12, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL, v13, v14);
  objc_storeStrong(&self->super._payload, v15);
  v20 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v16, v17, v18, v19);
  v24 = objc_msgSend_rangeOfCharacterFromSet_(v15, v21, v20, v22, v23);

  self->_shouldWrap = v24 != 0x7FFFFFFFFFFFFFFFLL;
  v8[2](v8, self);
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v16.receiver = self;
  v16.super_class = TSTTableDataString;
  [(TSTTableDataObject *)&v16 encodeToArchive:a3 archiver:a4];
  v10 = objc_msgSend_string(self, v6, v7, v8, v9);
  v15 = objc_msgSend_tsp_protobufString(v10, v11, v12, v13, v14);

  if (v15)
  {
    sub_2215C0F50(a3, v15);
  }
}

- (unint64_t)estimateByteSize
{
  v5 = objc_msgSend_string(self, a2, v2, v3, v4);
  v10 = objc_msgSend_length(v5, v6, v7, v8, v9);

  if (v10)
  {
    return v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 8;
  }

  else
  {
    return 8;
  }
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v12 = objc_msgSend_string(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"refCount: %d   string: %@", v14, v15, v7, v12);

  return v16;
}

@end