@interface TSCHLegendGenericPropertyMap
+ (id)imageFillProperties;
+ (id)properties;
+ (void)savePropertyMap:(id)a3 toArchive:(void *)a4 archiver:(id)a5;
- (TSCHLegendGenericPropertyMap)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHLegendGenericPropertyMap

+ (id)properties
{
  if (qword_280A47860 != -1)
  {
    sub_2764A7F94();
  }

  v3 = qword_280A47858;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47870 != -1)
  {
    sub_2764A7FA8();
  }

  v3 = qword_280A47868;

  return v3;
}

- (TSCHLegendGenericPropertyMap)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = TSCHLegendGenericPropertyMap;
  v7 = [(TSCHLegendGenericPropertyMap *)&v31 init];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    v14 = *(a3 + 4);
    if (v14)
    {
      v16 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, v11, v12, v13, *(a3 + 3), v6);
      if (v16)
      {
        objc_msgSend_setObject_forProperty_(v10, v15, v17, v18, v19, v16, 1213);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v10, v9, v11, v12, v13, *(a3 + 12), 1214);
      v14 = *(a3 + 4);
    }

    if ((v14 & 0x10) != 0)
    {
      LODWORD(v11) = *(a3 + 13);
      objc_msgSend_setFloatValue_forProperty_(v10, v9, v11, v12, v13, 1215);
      v14 = *(a3 + 4);
    }

    if ((v14 & 2) != 0)
    {
      v21 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v9, v11, v12, v13, *(a3 + 4), v6);
      if (v21)
      {
        objc_msgSend_setObject_forProperty_(v10, v20, v22, v23, v24, v21, 1216);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 4) != 0)
    {
      v26 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v9, v11, v12, v13, *(a3 + 5), v6);
      if (v26)
      {
        objc_msgSend_setObject_forProperty_(v10, v25, v27, v28, v29, v26, 1217);
      }
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v53 = a4;
  v6 = self;
  if (objc_msgSend_containsProperty_(v6, v7, v8, v9, v10, 1213))
  {
    v16 = objc_msgSend_objectForProperty_(v6, v11, v12, v13, v14, 1213);
    *(a3 + 4) |= 1u;
    v20 = *(a3 + 3);
    if (!v20)
    {
      v21 = *(a3 + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97A80](v21);
      *(a3 + 3) = v20;
    }

    objc_msgSend_saveToArchive_archiver_(v16, v15, v17, v18, v19, v20, v53);
  }

  if (objc_msgSend_containsProperty_(v6, v11, v12, v13, v14, 1214))
  {
    v26 = objc_msgSend_intValueForProperty_(v6, v22, v23, v24, v25, 1214);
    *(a3 + 4) |= 8u;
    *(a3 + 12) = v26;
  }

  if (objc_msgSend_containsProperty_(v6, v22, v23, v24, v25, 1215))
  {
    objc_msgSend_floatValueForProperty_(v6, v27, v28, v29, v30, 1215);
    *(a3 + 4) |= 0x10u;
    *(a3 + 13) = LODWORD(v28);
  }

  if (objc_msgSend_containsProperty_(v6, v27, v28, v29, v30, 1216))
  {
    v36 = objc_msgSend_objectForProperty_(v6, v31, v32, v33, v34, 1216);
    *(a3 + 4) |= 2u;
    v40 = *(a3 + 4);
    if (!v40)
    {
      v41 = *(a3 + 1);
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = MEMORY[0x277C97A90](v41);
      *(a3 + 4) = v40;
    }

    objc_msgSend_saveToArchive_archiver_(v36, v35, v37, v38, v39, v40, v53);
  }

  if (objc_msgSend_containsProperty_(v6, v31, v32, v33, v34, 1217))
  {
    v47 = objc_msgSend_objectForProperty_(v6, v42, v43, v44, v45, 1217);
    *(a3 + 4) |= 4u;
    v51 = *(a3 + 5);
    if (!v51)
    {
      v52 = *(a3 + 1);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x277C97AA0](v52);
      *(a3 + 5) = v51;
    }

    objc_msgSend_saveToArchive_archiver_(v47, v46, v48, v49, v50, v51, v53);
  }
}

+ (void)savePropertyMap:(id)a3 toArchive:(void *)a4 archiver:(id)a5
{
  v29 = a3;
  v8 = a5;
  v9 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_properties(a1, v10, v11, v12, v13);
  v19 = objc_msgSend_propertyMapWithProperties_(v29, v15, v16, v17, v18, v14);
  v24 = objc_msgSend_initWithPropertyMap_(v9, v20, v21, v22, v23, v19);

  objc_msgSend_saveToArchive_archiver_(v24, v25, v26, v27, v28, a4, v8);
}

@end