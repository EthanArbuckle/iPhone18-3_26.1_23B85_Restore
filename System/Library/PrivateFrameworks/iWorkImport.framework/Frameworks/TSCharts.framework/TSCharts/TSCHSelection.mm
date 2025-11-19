@interface TSCHSelection
+ (id)emptySelectionWithChartInfo:(id)a3;
+ (id)selectionWithChartInfo:(id)a3 paths:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSSet)pathTypes;
- (TSCHSelection)initWithChartInfo:(id)a3 path:(id)a4;
- (TSCHSelection)initWithChartInfo:(id)a3 paths:(id)a4;
- (TSCHSelection)initWithPaths:(id)a3;
- (TSCHSelectionPath)firstPath;
- (TSCHSelectionPathType)pathType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromArchive:(const void *)a3 unarchiver:(id)a4;
- (id)selectionByAddingPathsFromArray:(id)a3;
- (id)selectionByRemovingPathsFromArray:(id)a3;
- (unint64_t)pathCount;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHSelection

+ (id)emptySelectionWithChartInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEA60], v5, v6, v7, v8);
  v14 = objc_msgSend_selectionWithChartInfo_paths_(a1, v10, v11, v12, v13, v4, v9);

  return v14;
}

+ (id)selectionWithChartInfo:(id)a3 paths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithChartInfo_paths_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCHSelection)initWithChartInfo:(id)a3 paths:(id)a4
{
  v7 = a3;
  v8 = a4;
  v59.receiver = self;
  v59.super_class = TSCHSelection;
  v9 = [(TSCHSelection *)&v59 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_info, a3);
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = sub_2762EF7DC;
    v57[4] = sub_2762EF7EC;
    v58 = 0;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2762EF7F4;
    v56[3] = &unk_27A6B95D8;
    v56[4] = v57;
    v14 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v8, v11, COERCE_DOUBLE(3221225472), v12, v13, v56);
    v19 = objc_msgSend_copy(v14, v15, v16, v17, v18);
    paths = v10->_paths;
    v10->_paths = v19;

    v25 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v21, v22, v23, v24, v10->_paths);
    v30 = objc_msgSend_count(v25, v26, v27, v28, v29);
    v35 = objc_msgSend_count(v10->_paths, v31, v32, v33, v34);

    if (v30 != v35)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCHSelection initWithChartInfo:paths:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 66, 0, "duplicated pathes found %@", v10->_paths);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    _Block_object_dispose(v57, 8);
  }

  return v10;
}

- (TSCHSelection)initWithChartInfo:(id)a3 path:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19[0] = v7;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v9, v10, v11, v19, 1);
  v17 = objc_msgSend_initWithChartInfo_paths_(self, v13, v14, v15, v16, v6, v12);

  return v17;
}

- (TSCHSelection)initWithPaths:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = TSCHSelection;
  v6 = [(TSCHSelection *)&v52 init];
  if (v6)
  {
    v10 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v4, v5, v7, v8, v9, &unk_28851ED80);
    v15 = objc_msgSend_copy(v10, v11, v12, v13, v14);
    paths = v6->_paths;
    v6->_paths = v15;

    v21 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v17, v18, v19, v20, v6->_paths);
    v26 = objc_msgSend_count(v21, v22, v23, v24, v25);
    v31 = objc_msgSend_count(v6->_paths, v27, v28, v29, v30);

    if (v26 != v31)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHSelection initWithPaths:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 85, 0, "duplicated pathes found %@", v6->_paths);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = objc_msgSend_paths(self, a2, v3, v4, v5, a3);
  v12 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v7, v8, v9, v10, v11, &unk_28851EDA0);

  v13 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_chartInfo(self, v14, v15, v16, v17);
  v23 = objc_msgSend_initWithChartInfo_paths_(v13, v19, v20, v21, v22, v18, v12);

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCHSelection;
  v4 = [(TSCHSelection *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(paths: %@)", v4, self->_paths);

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v10 = v5;
    if (v5 && self->_info == *(v5 + 8))
    {
      v12 = objc_msgSend_paths(self, v6, v7, v8, v9);
      v17 = objc_msgSend_paths(v10, v13, v14, v15, v16);
      v18 = v12;
      v20 = v17;
      if (v18 | v20)
      {
        isEqual = objc_msgSend_isEqual_(v18, v19, v21, v22, v23, v20);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)initFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v16 = *(a3 + 8);
  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = [TSCHSelectionPath alloc];
      v23 = objc_msgSend_initWithArchive_(v18, v19, v20, v21, v22, *(*(a3 + 5) + (v17 >> 29) + 8));
      objc_msgSend_tsu_addNonNilObject_(v12, v24, v25, v26, v27, v23);

      v17 += 0x100000000;
      --v16;
    }

    while (v16);
  }

  v28 = objc_msgSend_initWithPaths_(self, v11, v13, v14, v15, v12);
  v29 = v28;
  if (v28)
  {
    v30 = *(a3 + 6);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2762F0158;
    v38[3] = &unk_27A6B9620;
    v39 = v28;
    v31 = v6;
    v33 = objc_opt_class();
    if (v30)
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v31, v32, v34, v35, v36, v30, v33, 0, v38);
    }

    else
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v31, v32, v34, v35, v36, MEMORY[0x277D80A18], v33, 0, v38);
    }
  }

  return v29;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);

  if (v11)
  {
    v17 = objc_msgSend_chartInfo(self, v12, v13, v14, v15);
    *(a3 + 4) |= 1u;
    v21 = *(a3 + 6);
    if (!v21)
    {
      v22 = *(a3 + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C97B90](v22);
      *(a3 + 6) = v21;
    }

    objc_msgSend_setWeakReference_message_(v6, v16, v18, v19, v20, v17, v21);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = objc_msgSend_paths(self, v12, 0.0, v14, v15, 0);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, &v46, v50, 16);
  if (v29)
  {
    v33 = *v47;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v23);
        }

        v35 = *(*(&v46 + 1) + 8 * i);
        v36 = *(a3 + 5);
        if (!v36)
        {
          goto LABEL_17;
        }

        v37 = *(a3 + 8);
        v38 = *v36;
        if (v37 < *v36)
        {
          *(a3 + 8) = v37 + 1;
          objc_msgSend_saveToArchive_(v35, v28, v30, v31, v32, *&v36[2 * v37 + 2]);
          continue;
        }

        if (v38 == *(a3 + 9))
        {
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v36 = *(a3 + 5);
          v38 = *v36;
        }

        *v36 = v38 + 1;
        v39 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(*(a3 + 3));
        v40 = *(a3 + 8);
        v41 = *(a3 + 5) + 8 * v40;
        *(a3 + 8) = v40 + 1;
        *(v41 + 8) = v39;
        objc_msgSend_saveToArchive_(v35, v42, v43, v44, v45, v39);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v28, v30, v31, v32, &v46, v50, 16);
    }

    while (v29);
  }
}

- (unint64_t)pathCount
{
  v5 = objc_msgSend_paths(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (id)selectionByAddingPathsFromArray:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v5, v6, v7, v8, self->_paths);
  v14 = objc_msgSend_setByAddingObjectsFromArray_(v9, v10, v11, v12, v13, v4);

  v15 = objc_opt_class();
  info = self->_info;
  v21 = objc_msgSend_allObjects(v14, v17, v18, v19, v20);
  v26 = objc_msgSend_selectionWithChartInfo_paths_(v15, v22, v23, v24, v25, info, v21);

  return v26;
}

- (id)selectionByRemovingPathsFromArray:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v5, v6, v7, v8, self->_paths);
  v14 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v10, v11, v12, v13, v4);
  objc_msgSend_minusSet_(v9, v15, v16, v17, v18, v14);

  v19 = objc_opt_class();
  info = self->_info;
  v25 = objc_msgSend_allObjects(v9, v21, v22, v23, v24);
  v30 = objc_msgSend_selectionWithChartInfo_paths_(v19, v26, v27, v28, v29, info, v25);

  return v30;
}

- (TSCHSelectionPath)firstPath
{
  v5 = objc_msgSend_paths(self, a2, v2, v3, v4);
  v10 = objc_msgSend_firstObject(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCHSelectionPathType)pathType
{
  v5 = objc_msgSend_firstPath(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pathType(v5, v6, v7, v8, v9);

  return v10;
}

- (NSSet)pathTypes
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = self->_paths;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v49, v53, 16);
  if (v13)
  {
    v17 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = objc_msgSend_pathType(*(*(&v49 + 1) + 8 * i), v12, v14, v15, v16, v49);
        objc_msgSend_addObject_(v6, v20, v21, v22, v23, v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v49, v53, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v6, v24, v25, v26, v27) >= 2)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCHSelection pathTypes]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 177, 0, "multiple path types not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  v47 = objc_msgSend_copy(v6, v28, v29, v30, v31, v49);

  return v47;
}

@end