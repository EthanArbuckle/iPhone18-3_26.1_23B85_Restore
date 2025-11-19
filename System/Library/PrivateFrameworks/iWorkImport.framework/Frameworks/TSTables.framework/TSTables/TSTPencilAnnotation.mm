@interface TSTPencilAnnotation
- (NSString)uuid;
- (TSTPencilAnnotation)initWithContext:(id)a3;
- (TSTPencilAnnotation)initWithContext:(id)a3 tableInfo:(id)a4 pencilAnnotationStorage:(id)a5;
- (TSTPencilAnnotation)initWithTableInfo:(id)a3 pencilAnnotationStorage:(id)a4;
- (TSTTableInfo)table;
- (TSUCellRect)_cellRange;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setTable:(id)a3;
@end

@implementation TSTPencilAnnotation

- (void)setTable:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_table);

  v9 = obj;
  if (WeakRetained != obj)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeWeak(&self->_table, obj);
    v9 = obj;
  }
}

- (TSTPencilAnnotation)initWithContext:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTPencilAnnotation initWithContext:]", v6, v7);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotation.mm", v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 42, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s: %s", v20, v21, "Do not call method", "[TSTPencilAnnotation initWithContext:]");
  v24 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v23, *MEMORY[0x277CBE658], v22, 0);
  v25 = v24;

  objc_exception_throw(v24);
}

- (TSTPencilAnnotation)initWithTableInfo:(id)a3 pencilAnnotationStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_context(v6, v8, v9, v10, v11);
  v14 = objc_msgSend_initWithContext_tableInfo_pencilAnnotationStorage_(self, v13, v12, v6, v7);

  return v14;
}

- (TSTPencilAnnotation)initWithContext:(id)a3 tableInfo:(id)a4 pencilAnnotationStorage:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TSTPencilAnnotation;
  v10 = [(TSTPencilAnnotation *)&v13 initWithContext:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_table, v8);
    objc_storeStrong(&v11->_pencilAnnotationStorage, a5);
  }

  return v11;
}

- (NSString)uuid
{
  v5 = objc_msgSend_objectUUID(self, a2, v2, v3, v4);
  v10 = objc_msgSend_UUIDString(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUCellRect)_cellRange
{
  v6 = objc_msgSend_table(self, a2, v2, v3, v4);
  v11 = objc_msgSend_pencilAnnotationOwner(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_cellRangeForAnnotation_(v11, v12, self, v13, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.size = v19;
  result.origin = v18;
  return result;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[250], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v10 = v6;
  v11 = *(a3 + 4);
  if (v11)
  {
    v12 = *(a3 + 3);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2212E1FC0;
    v32[3] = &unk_278462738;
    v32[4] = self;
    v13 = v6;
    v14 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v13, v15, v12, v14, 0, v32);

    v11 = *(a3 + 4);
  }

  if ((v11 & 2) != 0)
  {
    v27 = *(a3 + 4);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2212E1FD4;
    v31[3] = &unk_278462CD8;
    v31[4] = self;
    v28 = v10;
    v29 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v30, v27, v29, 0, v31);
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPencilAnnotation loadFromArchive:unarchiver:]", v8, v9);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotation.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 143, 0, "A TSTPencilAnnotation must have a pencilAnnotationStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212E2284, off_2812E4498[250], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v21 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_table);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_table);
    *(a3 + 4) |= 1u;
    v14 = *(a3 + 3);
    if (!v14)
    {
      v15 = *(a3 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA0390](v15);
      *(a3 + 3) = v14;
    }

    objc_msgSend_setWeakReference_message_(v21, v11, v13, v14, v12);
  }

  if (self->_pencilAnnotationStorage)
  {
    v18 = objc_msgSend_pencilAnnotationStorage(self, v7, v8, v9, v10);
    *(a3 + 4) |= 2u;
    v19 = *(a3 + 4);
    if (!v19)
    {
      v20 = *(a3 + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0390](v20);
      *(a3 + 4) = v19;
    }

    objc_msgSend_setStrongReference_message_(v21, v16, v18, v19, v17);
  }
}

- (TSTTableInfo)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

@end