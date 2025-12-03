@interface TSPUnknownFieldDataReference
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPUnknownFieldDataReference

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v26.receiver = self;
  v26.super_class = TSPUnknownFieldDataReference;
  [(TSPUnknownField *)&v26 loadFromUnarchiver:unarchiverCopy];
  v5 = *(self->super._fieldSet.__ptr_ + 1) - *self->super._fieldSet.__ptr_;
  if ((v5 >> 4) >= 1)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = (v5 >> 4) & 0x7FFFFFFF;
    v24 = objc_msgSend_initWithCapacity_(v6, v8, v7);
    v10 = 0;
    do
    {
      v11 = *self->super._fieldSet.__ptr_;
      v12 = v11 + v10;
      if (*(v11 + v10 + 4) == 3)
      {
        TSP::DataReference::DataReference(v25, 0);
        google::protobuf::MessageLite::ParseFromString(v25, *(v11 + v10 + 8));
        v15 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v13, v25);
        if (v15)
        {
          objc_msgSend_addObject_(v24, v14, v15);
        }

        TSP::DataReference::~DataReference(v25);
      }

      else
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPUnknownFieldDataReference loadFromUnarchiver:]");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 199, 0, "Invalid unknown data reference field type: %d", *(v12 + 4));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }

      v10 += 16;
      --v7;
    }

    while (v7);
    datas = self->_datas;
    self->_datas = v24;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v9.receiver = self;
  v9.super_class = TSPUnknownFieldDataReference;
  [(TSPUnknownField *)&v9 saveToArchiver:archiverCopy];
  if (objc_msgSend_count(self->_datas, v5, v6))
  {
    memset(v8, 0, sizeof(v8));
    objc_msgSend_setDataReferenceArray_message_(archiverCopy, v7, self->_datas, v8);
    sub_276A08184(v8);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSPUnknownFieldDataReference;
  v4 = [(TSPUnknownField *)&v11 debugDescription];
  v7 = objc_msgSend_debugDescription(self->_datas, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ datas: %@", v4, v7);;

  return v9;
}

@end