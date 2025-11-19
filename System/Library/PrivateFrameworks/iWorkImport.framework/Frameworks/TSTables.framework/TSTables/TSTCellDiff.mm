@interface TSTCellDiff
+ (id)cellDiff;
+ (void)initialize;
- (BOOL)containsAnyPropertiesInSet:(id)a3;
- (BOOL)containsCellStyleOrCellDiffCellStyleProperties;
- (BOOL)containsCellStyleProperties;
- (BOOL)containsFormatAndValueProperties;
- (BOOL)containsParagraphStyleProperties;
- (BOOL)containsProperty:(int)a3;
- (BOOL)containsTextStyleProperties;
- (TSTCellDiff)init;
- (TSTCellDiff)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)allProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectApplyingDiffToObject:(id)a3 andUpdateInverse:(id)a4;
- (id)objectApplyingDiffToObject:(id)a3 andUpdateInverse:(id)a4 optionalConcurrentStylesheet:(id)a5;
- (id)propertyMapToSetWithProperties:(id)a3;
- (unint64_t)estimatedByteSize;
- (void)clear;
- (void)collectPropertyKeysIntoIndexSet:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTCellDiff

+ (id)cellDiff
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (void)initialize
{
  v13 = objc_msgSend_cellDiff(TSTCellDiff, a2, v2, v3, v4);
  objc_msgSend_containsCellStyleProperties(v13, v5, v6, v7, v8);
  objc_msgSend_containsParagraphStyleProperties(v13, v9, v10, v11, v12);
}

- (TSTCellDiff)init
{
  v8.receiver = self;
  v8.super_class = TSTCellDiff;
  v2 = [(TSTCellDiff *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D80AB8]);
    propertyMapToSet = v2->_propertyMapToSet;
    v2->_propertyMapToSet = v3;

    v5 = objc_alloc_init(MEMORY[0x277D80AB8]);
    propertyMapToReset = v2->_propertyMapToReset;
    v2->_propertyMapToReset = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v9 = objc_msgSend_copyWithZone_(self->_propertyMapToSet, v6, a3, v7, v8);
  v10 = v5[1];
  v5[1] = v9;

  v14 = objc_msgSend_copyWithZone_(self->_propertyMapToReset, v11, a3, v12, v13);
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)containsProperty:(int)a3
{
  v5 = *&a3;
  if (objc_msgSend_containsProperty_(self->_propertyMapToSet, a2, *&a3, v3, v4))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;

  return objc_msgSend_containsProperty_(propertyMapToReset, v7, v5, v8, v9);
}

- (void)collectPropertyKeysIntoIndexSet:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_allKeys(self->_propertyMapToSet, v5, v6, v7, v8);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v9 = v44 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v43, v48, 16);
  if (v15)
  {
    v16 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = objc_msgSend_unsignedIntegerValue(*(*(&v43 + 1) + 8 * v17), v11, v12, v13, v14);
        objc_msgSend_addIndex_(v4, v19, v18, v20, v21);
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v43, v48, 16);
    }

    while (v15);
  }

  objc_msgSend_allKeys(self->_propertyMapToReset, v22, v23, v24, v25);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v26 = v40 = 0u;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v39, v47, 16);
  if (v32)
  {
    v33 = *v40;
    do
    {
      v34 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(v26);
        }

        v35 = objc_msgSend_unsignedIntegerValue(*(*(&v39 + 1) + 8 * v34), v28, v29, v30, v31, v39);
        objc_msgSend_addIndex_(v4, v36, v35, v37, v38);
        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v39, v47, 16);
    }

    while (v32);
  }
}

- (id)allProperties
{
  v31[2] = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_count(self->_propertyMapToReset, a2, v2, v3, v4);
  propertyMapToSet = self->_propertyMapToSet;
  if (v10)
  {
    if (objc_msgSend_count(propertyMapToSet, v6, v7, v8, v9))
    {
      v16 = objc_msgSend_allProperties(self->_propertyMapToSet, v12, v13, v14, v15);
      v31[0] = v16;
      v21 = objc_msgSend_allProperties(self->_propertyMapToReset, v17, v18, v19, v20);
      v31[1] = v21;
      v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v31, 2, v23);

      v28 = objc_msgSend_propertySetFromUnionOfPropertySets_(MEMORY[0x277D80AC0], v25, v24, v26, v27);

      goto LABEL_7;
    }

    v29 = objc_msgSend_allProperties(self->_propertyMapToReset, v12, v13, v14, v15);
  }

  else
  {
    v29 = objc_msgSend_allProperties(propertyMapToSet, v6, v7, v8, v9);
  }

  v28 = v29;
LABEL_7:

  return v28;
}

- (BOOL)containsAnyPropertiesInSet:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, v5, v4, v6, v7))
  {
    v11 = 1;
  }

  else
  {
    v11 = objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToReset, v8, v4, v9, v10);
  }

  return v11;
}

- (BOOL)containsCellStyleProperties
{
  if ((atomic_load_explicit(&qword_27CFB5220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5220))
  {
    qword_27CFB5218 = objc_msgSend_properties(TSTCellStyle, a2, v11, v2, v3);
    __cxa_guard_release(&qword_27CFB5220);
  }

  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, a2, qword_27CFB5218, v2, v3))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;
  v10 = qword_27CFB5218;

  return objc_msgSend_containsAnyPropertyInProperties_(propertyMapToReset, v5, v10, v6, v7);
}

- (BOOL)containsCellStyleOrCellDiffCellStyleProperties
{
  if (objc_msgSend_containsProperty_(self->_propertyMapToSet, a2, 905, v2, v3) & 1) != 0 || (objc_msgSend_containsProperty_(self->_propertyMapToReset, v5, 905, v6, v7))
  {
    return 1;
  }

  return objc_msgSend_containsCellStyleProperties(self, v8, v9, v10, v11);
}

- (BOOL)containsTextStyleProperties
{
  if (objc_msgSend_containsProperty_(self->_propertyMapToSet, a2, 906, v2, v3) & 1) != 0 || (objc_msgSend_containsProperty_(self->_propertyMapToReset, v5, 906, v6, v7))
  {
    return 1;
  }

  return objc_msgSend_containsParagraphStyleProperties(self, v8, v9, v10, v11);
}

- (BOOL)containsParagraphStyleProperties
{
  if ((atomic_load_explicit(&qword_27CFB5230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5230))
  {
    qword_27CFB5228 = objc_msgSend_properties(MEMORY[0x277D80EC8], a2, v2, v3, v4);
    __cxa_guard_release(&qword_27CFB5230);
  }

  if ((atomic_load_explicit(&qword_27CFB5248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5248))
  {
    *&xmmword_27CFB5238 = objc_msgSend_propertyRange(qword_27CFB5228, a2, v2, v3, v4);
    *(&xmmword_27CFB5238 + 1) = v16;
    __cxa_guard_release(&qword_27CFB5248);
  }

  v18.location = objc_msgSend_propertyRange(self->_propertyMapToSet, a2, v2, v3, v4);
  length = NSIntersectionRange(v18, xmmword_27CFB5238).length;
  if (!length)
  {
    v19.location = objc_msgSend_propertyRange(self->_propertyMapToReset, 0, v7, v8, v9);
    length = NSIntersectionRange(v19, xmmword_27CFB5238).length;
    if (!length)
    {
      return 0;
    }
  }

  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, length, qword_27CFB5228, v8, v9))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;
  v15 = qword_27CFB5228;

  return objc_msgSend_containsAnyPropertyInProperties_(propertyMapToReset, v10, v15, v11, v12);
}

- (BOOL)containsFormatAndValueProperties
{
  if ((atomic_load_explicit(&qword_27CFB5258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5258))
  {
    qword_27CFB5250 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], a2, 907, v2, v3, 913, 0);
    __cxa_guard_release(&qword_27CFB5258);
  }

  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, a2, qword_27CFB5250, v2, v3))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;
  v10 = qword_27CFB5250;

  return objc_msgSend_containsAnyPropertyInProperties_(propertyMapToReset, v5, v10, v6, v7);
}

- (id)propertyMapToSetWithProperties:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_copy(self->_propertyMapToSet, v5, v6, v7, v8);
  objc_msgSend_filterWithProperties_(v9, v10, v4, v11, v12);

  return v9;
}

- (void)clear
{
  objc_msgSend_removeAllPropertyValues(self->_propertyMapToSet, a2, v2, v3, v4);
  propertyMapToReset = self->_propertyMapToReset;

  objc_msgSend_removeAllPropertyValues(propertyMapToReset, v6, v7, v8, v9);
}

- (id)objectApplyingDiffToObject:(id)a3 andUpdateInverse:(id)a4
{
  v4 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_optionalConcurrentStylesheet_(self, a2, a3, a4, 0);

  return v4;
}

- (id)objectApplyingDiffToObject:(id)a3 andUpdateInverse:(id)a4 optionalConcurrentStylesheet:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v16 = objc_msgSend_cellDiffProperties(v11, v12, v13, v14, v15);
  if ((objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, v17, v16, v18, v19) & 1) != 0 || objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToReset, v20, v16, v22, v23))
  {
    v24 = objc_msgSend_propertyMapToReset(v9, v20, v21, v22, v23);
    v30 = objc_msgSend_propertyMapToSet(v9, v25, v26, v27, v28);
    propertyMapToSet = self->_propertyMapToSet;
    propertyMapToReset = self->_propertyMapToReset;
    if (v10)
    {
      objc_msgSend_objectByRemovingPropertiesInMap_addingPropertiesInMap_updateInverseResetPropertyMap_updateInverseSetPropertyMap_optionalConcurrentStylesheet_(v8, v29, propertyMapToReset, propertyMapToSet, v24, v30, v10);
    }

    else
    {
      objc_msgSend_objectByRemovingPropertiesInMap_addingPropertiesInMap_updateInverseResetPropertyMap_updateInverseSetPropertyMap_(v8, v29, propertyMapToReset, propertyMapToSet, v24, v30);
    }
    v33 = ;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (TSTCellDiff)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = TSTCellDiff;
  v7 = [(TSTCellDiff *)&v20 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D80AB8]);
    v11 = MEMORY[0x277D80BE0];
    if (*(a3 + 3))
    {
      v12 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v8, v9, *(a3 + 3), v6, v10);
    }

    else
    {
      v12 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v8, v9, MEMORY[0x277D80BE0], v6, v10);
    }

    propertyMapToSet = v7->_propertyMapToSet;
    v7->_propertyMapToSet = v12;

    v14 = objc_alloc(MEMORY[0x277D80AB8]);
    if (*(a3 + 4))
    {
      v17 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v14, v15, *(a3 + 4), v6, v16);
    }

    else
    {
      v17 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v14, v15, v11, v6, v16);
    }

    propertyMapToReset = v7->_propertyMapToReset;
    v7->_propertyMapToReset = v17;
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = a4;
  propertyMapToSet = self->_propertyMapToSet;
  *(a3 + 4) |= 1u;
  v10 = *(a3 + 3);
  v17 = v7;
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA03B0](v11);
    *(a3 + 3) = v10;
    v7 = v17;
  }

  objc_msgSend_saveToCommandPropertyMapMessage_archiver_(propertyMapToSet, v6, v10, v7, v8);
  propertyMapToReset = self->_propertyMapToReset;
  *(a3 + 4) |= 2u;
  v15 = *(a3 + 4);
  if (!v15)
  {
    v16 = *(a3 + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA03B0](v16);
    *(a3 + 4) = v15;
  }

  objc_msgSend_saveToCommandPropertyMapMessage_archiver_(propertyMapToReset, v12, v15, v17, v13);
}

- (unint64_t)estimatedByteSize
{
  v76 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v6 = objc_msgSend_objectForSetProperty_(self, v3, 907, v4, v5);
  v7 = TSUCheckedDynamicCast();

  if (!v7)
  {
LABEL_11:
    v23 = 1024;
    goto LABEL_12;
  }

  if (objc_msgSend_valueType(v7, v8, v9, v10, v11) != 3)
  {
    if (objc_msgSend_valueType(v7, v12, v13, v14, v15) == 9)
    {
      TST::CellDiffArchive::CellDiffArchive(&__p, 0);
      objc_msgSend_saveToArchive_archiver_(self, v24, &__p, 0, v25);
      v23 = TST::CellDiffArchive::ByteSizeLong(&__p) + 1024;
      TST::CellDiffArchive::~CellDiffArchive(&__p);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = objc_msgSend_stringValue(v7, v12, v13, v14, v15);
  v21 = objc_msgSend_tsp_protobufString(v16, v17, v18, v19, v20);
  sub_22108CCD0(&__p, v21);
  if (v74 >= 0)
  {
    v22 = v74;
  }

  else
  {
    v22 = v73;
  }

  if ((v74 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
  }

  v23 = 2 * (v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6)) + 2048;
LABEL_12:
  objc_opt_class();
  v29 = objc_msgSend_objectForSetProperty_(self, v26, 908, v27, v28);
  v30 = TSUCheckedDynamicCast();

  if (v30)
  {
    objc_msgSend_warnings(v30, v31, v32, v33, v34);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v35 = v69 = 0u;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v68, v75, 16);
    if (v41)
    {
      v42 = *v69;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v69 != v42)
          {
            objc_enumerationMutation(v35);
          }

          v44 = *(*(&v68 + 1) + 8 * i);
          v45 = objc_msgSend_originalFormula(v44, v37, v38, v39, v40, v68);
          if (objc_msgSend_length(v45, v46, v47, v48, v49))
          {
            v54 = objc_msgSend_tsp_protobufString(v45, v50, v51, v52, v53);
            sub_22108CCD0(&__p, v54);
            if (v74 >= 0)
            {
              v55 = v74;
            }

            else
            {
              v55 = v73;
            }

            if ((v74 & 0x8000000000000000) != 0)
            {
              operator delete(__p);
            }

            v23 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
          }

          v56 = objc_msgSend_supplementaryText(v44, v50, v51, v52, v53);
          if (objc_msgSend_length(v56, v57, v58, v59, v60))
          {
            v65 = objc_msgSend_tsp_protobufString(v56, v61, v62, v63, v64);
            sub_22108CCD0(&__p, v65);
            if (v74 >= 0)
            {
              v66 = v74;
            }

            else
            {
              v66 = v73;
            }

            if ((v74 & 0x8000000000000000) != 0)
            {
              operator delete(__p);
            }

            v23 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6);
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v68, v75, 16);
      }

      while (v41);
    }
  }

  return v23;
}

@end