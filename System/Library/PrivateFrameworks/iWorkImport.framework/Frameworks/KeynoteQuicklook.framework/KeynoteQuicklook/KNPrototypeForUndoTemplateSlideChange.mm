@interface KNPrototypeForUndoTemplateSlideChange
+ (id)blobWithSlide:(id)a3;
- (KNPrototypeForUndoTemplateSlideChange)initWithSlide:(id)a3;
- (KNTemplateSlide)templateSlide;
- (NSString)description;
- (id)boxedObjectForProperty:(int)a3;
- (id)objectForProperty:(int)a3;
- (int)intValueForProperty:(int)a3;
- (void)dealloc;
- (void)didInitFromSOS;
- (void)loadFromUnarchiver:(id)a3;
- (void)migrateStyles;
- (void)rebuildChildInfosAndPlaceholdersFromMaster:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation KNPrototypeForUndoTemplateSlideChange

- (KNPrototypeForUndoTemplateSlideChange)initWithSlide:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNPrototypeForUndoTemplateSlideChange initWithSlide:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPrototypeForUndoTemplateSlideChange.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 57, 0, "Invalid parameter not satisfying: %{public}s", "slide != nil");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = objc_msgSend_context(a3, a2, a3);
  v93.receiver = self;
  v93.super_class = KNPrototypeForUndoTemplateSlideChange;
  v15 = [(KNPrototypeForUndoTemplateSlideChange *)&v93 initWithContext:v12];
  if (v15)
  {
    v15->_style = objc_msgSend_style(a3, v13, v14);
    v18 = objc_msgSend_templateSlide(a3, v16, v17);
    v83 = v15;
    v15->_templateSlideId = objc_msgSend_objectUUID(v18, v19, v20);
    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
    v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
    v84 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v27, v28);
    v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v34 = objc_msgSend_childInfos(a3, v32, v33);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v89, v96, 16);
    if (v36)
    {
      v39 = v36;
      v40 = *v90;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v90 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = *(*(&v89 + 1) + 8 * i);
          if (objc_msgSend_parentInfo(v42, v37, v38) == a3)
          {
            if (objc_msgSend_infoIsPlaceholder_(a3, v43, v42))
            {
              v44 = objc_msgSend_tagForInfo_(a3, v37, v42);
              v47 = objc_msgSend_replicateForReinsertion(v42, v45, v46);
              objc_msgSend_addObject_(v26, v48, v47);
              objc_msgSend_addObject_(v23, v49, v47);
              if (v44)
              {
                objc_msgSend_setObject_forKey_(v84, v50, v47, v44);
              }

              else
              {
                v44 = &stru_2884D8E20;
              }

              objc_msgSend_addObject_(v31, v50, v44);
            }
          }

          else
          {
            objc_msgSend_addObject_(v23, v43, v42);
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v89, v96, 16);
      }

      while (v39);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v94[0] = objc_msgSend_titlePlaceholder(a3, v37, v38);
    v94[1] = objc_msgSend_bodyPlaceholder(a3, v51, v52);
    v94[2] = objc_msgSend_slideNumberPlaceholder(a3, v53, v54);
    v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, v94, 3);
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v85, v95, 16);
    if (v58)
    {
      v61 = v58;
      v62 = *v86;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v86 != v62)
          {
            objc_enumerationMutation(v56);
          }

          v64 = *(*(&v85 + 1) + 8 * j);
          v65 = objc_msgSend_childInfos(a3, v59, v60);
          if ((objc_msgSend_containsObject_(v65, v66, v64) & 1) == 0)
          {
            v67 = objc_msgSend_replicateForReinsertion(v64, v59, v60);
            objc_msgSend_addObject_(v26, v68, v67);
            objc_msgSend_addObject_(v31, v69, &stru_2884D8E20);
          }
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v85, v95, 16);
      }

      while (v61);
    }

    v70 = objc_msgSend_count(v26, v59, v60);
    if (v70 != objc_msgSend_count(v31, v71, v72))
    {
      v74 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[KNPrototypeForUndoTemplateSlideChange initWithSlide:]");
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPrototypeForUndoTemplateSlideChange.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v78, v75, v77, 95, 0, "placeholders and tags must match counts");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
    }

    v15 = v83;
    v83->_childInfos = v23;
    v83->_placeholdersForTags = v84;
    v83->_drawableInfoIdList = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v23, v81, &unk_2884D4CC0);
    v83->_placeholders = v26;
    v83->_placeholderTagsList = v31;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNPrototypeForUndoTemplateSlideChange;
  [(KNPrototypeForUndoTemplateSlideChange *)&v3 dealloc];
}

+ (id)blobWithSlide:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithSlide_(v4, v5, a3);

  return v6;
}

- (void)rebuildChildInfosAndPlaceholdersFromMaster:(id)a3
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  placeholders = self->_placeholders;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275D5E550;
  v14[3] = &unk_27A697D78;
  v14[4] = v5;
  v14[5] = self;
  v14[6] = v8;
  objc_msgSend_enumerateObjectsUsingBlock_(placeholders, v10, v14);
  self->_placeholdersForTags = v8;
  drawableInfoIdList = self->_drawableInfoIdList;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_275D5E5F8;
  v13[3] = &unk_27A697DC8;
  v13[4] = v5;
  v13[5] = a3;
  self->_childInfos = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(drawableInfoIdList, v12, v13);
}

- (void)didInitFromSOS
{
  v2.receiver = self;
  v2.super_class = KNPrototypeForUndoTemplateSlideChange;
  [(KNPrototypeForUndoTemplateSlideChange *)&v2 didInitFromSOS];
}

- (KNTemplateSlide)templateSlide
{
  v4 = objc_msgSend_context(self, a2, v2);
  templateSlideId = self->_templateSlideId;

  return objc_msgSend_objectWithUUID_(v4, v5, templateSlideId);
}

- (void)migrateStyles
{
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_slideStyle(self, v5, v6);
  v9 = objc_msgSend_migratedStyleForStyle_(v4, v8, v7);
  objc_msgSend_setSlideStyle_(self, v10, v9);
  v13 = objc_msgSend_placeholders(self, v11, v12);

  MEMORY[0x2821F9670](v4, sel_migrateStylesInObjects_, v13);
}

- (id)boxedObjectForProperty:(int)a3
{
  v3 = *&a3;
  v5 = String();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      objc_msgSend_floatValueForProperty_(self, v6, v3);
      if (v18 == INFINITY)
      {
        return 0;
      }

      v19 = MEMORY[0x277CCABB0];

      return objc_msgSend_numberWithFloat_(v19, v16, v17);
    }

    else
    {
      if (v5 != 3)
      {
        return 0;
      }

      objc_msgSend_doubleValueForProperty_(self, v6, v3);
      if (v14 == INFINITY)
      {
        return 0;
      }

      v15 = MEMORY[0x277CCABB0];

      return objc_msgSend_numberWithDouble_(v15, v12, v13);
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = objc_msgSend_intValueForProperty_(self, v6, v3);
        if (v7 != 0x80000000)
        {
          v9 = v7;
          v10 = MEMORY[0x277CCABB0];

          return objc_msgSend_numberWithInt_(v10, v8, v9);
        }
      }

      return 0;
    }

    return objc_msgSend_objectForProperty_(self, v6, v3);
  }
}

- (id)objectForProperty:(int)a3
{
  v3 = 0;
  if (a3 <= 4212)
  {
    if (a3 == 515)
    {
      v4 = 64;
      return *(&self->super.super.isa + v4);
    }

    if (a3 != 4212)
    {
      return v3;
    }

    v5 = objc_msgSend_templateSlide(self, a2, *&a3);

    return objc_msgSend_bodyParagraphStyles(v5, v6, v7);
  }

  else
  {
    if (a3 != 4213)
    {
      if (a3 == 4214)
      {
        v4 = 104;
        return *(&self->super.super.isa + v4);
      }

      if (a3 == 4215)
      {
        v4 = 112;
        return *(&self->super.super.isa + v4);
      }

      return v3;
    }

    v9 = objc_msgSend_templateSlide(self, a2, *&a3);

    return objc_msgSend_bodyListStyles(v9, v10, v11);
  }
}

- (int)intValueForProperty:(int)a3
{
  if (a3 != 4216)
  {
    return 0x80000000;
  }

  v3 = objc_msgSend_templateSlide(self, a2, *&a3);
  return objc_msgSend_slideObjectsLayerWithTemplate(v3, v4, v5);
}

- (void)loadFromUnarchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(a3, v5, off_2812EA908[68]);
  v7 = v6;
  if (*(v6 + 96))
  {
    v8 = *(v6 + 96);
  }

  else
  {
    v8 = MEMORY[0x277D80A18];
  }

  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = sub_275D5EC10;
  v31 = &unk_27A697DF0;
  v32 = self;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(a3, v10, v8, v9, 0, &v28);
  if (*(v7 + 104))
  {
    WeakObjectUUIDReferenceMessage = objc_msgSend_readWeakObjectUUIDReferenceMessage_(a3, v11, *(v7 + 104));
  }

  else
  {
    WeakObjectUUIDReferenceMessage = objc_msgSend_readWeakObjectUUIDReferenceMessage_(a3, v11, MEMORY[0x277D809E0]);
  }

  self->_templateSlideId = WeakObjectUUIDReferenceMessage;
  self->_drawableInfoIdList = objc_msgSend_readRepeatedWeakObjectUUIDReferenceMessage_(a3, v13, v7 + 24);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_275D5EC44;
  v26 = &unk_27A697E18;
  v27 = self;
  v14 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(a3, v15, v7 + 48, v14, 0, &v23);
  v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  if (*(v7 + 80) >= 1)
  {
    v20 = 0;
    do
    {
      v21 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v18, *(*(v7 + 88) + 8 * v20 + 8));
      objc_msgSend_addObject_(v19, v22, v21);
      ++v20;
    }

    while (v20 < *(v7 + 80));
  }

  self->_placeholderTagsList = v19;
}

- (void)saveToArchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(a3, v5, sub_275D5F0B8, off_2812EA908[68]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v7, a3);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_slideStyle(self, a2, a3);
  *(a3 + 4) |= 1u;
  v9 = *(a3 + 12);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8F050](v10);
    *(a3 + 12) = v9;
  }

  objc_msgSend_setStrongReference_message_(a4, v7, v8, v9);
  templateSlideId = self->_templateSlideId;
  *(a3 + 4) |= 2u;
  v13 = *(a3 + 13);
  if (!v13)
  {
    v14 = *(a3 + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C8F000](v14);
    *(a3 + 13) = v13;
  }

  objc_msgSend_setWeakReferenceToObjectUUID_message_(a4, v11, templateSlideId, v13);
  objc_msgSend_setWeakReferenceToObjectUUIDArray_message_(a4, v15, self->_drawableInfoIdList, a3 + 24);
  objc_msgSend_setStrongReferenceArray_message_(a4, v16, self->_placeholders, a3 + 48);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  placeholderTagsList = self->_placeholderTagsList;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(placeholderTagsList, v18, &v31, v35, 16);
  if (v21)
  {
    v22 = *v32;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(placeholderTagsList);
        }

        v24 = objc_msgSend_UTF8String(*(*(&v31 + 1) + 8 * i), v19, v20);
        v25 = *(a3 + 11);
        if (!v25)
        {
          goto LABEL_19;
        }

        v26 = *(a3 + 20);
        v27 = *v25;
        if (v26 < *v25)
        {
          *(a3 + 20) = v26 + 1;
          v28 = *&v25[2 * v26 + 2];
          goto LABEL_21;
        }

        if (v27 == *(a3 + 21))
        {
LABEL_19:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
          v25 = *(a3 + 11);
          v27 = *v25;
        }

        *v25 = v27 + 1;
        v28 = sub_275D5EFD8(*(a3 + 9));
        v29 = *(a3 + 20);
        v30 = *(a3 + 11) + 8 * v29;
        *(a3 + 20) = v29 + 1;
        *(v30 + 8) = v28;
LABEL_21:
        MEMORY[0x277C8F920](v28, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(placeholderTagsList, v19, &v31, v35, 16);
    }

    while (v21);
  }
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_templateSlide(self, a2, v2);
  return objc_msgSend_stringWithFormat_(v4, v6, @"<template slide change blob %p>{master=%p}", self, v5);
}

@end