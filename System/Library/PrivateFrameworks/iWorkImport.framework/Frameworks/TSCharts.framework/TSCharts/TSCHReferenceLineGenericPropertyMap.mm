@interface TSCHReferenceLineGenericPropertyMap
+ (id)imageFillProperties;
+ (id)properties;
+ (void)savePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (TSCHReferenceLineGenericPropertyMap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCHReferenceLineGenericPropertyMap

+ (id)properties
{
  if (qword_280A47940 != -1)
  {
    sub_2764A80AC();
  }

  v3 = qword_280A47938;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47950 != -1)
  {
    sub_2764A80C0();
  }

  v3 = qword_280A47948;

  return v3;
}

- (TSCHReferenceLineGenericPropertyMap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v41.receiver = self;
  v41.super_class = TSCHReferenceLineGenericPropertyMap;
  v7 = [(TSCHReferenceLineGenericPropertyMap *)&v41 init];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    v14 = *(archive + 4);
    if ((v14 & 2) != 0)
    {
      v16 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v9, v11, v12, v13, *(archive + 4), unarchiverCopy);
      if (v16)
      {
        objc_msgSend_setObject_forProperty_(v10, v15, v17, v18, v19, v16, 1218);
      }

      v14 = *(archive + 4);
    }

    if (v14)
    {
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_tsp_initWithProtobufString_(v20, v21, v22, v23, v24, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
      if (v26)
      {
        objc_msgSend_setObject_forProperty_(v10, v25, v27, v28, v29, v26, 1219);
      }

      v14 = *(archive + 4);
    }

    if ((v14 & 0x10) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(archive + 14), 1220);
      v14 = *(archive + 4);
    }

    if ((v14 & 4) != 0)
    {
      v31 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v9, v11, v12, v13, *(archive + 5), unarchiverCopy);
      if (v31)
      {
        objc_msgSend_setObject_forProperty_(v10, v30, v32, v33, v34, v31, 1221);
      }

      v14 = *(archive + 4);
    }

    if ((v14 & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(archive + 60), 1222);
      v14 = *(archive + 4);
    }

    if ((v14 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(archive + 61), 1223);
      v14 = *(archive + 4);
    }

    if ((v14 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(archive + 62), 1224);
      v14 = *(archive + 4);
    }

    if ((v14 & 8) != 0)
    {
      v36 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v9, v11, v12, v13, *(archive + 6), unarchiverCopy);
      if (v36)
      {
        objc_msgSend_setObject_forProperty_(v10, v35, v37, v38, v39, v36, 1225);
      }

      v14 = *(archive + 4);
    }

    if ((v14 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(archive + 16), 1226);
      v14 = *(archive + 4);
    }

    if ((v14 & 0x200) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(archive + 17), 1227);
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  selfCopy = self;
  if (objc_msgSend_containsProperty_(selfCopy, v7, v8, v9, v10, 1218))
  {
    v16 = objc_msgSend_objectForProperty_(selfCopy, v11, v12, v13, v14, 1218);
    *(archive + 4) |= 2u;
    v20 = *(archive + 4);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_276406A24(v21);
      *(archive + 4) = v20;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v16, v15, v17, v18, v19, v20, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v11, v12, v13, v14, 1219))
  {
    v26 = objc_msgSend_objectForProperty_(selfCopy, v22, v23, v24, v25, 1219);
    *(archive + 4) |= 1u;
    v27 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v26, v28, v29, v30, v31, v27);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v22, v23, v24, v25, 1220))
  {
    v36 = objc_msgSend_intValueForProperty_(selfCopy, v32, v33, v34, v35, 1220);
    *(archive + 4) |= 0x10u;
    *(archive + 14) = v36;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v32, v33, v34, v35, 1221))
  {
    v42 = objc_msgSend_objectForProperty_(selfCopy, v37, v38, v39, v40, 1221);
    *(archive + 4) |= 4u;
    v46 = *(archive + 5);
    if (!v46)
    {
      v47 = *(archive + 1);
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      v46 = MEMORY[0x277C97A90](v47);
      *(archive + 5) = v46;
    }

    objc_msgSend_saveToArchive_archiver_(v42, v41, v43, v44, v45, v46, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v37, v38, v39, v40, 1222))
  {
    v52 = objc_msgSend_intValueForProperty_(selfCopy, v48, v49, v50, v51, 1222) != 0;
    *(archive + 4) |= 0x20u;
    *(archive + 60) = v52;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v48, v49, v50, v51, 1223))
  {
    v57 = objc_msgSend_intValueForProperty_(selfCopy, v53, v54, v55, v56, 1223) != 0;
    *(archive + 4) |= 0x40u;
    *(archive + 61) = v57;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v53, v54, v55, v56, 1224))
  {
    v62 = objc_msgSend_intValueForProperty_(selfCopy, v58, v59, v60, v61, 1224) != 0;
    *(archive + 4) |= 0x80u;
    *(archive + 62) = v62;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v58, v59, v60, v61, 1225))
  {
    v68 = objc_msgSend_objectForProperty_(selfCopy, v63, v64, v65, v66, 1225);
    *(archive + 4) |= 8u;
    v72 = *(archive + 6);
    if (!v72)
    {
      v73 = *(archive + 1);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = MEMORY[0x277C97AA0](v73);
      *(archive + 6) = v72;
    }

    objc_msgSend_saveToArchive_archiver_(v68, v67, v69, v70, v71, v72, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(selfCopy, v63, v64, v65, v66, 1226))
  {
    v78 = objc_msgSend_intValueForProperty_(selfCopy, v74, v75, v76, v77, 1226);
    *(archive + 4) |= 0x100u;
    *(archive + 16) = v78;
  }

  if (objc_msgSend_containsProperty_(selfCopy, v74, v75, v76, v77, 1227))
  {
    v83 = objc_msgSend_intValueForProperty_(selfCopy, v79, v80, v81, v82, 1227);
    *(archive + 4) |= 0x200u;
    *(archive + 17) = v83;
  }
}

+ (void)savePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v9 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_properties(self, v10, v11, v12, v13);
  v19 = objc_msgSend_propertyMapWithProperties_(mapCopy, v15, v16, v17, v18, v14);
  v24 = objc_msgSend_initWithPropertyMap_(v9, v20, v21, v22, v23, v19);

  objc_msgSend_saveToArchive_archiver_(v24, v25, v26, v27, v28, archive, archiverCopy);
}

@end