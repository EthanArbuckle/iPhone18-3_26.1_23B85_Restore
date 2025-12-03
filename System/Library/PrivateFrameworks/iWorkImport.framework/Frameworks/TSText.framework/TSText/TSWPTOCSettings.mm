@interface TSWPTOCSettings
- (BOOL)showInTOCForParagraphStyle:(id)style;
- (NSSet)indexedStyles;
- (NSSet)paragraphStylesShownInTOC;
- (NSSet)referencedStyles;
- (NSString)description;
- (TSWPTOCSettings)initWithContext:(id)context;
- (id)copyUsingDeepCopy;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entryStyleForParagraphStyle:(id)style;
- (void)addIndexedStyle:(id)style withEntryStyle:(id)entryStyle showInTOC:(BOOL)c;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_upgradeStyle:(id)style withStylesheet:(id)stylesheet;
- (void)removeIndexedStyle:(id)style;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)upgradeWithStylesheet:(id)stylesheet;
@end

@implementation TSWPTOCSettings

- (TSWPTOCSettings)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TSWPTOCSettings;
  v5 = [(TSWPTOCSettings *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    map = v5->_map;
    v5->_map = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_context(self, a2, zone);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (id)copyWithContext:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v39 = objc_msgSend_initWithContext_(v4, v5, contextCopy);
  if (v39)
  {
    v8 = objc_msgSend_copy(self->_displayName, v6, v7);
    v9 = *(v39 + 64);
    *(v39 + 64) = v8;

    *(v39 + 72) = objc_msgSend_scope(self, v10, v11);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = objc_msgSend_keyEnumerator(self->_map, v12, v13);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v40, v44, 16);
    if (v18)
    {
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          objc_msgSend_stylesheet(v21, v16, v17, contextCopy);

          v24 = objc_msgSend_stylesheet(v21, v22, v23);
          v25 = v24 == 0;

          if (!v25)
          {
            v26 = objc_msgSend_objectForKeyedSubscript_(self->_map, v16, v21);
            v27 = [TSWPTOCMapEntry alloc];
            v30 = objc_msgSend_tocEntryStyle(v26, v28, v29);
            v33 = objc_msgSend_showInTOC(v26, v31, v32);
            v35 = objc_msgSend_initWithTOCEntryStyle_showInTOC_(v27, v34, v30, v33);
            objc_msgSend_setObject_forKeyedSubscript_(*(v39 + 80), v36, v35, v21);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v40, v44, 16);
      }

      while (v18);
    }
  }

  return v39;
}

- (id)copyUsingDeepCopy
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = objc_msgSend_context(self, a2, v2);
  v4 = objc_alloc(objc_opt_class());
  v35 = objc_msgSend_initWithContext_(v4, v5, v34);
  if (v35)
  {
    v8 = objc_msgSend_copy(self->_displayName, v6, v7);
    v9 = *(v35 + 64);
    *(v35 + 64) = v8;

    *(v35 + 72) = objc_msgSend_scope(self, v10, v11);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = objc_msgSend_keyEnumerator(self->_map, v12, v13);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v36, v40, 16);
    if (v18)
    {
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          objc_msgSend_stylesheet(v21, v16, v17, v34);

          v24 = objc_msgSend_stylesheet(v21, v22, v23);
          v25 = v24 == 0;

          if (!v25)
          {
            v26 = objc_msgSend_objectForKeyedSubscript_(self->_map, v16, v21);
            v29 = objc_msgSend_context(self, v27, v28);
            v31 = objc_msgSend_copyWithContext_(v26, v30, v29);
            objc_msgSend_setObject_forKeyedSubscript_(*(v35 + 80), v32, v31, v21);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v36, v40, 16);
      }

      while (v18);
    }
  }

  return v35;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 4);
  if (v7)
  {
    v8 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setDisplayName_(self, v9, v8);

    v7 = *(archive + 4);
  }

  if ((v7 & 2) != 0)
  {
    objc_msgSend_setScope_(self, v6, *(archive + 14));
  }

  v10 = *(archive + 8);
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(archive + 5) + v11);
      v13 = *(v12 + 16);
      if ((v13 & 1) != 0 && (v13 & 2) != 0)
      {
        if ((v13 & 4) != 0)
        {
          v14 = *(v12 + 40);
        }

        else
        {
          v14 = 1;
        }

        v16 = *(v12 + 24);
        v15 = *(v12 + 32);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_276E241CC;
        v22[3] = &unk_27A6F5748;
        v22[4] = self;
        v23 = v14 & 1;
        v17 = unarchiverCopy;
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        objc_msgSend_readReferenceMessage1_class_protocol_message2_class_protocol_completion_(v17, v20, v16, v18, 0, v15, v19, 0, v22);
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = objc_opt_new();
  map = self->_map;
  self->_map = v5;

  v10 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v10, v7, off_2812DC408[76]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v9, v8, v10);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v95 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  selfCopy = self;
  v8 = objc_msgSend_displayName(self, v6, v7);
  if (v8)
  {
    *(archive + 4) |= 1u;
    v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsp_saveToProtobufString_(v8, v10, v9);
  }

  v13 = objc_msgSend_scope(selfCopy, v11, v12);
  if (v13 >= 0x100000000)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTOCSettings saveToArchive:archiver:]");
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v82, v79, v81, 168, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84);
    LODWORD(v13) = -1;
  }

  *(archive + 4) |= 2u;
  *(archive + 14) = v13;
  v16 = MEMORY[0x277CBEB98];
  v17 = objc_msgSend_allKeys(selfCopy->_map, v14, v15);
  v19 = objc_msgSend_setWithArray_(v16, v18, v17);
  v22 = objc_msgSend_tsp_sortedObjectArray(v19, v20, v21);
  archiveCopy = archive;

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v22;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v90, v94, 16);
  if (v25)
  {
    v88 = *v91;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v91 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v90 + 1) + 8 * i);
        v28 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_map, v24, v27);
        v31 = objc_msgSend_tocEntryStyle(v28, v29, v30);
        v34 = v31;
        if (v27)
        {
          v35 = v31 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          v36 = MEMORY[0x277D81150];
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSWPTOCSettings saveToArchive:archiver:]");
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 178, 0, "TOC style association contains a nil style: %p->%p", v27, v34);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
        }

        v45 = objc_msgSend_stylesheet(v27, v32, v33);
        if (!v45 || (objc_msgSend_stylesheet(v34, v43, v44), v46 = objc_claimAutoreleasedReturnValue(), v47 = v46 == 0, v46, v45, v47))
        {
          v49 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSWPTOCSettings saveToArchive:archiver:]");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 179, 0, "One of the TOC styles is not in a stylesheet");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
        }

        if (v27)
        {
          v56 = objc_msgSend_stylesheet(v27, v43, v48);
          v59 = v56;
          if (!v56 || !v34)
          {

            goto LABEL_40;
          }

          v60 = objc_msgSend_stylesheet(v34, v57, v58);
          v61 = v60 == 0;

          if (v61)
          {
            goto LABEL_40;
          }

          v63 = archiveCopy;
          v64 = archiveCopy[5];
          if (!v64)
          {
            goto LABEL_29;
          }

          v65 = *(archiveCopy + 8);
          v66 = *v64;
          if (v65 < *v64)
          {
            *(archiveCopy + 8) = v65 + 1;
            v67 = *&v64[2 * v65 + 2];
LABEL_31:
            *(v67 + 16) |= 1u;
            v70 = *(v67 + 24);
            if (!v70)
            {
              v71 = *(v67 + 8);
              if (v71)
              {
                v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
              }

              v70 = MEMORY[0x277CA3250](v71);
              *(v67 + 24) = v70;
            }

            objc_msgSend_setStrongReference_message_(archiverCopy, v62, v27, v70);
            *(v67 + 16) |= 2u;
            v73 = *(v67 + 32);
            if (!v73)
            {
              v74 = *(v67 + 8);
              if (v74)
              {
                v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
              }

              v73 = MEMORY[0x277CA3250](v74);
              *(v67 + 32) = v73;
            }

            objc_msgSend_setStrongReference_message_(archiverCopy, v72, v34, v73);
            v77 = objc_msgSend_showInTOC(v28, v75, v76);
            *(v67 + 16) |= 4u;
            *(v67 + 40) = v77;
            goto LABEL_40;
          }

          if (v66 == *(archiveCopy + 9))
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 3));
            v63 = archiveCopy;
            v64 = archiveCopy[5];
            v66 = *v64;
          }

          *v64 = v66 + 1;
          v67 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCSettingsArchive_TOCEntryData>(v63[3]);
          v68 = *(archiveCopy + 8);
          v69 = archiveCopy[5] + 8 * v68;
          *(archiveCopy + 8) = v68 + 1;
          *(v69 + 8) = v67;
          goto LABEL_31;
        }

LABEL_40:
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v90, v94, 16);
    }

    while (v25);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276E264F8, off_2812DC408[76]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (NSSet)indexedStyles
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_allKeys(self->_map, a2, v2);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  return v6;
}

- (NSSet)paragraphStylesShownInTOC
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = objc_msgSend_keyEnumerator(self->_map, v4, v5, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_map, v8, v12);
        if (objc_msgSend_showInTOC(v13, v14, v15))
        {
          objc_msgSend_addObject_(v3, v16, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v22, 16);
    }

    while (v9);
  }

  return v3;
}

- (void)addIndexedStyle:(id)style withEntryStyle:(id)entryStyle showInTOC:(BOOL)c
{
  cCopy = c;
  styleCopy = style;
  entryStyleCopy = entryStyle;
  if (!styleCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTOCSettings addIndexedStyle:withEntryStyle:showInTOC:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 222, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (!entryStyleCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTOCSettings addIndexedStyle:withEntryStyle:showInTOC:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 223, 0, "invalid nil value for '%{public}s'", "entryStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_stylesheet(styleCopy, v8, v9);

  if (!v25)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPTOCSettings addIndexedStyle:withEntryStyle:showInTOC:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 224, 0, "invalid nil value for '%{public}s'", "paragraphStyle.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  v37 = objc_msgSend_firstNamedAncestor(styleCopy, v26, v27);
  if (v37)
  {
    objc_msgSend_willModify(self, v35, v36);
    v38 = [TSWPTOCMapEntry alloc];
    v40 = objc_msgSend_initWithTOCEntryStyle_showInTOC_(v38, v39, entryStyleCopy, cCopy);
    objc_msgSend_setObject_forKeyedSubscript_(self->_map, v41, v40, v37);
  }
}

- (void)removeIndexedStyle:(id)style
{
  v7 = objc_msgSend_firstNamedAncestor(style, a2, style);
  if (v7)
  {
    objc_msgSend_willModify(self, v4, v5);
    objc_msgSend_removeObjectForKey_(self->_map, v6, v7);
  }
}

- (id)entryStyleForParagraphStyle:(id)style
{
  v55 = *MEMORY[0x277D85DE8];
  v49 = objc_msgSend_firstNamedAncestor(style, a2, style);
  v4 = objc_msgSend_objectForKeyedSubscript_(self->_map, v3, v49);
  v7 = objc_msgSend_tocEntryStyle(v4, v5, v6);
  v12 = objc_msgSend_name(v49, v8, v9);
  if (v7)
  {
    v13 = v4;
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = objc_msgSend_allKeys(self->_map, v10, v11);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v50, v54, 16);
    if (v19)
    {
      v20 = *v51;
LABEL_8:
      v21 = 0;
      while (1)
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v50 + 1) + 8 * v21);
        v23 = objc_msgSend_name(v22, v17, v18);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v24, v12);

        if (isEqualToString)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v50, v54, 16);
          if (v19)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v13 = objc_msgSend_objectForKeyedSubscript_(self->_map, v17, v22);

      v7 = objc_msgSend_tocEntryStyle(v13, v28, v29);

      if (v7)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_14:

      v13 = v4;
    }

    v30 = objc_msgSend_stylesheet(v49, v26, v27);
    v32 = objc_msgSend_cascadedStyleWithIdentifier_(v30, v31, @"toc-entry-style-default");

    if (!v32)
    {
      v32 = v49;
    }

    v33 = [TSWPTOCEntryStyle alloc];
    v36 = objc_msgSend_context(self, v34, v35);
    v38 = objc_msgSend_stringByAppendingString_(@"TOC ", v37, v12);
    v7 = objc_msgSend_initWithContext_name_basedOnParagraphStyle_(v33, v39, v36, v38, v32);

    if (!v7)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSWPTOCSettings entryStyleForParagraphStyle:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 281, 0, "invalid nil value for '%{public}s'", "result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
      v7 = 0;
    }
  }

LABEL_3:

  return v7;
}

- (BOOL)showInTOCForParagraphStyle:(id)style
{
  styleCopy = style;
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_map, v5, styleCopy);
  v11 = objc_msgSend_showInTOC(v6, v7, v8);
  if (!v6)
  {
    v12 = objc_msgSend_parent(styleCopy, v9, v10);

    if (v12)
    {
      v15 = objc_msgSend_parent(styleCopy, v13, v14);
      v11 = objc_msgSend_showInTOCForParagraphStyle_(self, v16, v15);
    }
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_displayName(self, v5, v6);
  v9 = objc_msgSend_descriptionWithObject_class_format_(v3, v8, self, v4, @" name='%@'", v7);;

  v12 = objc_msgSend_string(MEMORY[0x277CCAB68], v10, v11);
  map = self->_map;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_276E25568;
  v24[3] = &unk_27A6F5770;
  v14 = v12;
  v25 = v14;
  selfCopy = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(map, v15, v24);
  v18 = objc_msgSend_tsu_stringByExpandingTableFormatting(v14, v16, v17);
  objc_msgSend_addFieldValue_(v9, v19, v18);

  v22 = objc_msgSend_descriptionString(v9, v20, v21);

  return v22;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  mapperCopy = mapper;
  objc_msgSend_willModify(self, v6, v7);
  objc_msgSend_pushMappingContext_(mapperCopy, v8, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276E257A8;
  v12[3] = &unk_27A6F5798;
  v9 = mapperCopy;
  v13 = v9;
  objc_msgSend_replaceReferencedStylesUsingBlock_(self, v10, v12);
  objc_msgSend_popMappingContext_(v9, v11, self);
}

- (NSSet)referencedStyles
{
  v4 = objc_msgSend_set(MEMORY[0x277D81258], a2, v2);
  map = self->_map;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276E258B0;
  v9[3] = &unk_27A6F57C0;
  v6 = v4;
  v10 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(map, v7, v9);

  return v6;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_willModify(self, v5, v6);
  v7 = objc_alloc(MEMORY[0x277D81308]);
  v10 = objc_msgSend_map(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);
  v15 = objc_msgSend_initWithCapacity_(v7, v14, v13);

  map = self->_map;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_276E25C08;
  v46[3] = &unk_27A6F57E8;
  v17 = blockCopy;
  v48 = v17;
  v18 = v15;
  v47 = v18;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(map, v19, v46);
  v22 = objc_msgSend_count(v18, v20, v21);
  v25 = objc_msgSend_count(self->_map, v23, v24);
  v28 = self->_map;
  if (v22 != v25)
  {
    v30 = objc_msgSend_allKeys(self->_map, v26, v27);
    v45 = objc_msgSend_allKeys(v18, v31, v32);
    TSUSetCrashReporterInfo();

    v33 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSWPTOCSettings replaceReferencedStylesUsingBlock:]", "[TSWPTOCSettings replaceReferencedStylesUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm", 372, v30, v45);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCSettings.mm");
    v40 = objc_msgSend_allKeys(self->_map, v38, v39);
    v43 = objc_msgSend_allKeys(v18, v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v44, v35, v37, 372, 1, "-replaceReferencedStylesUsingBlock: resulted in fewer entries than original. Perhaps two indexed styles turned into the same style.\nOriginal indexed styles: %@\nNew indexed styles:%@", v40, v43);

    TSUCrashBreakpoint();
    abort();
  }

  self->_map = v18;
  v29 = v18;
}

- (void)p_upgradeStyle:(id)style withStylesheet:(id)stylesheet
{
  styleCopy = style;
  stylesheetCopy = stylesheet;
  v9 = objc_msgSend_stylesheet(styleCopy, v7, v8);

  if (v9 != stylesheetCopy)
  {
    v12 = objc_msgSend_parent(styleCopy, v10, v11);
    v15 = objc_msgSend_stylesheet(styleCopy, v13, v14);
    isLocked = objc_msgSend_isLocked(v15, v16, v17);
    v21 = objc_msgSend_isLocked(stylesheetCopy, v19, v20);
    objc_msgSend_setIsLocked_(v15, v22, 0);
    objc_msgSend_setIsLocked_(stylesheetCopy, v23, 0);
    objc_msgSend_willModifyForUpgrade(styleCopy, v24, v25);
    objc_msgSend_willModifyForUpgrade(stylesheetCopy, v26, v27);
    v30 = objc_msgSend_stylesheet(styleCopy, v28, v29);
    objc_msgSend_willModifyForUpgrade(v30, v31, v32);

    v35 = objc_msgSend_stylesheet(styleCopy, v33, v34);
    objc_msgSend_removeStyle_(v35, v36, styleCopy);

    if (objc_msgSend_tsp_isInDocument(styleCopy, v37, v38))
    {
      v41 = objc_msgSend_context(self, v39, v40);
      objc_msgSend_willBeRemovedFromDocumentWithContext_(styleCopy, v42, v41);
    }

    objc_msgSend_addStyle_withParent_(stylesheetCopy, v39, styleCopy, v12);
    objc_msgSend_setIsLocked_(v15, v43, isLocked);
    objc_msgSend_setIsLocked_(stylesheetCopy, v44, v21);
  }
}

- (void)upgradeWithStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  map = self->_map;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276E26398;
  v8[3] = &unk_27A6F5770;
  v8[4] = self;
  v9 = stylesheetCopy;
  v6 = stylesheetCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(map, v7, v8);
}

@end