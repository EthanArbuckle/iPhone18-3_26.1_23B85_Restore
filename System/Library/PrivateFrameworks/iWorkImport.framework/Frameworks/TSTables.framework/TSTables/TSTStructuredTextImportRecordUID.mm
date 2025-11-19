@interface TSTStructuredTextImportRecordUID
+ (id)record;
+ (id)recordFromArchive:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromArchive:(const void *)a3;
- (id)textImportRecordForTableInfo:(id)a3;
- (void)encodeToArchive:(void *)a3;
@end

@implementation TSTStructuredTextImportRecordUID

+ (id)record
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v9 = objc_msgSend_copy(self->_importSettings, v5, v6, v7, v8);
  objc_msgSend_setImportSettings_(v4, v10, v9, v11, v12);

  v17 = objc_msgSend_copy(self->_importSource, v13, v14, v15, v16);
  objc_msgSend_setImportSource_(v4, v18, v17, v19, v20);

  v25 = objc_msgSend_copy(self->_importDate, v21, v22, v23, v24);
  objc_msgSend_setImportDate_(v4, v26, v25, v27, v28);

  v33 = objc_msgSend_copy(self->_sourceData, v29, v30, v31, v32);
  objc_msgSend_setSourceData_(v4, v34, v33, v35, v36);

  objc_msgSend_setConfidence_(v4, v37, v38, v39, v40, self->_confidence);
  v45 = objc_msgSend_copy(self->_importedUIDRegion, v41, v42, v43, v44);
  objc_msgSend_setImportedUIDRegion_(v4, v46, v45, v47, v48);

  objc_msgSend_setSourceColumnCount_(v4, v49, self->_sourceColumnCount, v50, v51);
  objc_msgSend_setSourceRowCount_(v4, v52, self->_sourceRowCount, v53, v54);
  return v4;
}

- (id)textImportRecordForTableInfo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  objc_msgSend_setImportSettings_(v5, v6, self->_importSettings, v7, v8);
  objc_msgSend_setImportSource_(v5, v9, self->_importSource, v10, v11);
  objc_msgSend_setImportDate_(v5, v12, self->_importDate, v13, v14);
  objc_msgSend_setSourceData_(v5, v15, self->_sourceData, v16, v17);
  objc_msgSend_setConfidence_(v5, v18, v19, v20, v21, self->_confidence);
  importedUIDRegion = self->_importedUIDRegion;
  if (importedUIDRegion)
  {
    v26 = objc_msgSend_cellRegionFromTable_(importedUIDRegion, v22, v4, v23, v24);
    objc_msgSend_setImportedRegion_(v5, v27, v26, v28, v29);
  }

  objc_msgSend_setSourceColumnCount_(v5, v22, self->_sourceColumnCount, v23, v24);
  objc_msgSend_setSourceRowCount_(v5, v30, self->_sourceRowCount, v31, v32);
  v33 = objc_alloc(MEMORY[0x277CBEA60]);
  v36 = objc_msgSend_initWithArray_copyItems_(v33, v34, self->_pasteInverseCommands, 0, v35);
  objc_msgSend_setPasteInverseCommands_(v5, v37, v36, v38, v39);

  objc_msgSend_setPasteType_(v5, v40, self->_pasteType, v41, v42);
  objc_msgSend_setPasteWasUpdate_(v5, v43, self->_pasteWasUpdate, v44, v45);

  return v5;
}

+ (id)recordFromArchive:(const void *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initFromArchive_(v4, v5, a3, v6, v7);

  return v8;
}

- (id)initFromArchive:(const void *)a3
{
  v41.receiver = self;
  v41.super_class = TSTStructuredTextImportRecordUID;
  v7 = [(TSTStructuredTextImportRecordUID *)&v41 init];
  if (v7)
  {
    if (*(a3 + 5))
    {
      objc_msgSend_settingsFromArchive_(MEMORY[0x277D806E0], v4, *(a3 + 5), v5, v6);
    }

    else
    {
      objc_msgSend_settingsFromArchive_(MEMORY[0x277D806E0], v4, MEMORY[0x277D80760], v5, v6);
    }
    v8 = ;
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v14 = *(a3 + 4);
    if (v14)
    {
      v15 = *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v15 + 23) < 0)
      {
        v15 = *v15;
      }

      v16 = objc_msgSend_fileURLWithFileSystemRepresentation_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v10, v15, 0, 0);
      v17 = *(v7 + 4);
      *(v7 + 4) = v16;

      v14 = *(a3 + 4);
    }

    if ((v14 & 0x10) != 0)
    {
      v18 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v10, v11, v12, v13, *(a3 + 7));
      v19 = *(v7 + 5);
      *(v7 + 5) = v18;

      v14 = *(a3 + 4);
    }

    if ((v14 & 2) != 0)
    {
      v21 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v21 + 23);
      if (v22 < 0)
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, *v21, *(v21 + 8), v13);
      }

      else
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL, v22, v13);
      }
      v20 = ;
    }

    else
    {
      v20 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x277CBEA90], v10, *(v7 + 4), v12, v13);
    }

    v23 = *(v7 + 6);
    *(v7 + 6) = v20;

    v28 = *(a3 + 4);
    v29 = *(a3 + 22);
    if ((v28 & 0x100) == 0)
    {
      v29 = 0.0;
    }

    *(v7 + 7) = v29;
    if ((v28 & 8) != 0)
    {
      v30 = [TSTCellUIDRegion alloc];
      if (*(a3 + 6))
      {
        v34 = objc_msgSend_initFromMessage_(v30, v31, *(a3 + 6), v32, v33);
      }

      else
      {
        v34 = objc_msgSend_initFromMessage_(v30, v31, &TST::_CellUIDRegionArchive_default_instance_, v32, v33);
      }

      v35 = *(v7 + 3);
      *(v7 + 3) = v34;

      v28 = *(a3 + 4);
    }

    if ((v28 & 0x20) != 0 && !objc_msgSend_sourceEncoding(*(v7 + 2), v24, v25, v26, v27))
    {
      objc_msgSend_setSourceEncoding_(*(v7 + 2), v36, *(a3 + 8), v37, v38);
    }

    v39 = *(a3 + 4);
    if ((v39 & 0x80) != 0)
    {
      *(v7 + 8) = *(a3 + 10);
    }

    if ((v39 & 0x40) != 0)
    {
      *(v7 + 9) = *(a3 + 9);
    }
  }

  return v7;
}

- (void)encodeToArchive:(void *)a3
{
  importSettings = self->_importSettings;
  *(a3 + 4) |= 4u;
  v8 = *(a3 + 5);
  if (!v8)
  {
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA02E0](v9, a2);
    *(a3 + 5) = v8;
  }

  objc_msgSend_encodeToArchive_(importSettings, a2, v8, v3, v4);
  importSource = self->_importSource;
  if (importSource)
  {
    v15 = objc_msgSend_fileSystemRepresentation(importSource, v10, v11, v12, v13);
    sub_2214CE434(a3, v15);
  }

  importDate = self->_importDate;
  if (importDate)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(importDate, v10, v11, v12, v13);
    *(a3 + 4) |= 0x10u;
    *(a3 + 7) = v17;
  }

  sourceData = self->_sourceData;
  if (sourceData && objc_msgSend_length(sourceData, v10, v11, v12, v13) <= 0x2000000)
  {
    v19 = objc_msgSend_bytes(self->_sourceData, v10, v11, v12, v13);
    v24 = objc_msgSend_length(self->_sourceData, v20, v21, v22, v23);
    sub_2214CE548(a3, v19, v24);
  }

  if (objc_msgSend_sourceEncoding(self->_importSettings, v10, v11, v12, v13))
  {
    v29 = objc_msgSend_sourceEncoding(self->_importSettings, v25, v26, v27, v28);
    *(a3 + 4) |= 0x20u;
    *(a3 + 8) = v29;
  }

  confidence = self->_confidence;
  if (confidence != 0.0)
  {
    v31 = confidence;
    *(a3 + 4) |= 0x100u;
    *(a3 + 22) = v31;
  }

  importedUIDRegion = self->_importedUIDRegion;
  if (importedUIDRegion)
  {
    *(a3 + 4) |= 8u;
    v33 = *(a3 + 6);
    if (!v33)
    {
      v34 = *(a3 + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v34);
      *(a3 + 6) = v33;
    }

    objc_msgSend_saveToMessage_(importedUIDRegion, v25, v33, v27, v28);
  }

  sourceColumnCount = self->_sourceColumnCount;
  if (sourceColumnCount)
  {
    *(a3 + 4) |= 0x80u;
    *(a3 + 10) = sourceColumnCount;
  }

  sourceRowCount = self->_sourceRowCount;
  if (sourceRowCount)
  {
    *(a3 + 4) |= 0x40u;
    *(a3 + 9) = sourceRowCount;
  }
}

@end