@interface KNLiveVideoSourceCollection
+ (id)localizedDefaultSourceNameForLocale:(id)locale;
+ (id)p_makeDefaultSourceWithContext:(id)context;
- (BOOL)canRemoveSource:(id)source;
- (KNLiveVideoSourceCollection)initWithContext:(id)context;
- (NSSet)sources;
- (id)p_orderedSources;
- (id)p_uniqueNameForSource:(id)source proposedName:(id)name;
- (id)sourceWithObjectUUID:(id)d;
- (id)uniqueNameForSource:(id)source proposedName:(id)name;
- (id)uniqueNameForSourceWithProposedName:(id)name;
- (void)addSource:(id)source;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeSource:(id)source;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNLiveVideoSourceCollection

+ (id)p_makeDefaultSourceWithContext:(id)context
{
  contextCopy = context;
  v4 = [KNLiveVideoSource alloc];
  v5 = sub_275DC204C();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Default Camera", &stru_2884D8E20, @"Keynote");
  isDefaultSource = objc_msgSend_initWithContext_name_isDefaultSource_(v4, v8, contextCopy, v7, 1);

  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = objc_msgSend_initWithUUIDString_(v10, v11, @"6EC43BD2-3B70-4836-AE07-3FBCAFFAA581");
  objc_msgSend_setObjectUUID_(isDefaultSource, v13, v12);

  return isDefaultSource;
}

- (KNLiveVideoSourceCollection)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = KNLiveVideoSourceCollection;
  v5 = [(KNLiveVideoSourceCollection *)&v13 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_p_makeDefaultSourceWithContext_(v6, v7, contextCopy);
    defaultSource = v5->_defaultSource;
    v5->_defaultSource = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    sources = v5->_sources;
    v5->_sources = v10;
  }

  return v5;
}

- (id)p_orderedSources
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = self->_defaultSource;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 1);
  v5 = objc_msgSend_arrayByAddingObjectsFromArray_(v3, v4, self->_sources);

  return v5;
}

- (NSSet)sources
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_msgSend_p_orderedSources(self, v4, v5);
  v8 = objc_msgSend_initWithArray_(v3, v7, v6);

  return v8;
}

- (void)addSource:(id)source
{
  sourceCopy = source;
  v6 = objc_msgSend_defaultSource(self, v4, v5);

  if (v6 == sourceCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNLiveVideoSourceCollection addSource:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 71, 0, "Cannot add the default source to the source collection.");
  }

  else
  {
    if (objc_msgSend_indexOfObjectIdenticalTo_(self->_sources, v7, sourceCopy) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_willModify(self, v8, v9);
      v12 = objc_msgSend_mutableCopy(self->_sources, v10, v11);
      objc_msgSend_addObject_(v12, v13, sourceCopy);
      objc_msgSend_sortUsingComparator_(v12, v14, &unk_2884D8978);
      objc_storeStrong(&self->_sources, v12);
      v17 = objc_msgSend_context(self, v15, v16);
      objc_msgSend_wasAddedToDocumentWithContext_(sourceCopy, v18, v17);

      goto LABEL_7;
    }

    v24 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNLiveVideoSourceCollection addSource:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v26, v20, v22, 75, 0, "Cannot add a source already contained in the source collection.");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
LABEL_7:
}

- (BOOL)canRemoveSource:(id)source
{
  sourceCopy = source;
  v7 = objc_msgSend_defaultSource(self, v5, v6);
  LOBYTE(self) = v7 != sourceCopy;

  return self;
}

- (void)removeSource:(id)source
{
  sourceCopy = source;
  if ((objc_msgSend_canRemoveSource_(self, v4, sourceCopy) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNLiveVideoSourceCollection removeSource:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v15, v9, v11, 98, 0, "Cannot remove the default source from the source collection.");
    goto LABEL_5;
  }

  if (objc_msgSend_indexOfObjectIdenticalTo_(self->_sources, v5, sourceCopy) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNLiveVideoSourceCollection removeSource:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 102, 0, "Cannot remove a source not already contained in the source collection.");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    goto LABEL_7;
  }

  objc_msgSend_willModify(self, v6, v7);
  v20 = objc_msgSend_context(self, v18, v19);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(sourceCopy, v21, v20);

  v24 = objc_msgSend_mutableCopy(self->_sources, v22, v23);
  objc_msgSend_removeObjectIdenticalTo_(v24, v25, sourceCopy);
  objc_msgSend_sortUsingComparator_(v24, v26, &unk_2884D8978);
  sources = self->_sources;
  self->_sources = v24;

LABEL_7:
}

- (id)sourceWithObjectUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = objc_msgSend_p_orderedSources(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v11)
  {
    v12 = *v23;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      v15 = objc_msgSend_objectUUID(v14, v9, v10);
      isEqual = objc_msgSend_isEqual_(v15, v16, dCopy);

      if (isEqual)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v22, v26, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = v14;

    if (v20)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v20 = objc_msgSend_defaultSource(self, v18, v19);
LABEL_12:

  return v20;
}

- (id)uniqueNameForSourceWithProposedName:(id)name
{
  v3 = objc_msgSend_p_uniqueNameForSource_proposedName_(self, a2, 0, name);

  return v3;
}

- (id)uniqueNameForSource:(id)source proposedName:(id)name
{
  v4 = objc_msgSend_p_uniqueNameForSource_proposedName_(self, a2, source, name);

  return v4;
}

- (id)p_uniqueNameForSource:(id)source proposedName:(id)name
{
  v55 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  v9 = objc_msgSend_p_orderedSources(self, v7, v8);
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_count(v9, v11, v12);
  v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
  v18 = objc_msgSend_context(self, v16, v17);
  v21 = objc_msgSend_documentRoot(v18, v19, v20);
  v24 = objc_msgSend_documentLocale(v21, v22, v23);

  v47 = v24;
  v49 = objc_msgSend_locale(v24, v25, v26);
  v28 = objc_msgSend_stringByFoldingWithOptions_locale_(nameCopy, v27, 1);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = v9;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v50, v54, 16);
  if (v33)
  {
    v46 = v9;
    isEqualToString = 0;
    v35 = *v51;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v29);
        }

        v37 = *(*(&v50 + 1) + 8 * i);
        if (!sourceCopy || v37 != sourceCopy)
        {
          v38 = objc_msgSend_name(v37, v31, v32, v46);
          v40 = v38;
          if (isEqualToString)
          {
            isEqualToString = 1;
          }

          else
          {
            v41 = objc_msgSend_stringByFoldingWithOptions_locale_(v38, v39, 1, v49);
            isEqualToString = objc_msgSend_isEqualToString_(v28, v42, v41);
          }

          objc_msgSend_addObject_(v15, v39, v40);
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v50, v54, 16);
    }

    while (v33);

    if (isEqualToString)
    {
      v43 = TSUNumberFormatterIncreaseTagFromStringWithSeparator();
      goto LABEL_18;
    }
  }

  else
  {
  }

  v43 = nameCopy;
LABEL_18:
  v44 = v43;

  return v44;
}

+ (id)localizedDefaultSourceNameForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Default Camera", @"Default Camera", @"Keynote");

  return v3;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812EA908[112]);

  if (*(v6 + 16))
  {
    v16 = *(v6 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275E54DAC;
    v24[3] = &unk_27A6997E0;
    v24[4] = self;
    v17 = unarchiverCopy;
    v18 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v24);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v7, v8);
    v9 = objc_opt_class();
    v12 = objc_msgSend_context(self, v10, v11);
    v14 = objc_msgSend_p_makeDefaultSourceWithContext_(v9, v13, v12);
    defaultSource = self->_defaultSource;
    self->_defaultSource = v14;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_275E54DC0;
  v23[3] = &unk_27A699808;
  v23[4] = self;
  v20 = unarchiverCopy;
  v21 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v20, v22, v6 + 24, v21, 0, v23);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275E5500C, off_2812EA908[112]);

  defaultSource = self->_defaultSource;
  *(v5 + 16) |= 1u;
  v8 = *(v5 + 48);
  if (!v8)
  {
    v9 = *(v5 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x277C8F050](v9);
    *(v5 + 48) = v8;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v6, defaultSource, v8);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v10, self->_sources, v5 + 24);
  v11 = sub_275E53AE0();
  objc_msgSend_setMessageVersion_(archiverCopy, v12, v11);
  v13 = sub_275E53AD0();
  objc_msgSend_requiresDocumentVersion_(archiverCopy, v14, v13);
}

@end