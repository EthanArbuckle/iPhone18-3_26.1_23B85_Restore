@interface TSCH3DDiffuseMaterial
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCH3DDiffuseMaterial)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DDiffuseMaterial

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DDiffuseMaterial alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DDiffuseMaterial)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 6))
  {
    v7 = *(a3 + 6);
  }

  else
  {
    v7 = &unk_2812F12E0;
  }

  v59.receiver = self;
  v59.super_class = TSCH3DDiffuseMaterial;
  v8 = [(TSCH3DTexturesMaterial *)&v59 initWithArchive:v7 unarchiver:v6];
  v13 = v8;
  if (v8)
  {
    if (v8->super._tilings)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DDiffuseMaterial(PersistenceAdditions) initWithArchive:unarchiver:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 331, 0, "expected nil value for '%{public}s'", "_tilings");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    v29 = v6;
    v30 = *(a3 + 8);
    v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v31, v32, v33, v34, v30);
    if (v30 >= 1)
    {
      v40 = 8;
      do
      {
        v41 = [TSCH3DImageTextureTiling alloc];
        v46 = objc_msgSend_initWithArchive_unarchiver_(v41, v42, v43, v44, v45, *(*(a3 + 5) + v40), v29);
        objc_msgSend_addObject_(v36, v47, v48, v49, v50, v46);

        v40 += 8;
        --v30;
      }

      while (v30);
    }

    v51 = objc_msgSend_copy(v36, v35, v37, v38, v39);

    v56 = objc_msgSend_copy(v51, v52, v53, v54, v55);
    tilings = v13->super._tilings;
    v13->super._tilings = v56;
  }

  return v13;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 6);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_276447714(v8);
    *(a3 + 6) = v7;
  }

  v36.receiver = self;
  v36.super_class = TSCH3DDiffuseMaterial;
  [(TSCH3DTexturesMaterial *)&v36 saveToArchive:v7 archiver:v6];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = self->super._tilings;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v32, v37, 16);
  if (v15)
  {
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = *(*(&v32 + 1) + 8 * v20);
        v22 = *(a3 + 5);
        if (!v22)
        {
          goto LABEL_15;
        }

        v23 = *(a3 + 8);
        v24 = *v22;
        if (v23 < *v22)
        {
          *(a3 + 8) = v23 + 1;
          objc_msgSend_saveToArchive_archiver_(v21, v14, v16, v17, v18, *&v22[2 * v23 + 2], v6, v32);
          goto LABEL_17;
        }

        if (v24 == *(a3 + 9))
        {
LABEL_15:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v22 = *(a3 + 5);
          v24 = *v22;
        }

        *v22 = v24 + 1;
        v25 = sub_276447EFC(*(a3 + 3));
        v26 = *(a3 + 8);
        v27 = *(a3 + 5) + 8 * v26;
        *(a3 + 8) = v26 + 1;
        *(v27 + 8) = v25;
        objc_msgSend_saveToArchive_archiver_(v21, v28, v29, v30, v31, v25, v6, v32);
LABEL_17:
        ++v20;
      }

      while (v15 != v20);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, v16, v17, v18, &v32, v37, 16);
    }

    while (v15);
  }
}

@end