@interface TSTCommentHosting
- (BOOL)isHighlight;
- (BOOL)isInDocument;
- (NSDate)date;
- (NSString)annotationUUID;
- (NSString)parentUUID;
- (TSKAnnotationAuthor)author;
- (TSKUIDStructCoord)cellUID;
- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info baseCellCoord:(TSUModelCellCoord)coord;
- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info cellUID:(TSKUIDStructCoord *)d;
- (TSTTableInfo)tableInfo;
- (TSUModelCellCoord)baseCellCoord;
- (TSUViewCellCoord)viewCellCoord;
- (id)copyWithZone:(_NSZone *)zone;
- (void)commentWillBeAddedToDocumentRoot;
- (void)setAuthor:(id)author;
- (void)setStorage:(id)storage;
@end

@implementation TSTCommentHosting

- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info cellUID:(TSKUIDStructCoord *)d
{
  storageCopy = storage;
  infoCopy = info;
  if (!infoCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCommentHosting initWithStorage:forTableInfo:cellUID:]", v11, v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 46, 0, "invalid nil value for '%{public}s'", "tableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (!d->_column._lower && !d->_column._upper || !d->_row._lower && !d->_row._upper)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCommentHosting initWithStorage:forTableInfo:cellUID:]", v11, v12);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 47, 0, "Expecting valid cell UID!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v40.receiver = self;
  v40.super_class = TSTCommentHosting;
  v36 = [(TSTCommentHosting *)&v40 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->mStorage, storage);
    objc_storeWeak(&v37->_tableInfo, infoCopy);
    row = d->_row;
    v37->_cellUID._column = d->_column;
    v37->_cellUID._row = row;
  }

  return v37;
}

- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info baseCellCoord:(TSUModelCellCoord)coord
{
  storageCopy = storage;
  infoCopy = info;
  if (!infoCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCommentHosting initWithStorage:forTableInfo:baseCellCoord:]", v11, v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 61, 0, "invalid nil value for '%{public}s'", "tableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (coord._coord.row == 0x7FFFFFFF || (*&coord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCommentHosting initWithStorage:forTableInfo:baseCellCoord:]", v11, v12);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 62, 0, "Expecting valid cell ID!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v45 = 0u;
  v46 = 0u;
  v36 = objc_msgSend_translator(infoCopy, v9, v10, v11, v12);
  v40 = v36;
  if (v36)
  {
    objc_msgSend_cellUIDforBaseCellCoord_(v36, v37, *&coord, v38, v39);
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v44[0] = v45;
  v44[1] = v46;
  v42 = objc_msgSend_initWithStorage_forTableInfo_cellUID_(self, v41, storageCopy, infoCopy, v44);

  return v42;
}

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  if (self->mStorage != storageCopy)
  {
    v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
    objc_msgSend_setCommentStorage_atCellUID_(v9, v10, storageCopy, &self->_cellUID, v11);

    objc_storeStrong(&self->mStorage, storage);
  }
}

- (NSString)annotationUUID
{
  v5 = objc_msgSend_rootCommentStorage(self->mStorage, a2, v2, v3, v4);
  v10 = objc_msgSend_storageUUID(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_UUIDString(v10, v11, v12, v13, v14);

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_storage(self, v5, v6, v7, v8);
  v14 = objc_msgSend_tableInfo(self, v10, v11, v12, v13);
  objc_msgSend_cellUID(self, v15, v16, v17, v18);
  v20 = objc_msgSend_initWithStorage_forTableInfo_cellUID_(v4, v19, v9, v14, &v22);

  return v20;
}

- (NSString)parentUUID
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_objectUUID(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_UUIDString(v10, v11, v12, v13, v14);

  return v15;
}

- (TSUViewCellCoord)viewCellCoord
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_translator(v6, v7, v8, v9, v10);
  objc_msgSend_cellUID(self, v12, v13, v14, v15);
  v19 = objc_msgSend_viewCellCoordForCellUID_(v11, v16, &v21, v17, v18);

  return v19;
}

- (TSUModelCellCoord)baseCellCoord
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_translator(v6, v7, v8, v9, v10);
  objc_msgSend_cellUID(self, v12, v13, v14, v15);
  v19 = objc_msgSend_baseCellCoordForCellUID_(v11, v16, &v21, v17, v18);

  return v19;
}

- (TSKAnnotationAuthor)author
{
  v5 = objc_msgSend_storage(self, a2, v2, v3, v4);
  v10 = objc_msgSend_author(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  v8 = objc_msgSend_storage(self, v4, v5, v6, v7);
  v12 = objc_msgSend_copyWithAuthor_(v8, v9, authorCopy, v10, v11);
  objc_msgSend_setStorage_(self, v13, v12, v14, v15);
}

- (NSDate)date
{
  v5 = objc_msgSend_storage(self, a2, v2, v3, v4);
  v10 = objc_msgSend_creationDate(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isHighlight
{
  v5 = objc_msgSend_storage(self, a2, v2, v3, v4);
  v10 = objc_msgSend_text(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_length(v10, v11, v12, v13, v14) == 0;

  return v15;
}

- (void)commentWillBeAddedToDocumentRoot
{
  v9 = objc_msgSend_storage(self, a2, v2, v3, v4);
  objc_msgSend_commentWillBeAddedToDocumentRoot(v9, v5, v6, v7, v8);
}

- (BOOL)isInDocument
{
  v10 = objc_msgSend_storage(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
    v16 = objc_msgSend_tsp_isInDocument(v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (TSKUIDStructCoord)cellUID
{
  v3 = *&self[1]._column._upper;
  retstr->_column = *&self->_row._upper;
  retstr->_row = v3;
  return self;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end