@interface TSTTableDataCellSpec
+ (id)objectWithCellSpec:(id)a3 refCount:(unsigned int)a4;
- (id)description;
- (id)initObjectWithCellSpec:(id)a3 refCount:(unsigned int)a4;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5;
@end

@implementation TSTTableDataCellSpec

+ (id)objectWithCellSpec:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  inited = objc_msgSend_initObjectWithCellSpec_refCount_(v7, v8, v6, v4, v9);

  return inited;
}

- (id)initObjectWithCellSpec:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSTTableDataCellSpec;
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
  if ((*(a3 + 16) & 4) != 0)
  {
    v17 = [TSCEFormulaObject alloc];
    v18 = *(a3 + 5);
    hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v8, v19, v20, v21, v22);
    if (v18)
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v17, v23, v18, hasPreUFFVersion, v25);
    }

    else
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v17, v23, TSCE::_FormulaArchive_default_instance_, hasPreUFFVersion, v25);
    }

    v31 = isPreUFF;
    if (!isPreUFF)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTTableDataCellSpec loadFromArchive:unarchiver:completion:]", v29, v30);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 502, 0, "Shouldn't find unsupported formulas in documents. This document is corrupted.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
      __C();
    }

    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = sub_2215BF70C;
    v51[4] = sub_2215BF71C;
    v52 = objc_msgSend_context(v8, v27, v28, v29, v30);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2215BF724;
    v47[3] = &unk_278467478;
    v50 = v51;
    v47[4] = self;
    v43 = v31;
    v48 = v43;
    v49 = v9;
    objc_msgSend_addFinalizeHandler_(v8, v44, v47, v45, v46);

    _Block_object_dispose(v51, 8);
  }

  else
  {
    if (*(a3 + 11))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(TSTCellSpec, v13, *(a3 + 11), v8, v14);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(TSTCellSpec, v13, &TST::_CellSpecArchive_default_instance_, v8, v14);
    }
    v15 = ;
    payload = self->super._payload;
    self->super._payload = v15;

    (*(v9 + 2))(v9, self);
  }
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v33.receiver = self;
  v33.super_class = TSTTableDataCellSpec;
  [(TSTTableDataObject *)&v33 encodeToArchive:a3 archiver:v6];
  v11 = objc_msgSend_cellSpec(self, v7, v8, v9, v10);
  v16 = objc_msgSend_asFormulaSpec(v11, v12, v13, v14, v15);
  v21 = v16;
  if (v16)
  {
    v24 = objc_msgSend_formulaObject(v16, v17, v18, v19, v20);
    *(a3 + 4) |= 4u;
    v25 = *(a3 + 5);
    if (!v25)
    {
      v26 = *(a3 + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v26);
      *(a3 + 5) = v25;
    }

    v27 = objc_msgSend_encodeToArchive_archiver_(v24, v22, v25, v6, v23);

    if ((v27 & 6) != 0)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v6, v28, 0x300020000000ALL, @"TSTCategorizedTables", v30);
    }

    if ((v27 & 0x21) != 0)
    {
      objc_msgSend_requiresDocumentVersion_(v6, v28, 0xE000400000001, v29, v30);
    }
  }

  else
  {
    *(a3 + 4) |= 0x100u;
    v31 = *(a3 + 11);
    if (!v31)
    {
      v32 = *(a3 + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v32);
      *(a3 + 11) = v31;
    }

    objc_msgSend_saveToArchive_archiver_(v11, v17, v31, v6, v20);
  }
}

- (unint64_t)estimateByteSize
{
  v5 = objc_msgSend_cellSpec(self, a2, v2, v3, v4);
  v10 = objc_msgSend_interactionType(v5, v6, v7, v8, v9);
  if (v10 == 7)
  {
    v23 = 20;
  }

  else if (v10 == 1)
  {
    TSCE::FormulaArchive::FormulaArchive(v27, 0);
    v15 = objc_msgSend_asFormulaSpec(v5, v11, v12, v13, v14);
    v20 = objc_msgSend_formulaObject(v15, v16, v17, v18, v19);
    objc_msgSend_encodeToArchive_archiver_(v20, v21, v27, 0, v22);

    v23 = TSCE::FormulaArchive::ByteSizeLong(v27) + 12;
    TSCE::FormulaArchive::~FormulaArchive(v27);
  }

  else
  {
    TST::CellSpecArchive::CellSpecArchive(v27, 0);
    objc_msgSend_saveToArchive_archiver_(v5, v24, v27, 0, v25);
    v23 = TST::CellSpecArchive::ByteSizeLong(v27) + 8;
    TST::CellSpecArchive::~CellSpecArchive(v27);
  }

  return v23;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  refCount = self->super._refCount;
  v7 = objc_msgSend_cellSpec(self, a2, v2, v3, v4);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v5, v13, @"refCount: %d   _cellSpec: %@", v14, v15, refCount, v12);

  return v16;
}

@end