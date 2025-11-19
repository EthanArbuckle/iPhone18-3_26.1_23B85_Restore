@interface KNClassicStylesheetRecord
- (id)childEnumerator;
- (id)referencedStyles;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setIdentifierToStyleMap:(id)a3;
@end

@implementation KNClassicStylesheetRecord

- (void)setIdentifierToStyleMap:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6);
  identifierToStyleMap = self->_identifierToStyleMap;
  self->_identifierToStyleMap = v4;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  v11 = objc_msgSend_identifierToStyleMap(self, v9, v10);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_275DC7FE4;
  v19 = &unk_27A698C28;
  v12 = v8;
  v20 = v12;
  v13 = v5;
  v21 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v14, &v16);

  objc_msgSend_setIdentifierToStyleMap_(self, v15, v12, v16, v17, v18, v19);
}

- (id)referencedStyles
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  v7 = objc_msgSend_identifierToStyleMap(self, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275DC81B0;
  v11[3] = &unk_27A698C50;
  v8 = v4;
  v12 = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v9, v11);

  return v8;
}

- (id)childEnumerator
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  v7 = objc_msgSend_identifierToStyleMap(self, v5, v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275DC8348;
  v14[3] = &unk_27A698C50;
  v8 = v4;
  v15 = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v9, v14);

  v12 = objc_msgSend_objectEnumerator(v8, v10, v11);

  return v12;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v19 = self;
  v5 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = *(a3 + 8);
  if (v8 >= 1)
  {
    v9 = 8;
    v10 = MEMORY[0x277D80A18];
    do
    {
      v11 = *(*(a3 + 5) + v9);
      v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(v11 + 24) & 0xFFFFFFFFFFFFFFFELL, v19);
      v13 = *(v11 + 32);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_275DC85E8;
      v21[3] = &unk_27A698C78;
      v22 = v7;
      v14 = v12;
      v23 = v14;
      v15 = v5;
      v17 = objc_opt_class();
      if (v13)
      {
        objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v15, v16, v13, v17, 0, v21);
      }

      else
      {
        objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v15, v16, v10, v17, 0, v21);
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  objc_storeStrong(&v19->_identifierToStyleMap, v7);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_275DC8658;
  v20[3] = &unk_27A698390;
  v20[4] = v19;
  objc_msgSend_addFinalizeHandler_(v5, v18, v20);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v74 = a4;
  v7 = objc_msgSend_allKeys(self->_identifierToStyleMap, v5, v6);
  v9 = objc_msgSend_sortedArrayUsingComparator_(v7, v8, &unk_2884D5168);

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v9;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v78, v82, 16);
  if (v11)
  {
    v73 = *v79;
    do
    {
      v75 = v11;
      for (i = 0; i != v75; ++i)
      {
        if (*v79 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v78 + 1) + 8 * i);
        v77 = objc_msgSend_objectForKeyedSubscript_(self->_identifierToStyleMap, v12, v14);
        v17 = *(a3 + 5);
        if (!v17)
        {
          goto LABEL_11;
        }

        v18 = *(a3 + 8);
        v19 = *v17;
        if (v18 < *v17)
        {
          *(a3 + 8) = v18 + 1;
          v20 = *&v17[2 * v18 + 2];
          goto LABEL_13;
        }

        if (v19 == *(a3 + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v17 = *(a3 + 5);
          v19 = *v17;
        }

        *v17 = v19 + 1;
        v20 = MEMORY[0x277C8F080](*(a3 + 3));
        v21 = *(a3 + 8);
        v22 = *(a3 + 5) + 8 * v21;
        *(a3 + 8) = v21 + 1;
        *(v22 + 8) = v20;
LABEL_13:
        v23 = objc_msgSend_tsp_protobufString(v14, v15, v16);
        sub_275DC8DCC(v20, v23);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v20 + 16) |= 2u;
          v25 = *(v20 + 32);
          if (!v25)
          {
            v26 = *(v20 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277C8F050](v26);
            *(v20 + 32) = v25;
          }

          objc_msgSend_setStrongReference_message_(v74, v24, v77, v25);
        }

        else
        {
          objc_opt_class();
          v28 = TSUDynamicCast();
          if (v28)
          {
            v29 = objc_alloc(MEMORY[0x277D80030]);
            v72 = objc_msgSend_context(self, v30, v31);
            v71 = objc_msgSend_chartStyle(v28, v32, v33);
            v70 = objc_msgSend_legendStyle(v28, v34, v35);
            v69 = objc_msgSend_valueAxisStyles(v28, v36, v37);
            v40 = objc_msgSend_categoryAxisStyles(v28, v38, v39);
            v43 = objc_msgSend_seriesStyles(v28, v41, v42);
            v46 = objc_msgSend_paragraphStyles(v28, v44, v45);
            v49 = objc_msgSend_refLineStyle(v28, v47, v48);
            v52 = objc_msgSend_uuid(v28, v50, v51);
            v54 = objc_msgSend_initWithContext_chartStyle_legendStyle_valueAxisStyles_categoryAxisStyles_seriesStyles_paragraphStyles_refLineStyle_uuid_(v29, v53, v72, v71, v70, v69, v40, v43, v46, v49, v52);

            *(v20 + 16) |= 2u;
            v56 = *(v20 + 32);
            if (!v56)
            {
              v57 = *(v20 + 8);
              if (v57)
              {
                v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
              }

              v56 = MEMORY[0x277C8F050](v57);
              *(v20 + 32) = v56;
            }

            objc_msgSend_setStrongReference_message_(v74, v55, v54, v56);
          }

          else
          {
            v58 = MEMORY[0x277D81150];
            v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[KNClassicStylesheetRecord saveToArchive:archiver:]");
            v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNClassicStylesheetRecord.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 174, 0, "Unrecognized object class for object %@ in KNClassicStylesheetRecord", v77);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
            *(v20 + 16) |= 2u;
            v66 = *(v20 + 32);
            if (!v66)
            {
              v67 = *(v20 + 8);
              if (v67)
              {
                v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
              }

              v66 = MEMORY[0x277C8F050](v67);
              *(v20 + 32) = v66;
            }

            objc_msgSend_setWeakReference_message_(v74, v65, v77, v66);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v78, v82, 16);
    }

    while (v11);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812EA908[22]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275DC90DC, off_2812EA908[22]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

@end