@interface TSTTableDataList
+ (Class)classForUnarchiver:(id)unarchiver;
+ (id)stringForListType:(int)type;
- (BOOL)containsControlCellSpecs;
- (BOOL)containsFormulas;
- (BOOL)containsRatingFormats;
- (BOOL)repairStyleDatalistStylesheetIfNecessary;
- (TSTTableDataList)initWithType:(int)type context:(id)context;
- (id).cxx_construct;
- (id)allRichTextStorages;
- (id)cellFormatForKey:(unsigned int)key;
- (id)commentStorageForKey:(unsigned int)key;
- (id)conditionalStyleSetForKey:(unsigned int)key;
- (id)controlCellSpecForKey:(unsigned int)key;
- (id)copyWithContext:(id)context;
- (id)formulaErrorForKey:(unsigned int)key;
- (id)formulaForKey:(unsigned int)key;
- (id)getRefCountsFromDataList;
- (id)importWarningSetForKey:(unsigned int)key;
- (id)listTypeString;
- (id)multipleChoiceListFormatForKey:(unsigned int)key;
- (id)p_objectForPayload:(id)payload;
- (id)p_setPayload:(id)payload atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (id)reassignCustomFormatUIDForPaste:(id)paste;
- (id)richTextForKey:(unsigned int)key;
- (id)stringForKey:(unsigned int)key;
- (id)stringForKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared;
- (id)styleForKey:(unsigned int)key;
- (id)wrappedObjectForPayload:(id)payload;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)p_objectCount;
- (unsigned)addCellFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addCommentStorage:(id)storage atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addConditionalStyleSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addControlCellSpec:(id)spec atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addFormula:(id)formula atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addFormulaError:(id)error atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addImportWarningSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addMultipleChoiceListFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addRichText:(id)text atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addString:(id)string atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addStyle:(id)style atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)p_nextAvailableKey;
- (unsigned)refCountForKey:(unsigned int)key;
- (void)dropReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify;
- (void)enumerateFormatsUsingBlock:(id)block;
- (void)enumerateKeysAndCountsUsingBlock:(id)block;
- (void)enumerateLegacyCustomFormatsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addInitialSegment;
- (void)p_clearReverseMapForObject:(id)object atKey:(unsigned int)key;
- (void)p_replaceCustomFormatsWithBlock:(id)block;
- (void)p_replaceObjectAtKey:(unsigned int)key withObject:(id)object;
- (void)p_setObject:(id)object atKey:(unsigned int)key updateReverseMap:(BOOL)map;
- (void)p_setupWithType:(int)type nextKeyID:(unsigned int)d;
- (void)removeObjectForKey:(unsigned int)key;
- (void)replaceCommentStoragesUsingBlock:(id)block;
- (void)replaceConditionalStyleSetsUsingBlock:(id)block;
- (void)replaceFormatsUsingBlock:(id)block;
- (void)replaceFormulaErrorsUsingBlock:(id)block;
- (void)replaceFormulasUsingBlock:(id)block;
- (void)replaceRichTextUsingBlock:(id)block;
- (void)replaceStylesUsingBlock:(id)block;
- (void)saveToArchiver:(id)archiver;
- (void)setIsNewForBraveNewCell:(BOOL)cell;
- (void)setRichTextParentInfo:(id)info;
- (void)takeReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify;
- (void)updateCustomFormatsAtKey:(id)key;
- (void)upgradeCellFormatsU2_0;
- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d;
@end

@implementation TSTTableDataList

- (void)setRichTextParentInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (objc_msgSend_listType(self, v5, v6, v7, v8) != 8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableDataList setRichTextParentInfo:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 92, 0, "The richTextParentInfo only applied to the Rich Text Payload datalist.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (self->_richTextParentInfo != infoCopy)
  {
    self->_richTextParentInfo = infoCopy;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = objc_msgSend_allRichTextStorages(self, v9, v10, v11, v12, 0);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v36, 16);
    if (v29)
    {
      v30 = *v33;
      do
      {
        v31 = 0;
        do
        {
          if (*v33 != v30)
          {
            objc_enumerationMutation(v24);
          }

          objc_msgSend_setParentInfo_(*(*(&v32 + 1) + 8 * v31++), v26, self->_richTextParentInfo, v27, v28);
        }

        while (v29 != v31);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v32, v36, 16);
      }

      while (v29);
    }
  }
}

- (void)setIsNewForBraveNewCell:(BOOL)cell
{
  if (self->_isNewForBraveNewCell != cell)
  {
    objc_msgSend_willModify(self, a2, cell, v3, v4);
    self->_isNewForBraveNewCell = cell;
  }
}

- (void)p_addInitialSegment
{
  v3 = [TSTTableDataListSegment alloc];
  listType = self->_listType;
  v9 = objc_msgSend_context(self, v5, v6, v7, v8);
  v16 = objc_msgSend_initWithType_keyRange_context_(v3, v10, listType, 1, 4294967294, v9);

  v14 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v11, v16, v12, v13);
  segments = self->_segments;
  self->_segments = v14;

  self->_cachedSegment = v16;
}

- (void)p_setupWithType:(int)type nextKeyID:(unsigned int)d
{
  self->_listType = type;
  self->_nextID = d;
  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], a2, 1, 0xFFFFFFFFLL, v4);
  unusedKeySet = self->_unusedKeySet;
  self->_unusedKeySet = v6;

  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  segments = self->_segments;
  self->_segments = v12;

  self->_useReverseMap = objc_msgSend_p_shouldUseReverseMap(self, v14, v15, v16, v17);
}

- (TSTTableDataList)initWithType:(int)type context:(id)context
{
  v4 = *&type;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = TSTTableDataList;
  v7 = [(TSTTableDataList *)&v16 initWithContext:contextCopy];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_p_setupWithType_nextKeyID_(v7, v8, v4, 1, v9);
    objc_msgSend_p_addInitialSegment(v10, v11, v12, v13, v14);
  }

  return v10;
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[38], v6, v7);

  if (*(v8 + 80) == 6)
  {
    self = objc_opt_class();
  }

  selfCopy = self;

  return self;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[38], v6, v7);

  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v9, v10, v11, v12) <= 0x4000100000005)
  {
    objc_msgSend_willModifyForUpgrade(self, v13, v14, v15, v16);
  }

  objc_msgSend_p_setupWithType_nextKeyID_(self, v13, *(v8 + 80), *(v8 + 72), v16);
  if ((*(v8 + 16) & 2) != 0)
  {
    self->_isNewForBraveNewCell = *(v8 + 76);
  }

  else if (objc_msgSend_fileFormatVersion(unarchiverCopy, v17, v18, v19, v20) <= 0xC000200000000 && objc_msgSend_messageVersion(unarchiverCopy, v21, v22, v23, v24) == 0x300020000000ALL)
  {
    listType = self->_listType;
    if (listType == 12 || listType == 2)
    {
      objc_msgSend_willModifyForUpgrade(self, v25, v26, v27, v28);
      objc_msgSend_setIsNewForBraveNewCell_(self, v30, 1, v31, v32);
    }
  }

  if (*(v8 + 56) < 1)
  {
    v40 = [TSTTableDataListSegment alloc];
    v41 = self->_listType;
    v46 = objc_msgSend_context(self, v42, v43, v44, v45);
    v48 = objc_msgSend_initWithType_keyRange_context_(v40, v47, v41, 1, 4294967294, v46);

    objc_msgSend_loadObjectsFromDataListArchive_unarchiver_(v48, v49, v8, unarchiverCopy, v50);
    v54 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v51, v48, v52, v53);
    segments = self->_segments;
    self->_segments = v54;

    self->_cachedSegment = v48;
  }

  else
  {
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2211708CC;
    v68[3] = &unk_27845D8D8;
    v68[4] = self;
    v33 = unarchiverCopy;
    v34 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v33, v35, v8 + 48, v34, 0, v68);
  }

  if (self->_listType == 2)
  {
    v56 = objc_msgSend_fileFormatVersion(unarchiverCopy, v36, v37, v38, v39);
    v57 = UnsafePointer();
    v62 = objc_msgSend_isFromCopy(unarchiverCopy, v58, v59, v60, v61);
    v63 = v56 < v57;
    v64 = v62 ^ 1;
  }

  else
  {
    v64 = 0;
    v63 = 0;
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_221170984;
  v65[3] = &unk_27845FF68;
  v65[4] = self;
  v66 = v64;
  v67 = v63;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v36, v65, v38, v39);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  if (objc_msgSend_isNewForBraveNewCell(self, v5, v6, v7, v8))
  {
    objc_msgSend_setMessageVersion_(archiverCopy, v9, 0x300020000000ALL, v10, v11);
  }

  v36 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v14 = objc_msgSend_messageWithNewFunction_descriptor_(v36, v12, sub_2211778D4, off_2812E4498[38], v13);

  if (objc_msgSend_isNewForBraveNewCell(self, v15, v16, v17, v18))
  {
    isNewForBraveNewCell = self->_isNewForBraveNewCell;
    v24 = *(v14 + 16) | 2;
    *(v14 + 16) = v24;
    *(v14 + 76) = isNewForBraveNewCell;
  }

  else
  {
    v24 = *(v14 + 16);
  }

  listType = self->_listType;
  *(v14 + 16) = v24 | 4;
  *(v14 + 80) = listType;
  nextID = self->_nextID;
  *(v14 + 16) = v24 | 5;
  *(v14 + 72) = nextID;
  if (objc_msgSend_count(self->_segments, v19, v20, v21, v22) < 2)
  {
    v33 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v27, 0, v28, v29);
    objc_msgSend_encodeObjectsToDataListArchive_archiver_(v33, v34, v14, v36, v35);
  }

  else
  {
    objc_msgSend_setStrongReferenceArray_message_(v36, v27, self->_segments, v14 + 48, v29);
    objc_msgSend_requiresDocumentVersion_(v36, v30, 0x4000100000000, v31, v32);
  }
}

- (unint64_t)archivingCompatibilityVersion
{
  if (objc_msgSend_count(self->_segments, a2, v2, v3, v4) <= 1)
  {
    return 0x300020000000ALL;
  }

  else
  {
    return 0x4000100000000;
  }
}

- (void)p_setObject:(id)object atKey:(unsigned int)key updateReverseMap:(BOOL)map
{
  mapCopy = map;
  v6 = *&key;
  objectCopy = object;
  cachedSegment = self->_cachedSegment;
  if (!cachedSegment)
  {
    cachedSegment = sub_221171338(self, key);
  }

  objc_msgSend_setObject_atIndexedSubscript_(cachedSegment, a2, object, v6, map);
  if (objc_msgSend_shouldSplit(cachedSegment, v10, v11, v12, v13))
  {
    v21 = objc_msgSend_split(cachedSegment, v14, v15, v16, v17);
    if (v21)
    {
      v22 = objc_msgSend_indexOfObject_(self->_segments, v18, cachedSegment, v19, v20);
      objc_msgSend_insertObject_atIndex_(self->_segments, v23, v21, v22 + 1, v24);
      self->_cachedSegment = 0;
    }
  }

  if (mapCopy && self->_useReverseMap)
  {
    v26 = objc_msgSend_payload(object, v14, v15, v16, v17);
    sub_221177940(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, &v26, &v26, &objectCopy, v25);
  }

  objc_msgSend_removeIndex_(self->_unusedKeySet, v14, v6, v16, v17);
  if (self->_nextID <= v6)
  {
    self->_nextID = v6 + 1;
  }
}

- (void)p_clearReverseMapForObject:(id)object atKey:(unsigned int)key
{
  v15 = objc_msgSend_payload(object, a2, object, *&key, v4);
  v10 = sub_221177BBC(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, &v15, v7, v8, v9);

  if (v10)
  {
    if (objc_msgSend_key(v10[3], v11, v12, v13, v14) == key)
    {
      sub_221177CB8(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, v10);
    }
  }
}

- (unsigned)p_nextAvailableKey
{
  Index = objc_msgSend_firstIndex(self->_unusedKeySet, a2, v2, v3, v4);
  if (HIDWORD(Index))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList p_nextAvailableKey]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 405, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    LODWORD(Index) = -1;
  }

  return Index;
}

- (unint64_t)p_objectCount
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_cachedSegment)
  {
    cachedSegment = self->_cachedSegment;

    return objc_msgSend_count(cachedSegment, a2, v2, v3, v4);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_segments;
    v9 = 0;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
    if (v14)
    {
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v9 += objc_msgSend_count(*(*(&v17 + 1) + 8 * v16++), v10, v11, v12, v13, v17);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
      }

      while (v14);
    }

    return v9;
  }
}

- (id)wrappedObjectForPayload:(id)payload
{
  v7 = objc_msgSend_listType(self, a2, payload, v3, v4);
  if (v7 > 6)
  {
    if (v7 > 9)
    {
      switch(v7)
      {
        case 10:
          objc_opt_class();
          v11 = TSUDynamicCast();
          if (v11)
          {
            v39 = [TSTTableDataCommentStorage alloc];
            inited = objc_msgSend_initObjectWithCommentStorage_refCount_(v39, v40, v11, 1, v41);
            goto LABEL_39;
          }

          break;
        case 11:
          objc_opt_class();
          v11 = TSUDynamicCast();
          if (v11)
          {
            v71 = [TSTTableDataImportWarningSet alloc];
            inited = objc_msgSend_initObjectWithImportWarningSet_refCount_(v71, v72, v11, 1, v73);
            goto LABEL_39;
          }

          break;
        case 12:
          objc_opt_class();
          v11 = TSUDynamicCast();
          if (v11)
          {
            goto LABEL_7;
          }

          break;
        default:
          goto LABEL_42;
      }
    }

    else if (v7 == 7)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        v33 = [TSTTableDataMultipleChoiceList alloc];
        inited = objc_msgSend_initObjectWithPopUpMenuModel_refCount_(v33, v34, v11, 1, v35);
        goto LABEL_39;
      }
    }

    else if (v7 == 8)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        richTextParentInfo = self->_richTextParentInfo;
        if (!richTextParentInfo)
        {
          v49 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTTableDataList wrappedObjectForPayload:]", v46, v47);
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v52, v53);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 479, 0, "invalid nil value for '%{public}s'", "_richTextParentInfo");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
          richTextParentInfo = self->_richTextParentInfo;
        }

        objc_msgSend_setParentInfo_(v11, v45, richTextParentInfo, v46, v47);
        v60 = [TSTTableDataRichText alloc];
        v64 = objc_msgSend_payloadWithStorage_(TSTRichTextPayload, v61, v11, v62, v63);
        v67 = objc_msgSend_initObjectWithRichTextPayload_refCount_(v60, v65, v64, 1, v66);

LABEL_41:
        if (v67)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }
    }

    else
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        v16 = [TSTTableDataConditionalStyleSet alloc];
        inited = objc_msgSend_initObjectWithConditionalStyleSet_refCount_(v16, v17, v11, 1, v18);
        goto LABEL_39;
      }
    }

    goto LABEL_40;
  }

  if (v7 > 3)
  {
    if (v7 == 4)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        v36 = [TSTTableDataStyle alloc];
        inited = objc_msgSend_initObjectWithStyle_refCount_(v36, v37, v11, 1, v38);
        goto LABEL_39;
      }
    }

    else
    {
      if (v7 != 5)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataList wrappedObjectForPayload:]", v9, v10);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v22, v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 465, 0, "Custom Format datalists are obsolete and should never be added to!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
        goto LABEL_42;
      }

      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        v68 = [TSTTableDataFormulaError alloc];
        inited = objc_msgSend_initObjectWithFormulaError_refCount_(v68, v69, v11, 1, v70);
        goto LABEL_39;
      }
    }

LABEL_40:
    v67 = 0;
    goto LABEL_41;
  }

  switch(v7)
  {
    case 1:
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        v30 = [TSTTableDataString alloc];
        inited = objc_msgSend_initObjectWithString_refCount_(v30, v31, v11, 1, v32);
        goto LABEL_39;
      }

      goto LABEL_40;
    case 2:
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
        v42 = [TSTTableDataFormat alloc];
        inited = objc_msgSend_initObjectWithFormat_refCount_(v42, v43, v11, 1, v44);
        goto LABEL_39;
      }

      goto LABEL_40;
    case 3:
      objc_opt_class();
      v11 = TSUDynamicCast();
      if (v11)
      {
LABEL_7:
        v12 = [TSTTableDataCellSpec alloc];
        inited = objc_msgSend_initObjectWithCellSpec_refCount_(v12, v13, v11, 1, v14);
LABEL_39:
        v67 = inited;
        goto LABEL_41;
      }

      goto LABEL_40;
  }

LABEL_42:
  v74 = MEMORY[0x277D81150];
  v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataList wrappedObjectForPayload:]", v9, v10);
  v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v77, v78);
  if (payload)
  {
    v84 = objc_opt_class();
    v85 = NSStringFromClass(v84);
  }

  else
  {
    v85 = @"<nil>";
  }

  v86 = objc_msgSend_listTypeString(self, v79, v80, v81, v82);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v87, v75, v83, 518, 0, "Nil object for %{public}@ payload in %{public}@ datalist!", v85, v86);

  if (payload)
  {
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
  v67 = 0;
LABEL_48:

  return v67;
}

- (id)p_objectForPayload:(id)payload
{
  payloadCopy = payload;
  if (self->_useReverseMap)
  {
    v5 = sub_221177BBC(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, &payloadCopy, payload, v3, v4);
    if (v5)
    {
      v5 = v5[3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)p_setPayload:(id)payload atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  modifyCopy = modify;
  AvailableKey = *&key;
  v9 = objc_msgSend_p_objectForPayload_(self, a2, payload, *&key, modify);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_key(v9, v10, v11, v12, v13);
    if (v15)
    {
      v16 = 0;
      AvailableKey = v15;
      goto LABEL_12;
    }
  }

  if (AvailableKey)
  {
    if (self->_useReverseMap)
    {
      if (objc_msgSend_containsIndex_(self->_unusedKeySet, v10, AvailableKey, v12, v13))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = sub_221172150(self, AvailableKey, v11, v12, v13);

      v21 = objc_msgSend_payload(v14, v17, v18, v19, v20);
      IsEqual = objc_msgSend_tst_dataObjectIsEqual_(payload, v22, v21, v23, v24);

      if (IsEqual)
      {
        v16 = 0;
        goto LABEL_12;
      }
    }
  }

  AvailableKey = objc_msgSend_p_nextAvailableKey(self, v10, v11, v12, v13);
LABEL_11:
  v16 = 1;
LABEL_12:
  if (modifyCopy)
  {
    objc_msgSend_willModify(self, v10, v11, v12, v13);
  }

  if (v16)
  {
    v14 = objc_msgSend_wrappedObjectForPayload_(self, v10, payload, v12, v13);
    objc_msgSend_p_setObject_atKey_updateReverseMap_(self, v26, v14, AvailableKey, 1);
  }

  else
  {
    if (!v14)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataList p_setPayload:atSuggestedKey:callWillModify:]", v12, v13);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v30, v31);
      v37 = objc_msgSend_listTypeString(self, v33, v34, v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v38, v28, v32, 575, 0, "No object with key %u in %{public}@ datalist!", AvailableKey, v37);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    }

    objc_msgSend_takeReference(v14, v10, v11, v12, v13);
  }

  return v14;
}

- (void)p_replaceObjectAtKey:(unsigned int)key withObject:(id)object
{
  v6 = *&key;
  objc_msgSend_removeObjectForKey_(self, a2, *&key, object, v4);
  v23 = objc_msgSend_payload(object, v8, v9, v10, v11);
  v16 = objc_msgSend_refCount(object, v12, v13, v14, v15);
  v18 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, v17, v23, v6, 1);
  v22 = v18;
  if (v16 >= 2)
  {
    objc_msgSend_takeReferences_(v18, v19, v16 - 1, v20, v21);
  }
}

- (void)removeObjectForKey:(unsigned int)key
{
  v5 = *&key;
  v27 = sub_221172150(self, *&key, *&key, v3, v4);
  if (v27)
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    objc_opt_class();
    v11 = TSUDynamicCast();
    v16 = v11;
    if (v11)
    {
      v17 = objc_msgSend_richTextStorage(v11, v12, v13, v14, v15);
      objc_msgSend_setParentInfo_(v17, v18, 0, v19, v20);
    }

    cachedSegment = self->_cachedSegment;
    if (!cachedSegment)
    {
      cachedSegment = sub_221171338(self, v5);
    }

    objc_msgSend_setObject_atIndexedSubscript_(cachedSegment, v12, 0, v5, v15);
    objc_msgSend_addIndex_(self->_unusedKeySet, v22, v5, v23, v24);
    if (self->_useReverseMap)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(self, v25, v27, v5, v26);
    }
  }
}

- (void)enumerateFormatsUsingBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_listType == 2)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = self->_segments;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v32, v40, 16);
    if (v10)
    {
      v11 = *v33;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_22117272C;
        v29[3] = &unk_27845FF90;
        v30 = blockCopy;
        v31 = &v36;
        objc_msgSend_enumerateObjectsWithBlock_(v13, v14, v29, v15, v16);
        LOBYTE(v13) = *(v37 + 24);

        if (v13)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v17, &v32, v40, 16);
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableDataList enumerateFormatsUsingBlock:]", v5, v6);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 663, 0, "Can't enumerate formats on a non-format list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }
}

- (void)enumerateLegacyCustomFormatsUsingBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_listType == 6)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = self->_segments;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v32, v40, 16);
    if (v10)
    {
      v11 = *v33;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_221172A90;
        v29[3] = &unk_27845FF90;
        v30 = blockCopy;
        v31 = &v36;
        objc_msgSend_enumerateObjectsWithBlock_(v13, v14, v29, v15, v16);
        LOBYTE(v13) = *(v37 + 24);

        if (v13)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v17, &v32, v40, 16);
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableDataList enumerateLegacyCustomFormatsUsingBlock:]", v5, v6);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 684, 0, "Can't enumerate custom formats on a non-custom format list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }
}

- (void)enumerateKeysAndCountsUsingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_segments;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v26, 16);
  if (v7)
  {
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_221172D50;
      v15[3] = &unk_27845FF90;
      v16 = blockCopy;
      v17 = &v22;
      objc_msgSend_enumerateObjectsWithBlock_(v10, v11, v15, v12, v13);
      LOBYTE(v10) = *(v23 + 24);

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v18, v26, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)replaceFormulasUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 3)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceFormulasUsingBlock:]", v8, v9, "[TSTTableDataList replaceFormulasUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 721);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 721, 1, "Expected formula list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221172FB8;
  v16[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v17 = v5;
  v18 = v19;
  v16[4] = self;
  sub_221170F5C(self, v16);

  _Block_object_dispose(v19, 8);
}

- (void)replaceConditionalStyleSetsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 9)
  {
    TSUSetCrashReporterInfo();
    v7 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataList replaceConditionalStyleSetsUsingBlock:]", v9, v10, "[TSTTableDataList replaceConditionalStyleSetsUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 757);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v11, v15, 757, 1, "Expected conditional style list type.");

    TSUCrashBreakpoint();
    abort();
  }

  useReverseMap = self->_useReverseMap;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221173404;
  v17[3] = &unk_27845FFE0;
  v6 = blockCopy;
  v18 = v6;
  v19 = v21;
  v17[4] = self;
  v20 = useReverseMap;
  sub_221170F5C(self, v17);

  _Block_object_dispose(v21, 8);
}

- (void)replaceCommentStoragesUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 10)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceCommentStoragesUsingBlock:]", v8, v9, "[TSTTableDataList replaceCommentStoragesUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 791);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 791, 1, "Expected comment type.");

    TSUCrashBreakpoint();
    abort();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221173750;
  v16[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v17 = v5;
  v18 = v19;
  v16[4] = self;
  sub_221170F5C(self, v16);

  _Block_object_dispose(v19, 8);
}

- (void)replaceStylesUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 4)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceStylesUsingBlock:]", v8, v9, "[TSTTableDataList replaceStylesUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 823);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 823, 1, "Expected style list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221173A80;
  v16[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v17 = v5;
  v18 = v19;
  v16[4] = self;
  sub_221170F5C(self, v16);

  _Block_object_dispose(v19, 8);
}

- (void)replaceFormulaErrorsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 5)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceFormulaErrorsUsingBlock:]", v8, v9, "[TSTTableDataList replaceFormulaErrorsUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 855);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 855, 1, "Expected formula error list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221173DB4;
  v16[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v17 = v5;
  v18 = v19;
  v16[4] = self;
  sub_221170F5C(self, v16);

  _Block_object_dispose(v19, 8);
}

- (void)replaceRichTextUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 8)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceRichTextUsingBlock:]", v8, v9, "[TSTTableDataList replaceRichTextUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 887);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 887, 1, "Expected rich list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2211740E8;
  v16[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v17 = v5;
  v18 = v19;
  v16[4] = self;
  sub_221170F5C(self, v16);

  _Block_object_dispose(v19, 8);
}

- (void)replaceFormatsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 2)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceFormatsUsingBlock:]", v8, v9, "[TSTTableDataList replaceFormatsUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 919);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 919, 1, "Expected rich list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221174444;
  v16[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v17 = v5;
  v18 = v19;
  v16[4] = self;
  sub_221170F5C(self, v16);

  _Block_object_dispose(v19, 8);
}

- (BOOL)repairStyleDatalistStylesheetIfNecessary
{
  useReverseMap = self->_useReverseMap;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v12 = objc_msgSend_stylesheet(v7, v8, v9, v10, v11);

  if (self->_listType == 4)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_221174770;
    v21[4] = sub_221174780;
    v22 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221174788;
    v15[3] = &unk_278460008;
    v16 = v12;
    selfCopy = self;
    v20 = useReverseMap;
    v18 = v21;
    v19 = &v23;
    sub_221170F5C(self, v15);

    _Block_object_dispose(v21, 8);
  }

  v13 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v13;
}

- (unsigned)refCountForKey:(unsigned int)key
{
  v5 = sub_221172150(self, *&key, *&key, v3, v4);
  if (v5)
  {

    LODWORD(v5) = objc_msgSend_refCount(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (void)takeReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify
{
  modifyCopy = modify;
  v6 = *&key;
  v7 = *&references;
  v9 = sub_221172150(self, *&key, *&references, *&key, modify);
  if (v9)
  {
    v13 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableDataList takeReferences:forKey:callWillModify:]", v16, v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 1013, 0, "Cannot add reference for custom format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    if (modifyCopy)
    {
      objc_msgSend_willModify(self, v14, v15, v16, v17);
    }

    objc_msgSend_takeReferences_(v13, v14, v7, v16, v17);
  }

  else
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataList takeReferences:forKey:callWillModify:]", v11, v12);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v32, v33);
    v39 = objc_msgSend_listTypeString(self, v35, v36, v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v40, v30, v34, 1020, 0, "No object with key %u in %{public}@ datalist!", v6, v39);

    v45 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v45, v41, v42, v43, v44);
  }
}

- (void)dropReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = *&key;
  v6 = *&references;
  v8 = sub_221172150(self, *&key, *&references, *&key, modify);
  if (v8)
  {
    v13 = v8;
    objc_msgSend_willModify(self, v9, v10, v11, v12);
    if (objc_msgSend_dropReferences_(v13, v14, v6, v15, v16))
    {

      objc_msgSend_removeObjectForKey_(self, v17, v5, v18, v19);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTTableDataList dropReferences:forKey:callWillModify:]", v21, v22);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v26, v27);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 1037, 0, "custom format should not have more than one reference");

        v34 = MEMORY[0x277D81150];

        objc_msgSend_logBacktraceThrottled(v34, v30, v31, v32, v33);
      }
    }
  }
}

+ (id)stringForListType:(int)type
{
  if ((type - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_278460160[type - 1];
  }
}

- (id)listTypeString
{
  v3 = objc_opt_class();
  listType = self->_listType;

  return MEMORY[0x2821F9670](v3, sel_stringForListType_, listType, v4, v5);
}

- (id)copyWithContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithContext_(v5, v6, contextCopy, v7, v8);
  objc_msgSend_p_setupWithType_nextKeyID_(v9, v10, self->_listType, self->_nextID, v11);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = self->_segments;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v34, v38, 16);
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(v9 + 64);
        v21 = objc_msgSend_copyWithContext_(*(*(&v34 + 1) + 8 * i), v14, contextCopy, v15, v16);
        objc_msgSend_addObject_(v20, v22, v21, v23, v24);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v34, v38, 16);
    }

    while (v17);
  }

  if (self->_useReverseMap)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_221175048;
    v32[3] = &unk_278460030;
    v33 = v9;
    sub_221170F5C(v33, v32);
  }

  *(v9 + 128) = self->_nextID;
  v29 = objc_msgSend_mutableCopy(self->_unusedKeySet, v25, v26, v27, v28);
  v30 = *(v9 + 112);
  *(v9 + 112) = v29;

  return v9;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

- (id)allRichTextStorages
{
  if (objc_msgSend_listType(self, a2, v2, v3, v4) != 8)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) allRichTextStorages]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1186, 0, "API is intended for kTSTTableDataListTypeRichText lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7, v8, v9);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22117536C;
  v24[3] = &unk_278460030;
  v22 = v21;
  v25 = v22;
  sub_221170F5C(self, v24);

  return v22;
}

- (BOOL)containsControlCellSpecs
{
  if (objc_msgSend_listType(self, a2, v2, v3, v4) != 12)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) containsControlCellSpecs]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1202, 0, "API is intended for kTSTTableDataListTypeFormat lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return objc_msgSend_count(self, v6, v7, v8, v9) != 0;
}

- (BOOL)containsFormulas
{
  if (objc_msgSend_listType(self, a2, v2, v3, v4) != 3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) containsFormulas]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1208, 0, "API is intended for kTSTTableDataListTypeCellSpec lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return objc_msgSend_count(self, v6, v7, v8, v9) != 0;
}

- (BOOL)containsRatingFormats
{
  if (objc_msgSend_listType(self, a2, v2, v3, v4) != 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) containsRatingFormats]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1214, 0, "API is intended for kTSTTableDataListTypeFormat lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22117587C;
  v22[3] = &unk_278460058;
  v22[4] = &v23;
  sub_221170F5C(self, v22);
  v20 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);
  return v20;
}

- (void)p_replaceCustomFormatsWithBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_mightHaveCustomFormats(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211759C0;
    v12[3] = &unk_278460080;
    v13 = blockCopy;
    objc_msgSend_replaceFormatsUsingBlock_(self, v9, v12, v10, v11);
  }
}

- (void)updateCustomFormatsAtKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_documentRoot(self, v5, v6, v7, v8);
  v14 = objc_msgSend_customFormatList(v9, v10, v11, v12, v13);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_221175B68;
  v20[3] = &unk_2784600A8;
  v15 = keyCopy;
  v21 = v15;
  v22 = v14;
  v16 = v14;
  objc_msgSend_p_replaceCustomFormatsWithBlock_(self, v17, v20, v18, v19);
}

- (unsigned)addCellFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  modifyCopy = modify;
  v6 = *&key;
  v9 = objc_msgSend_asCustomFormatWrapper(format, a2, format, *&key, modify);

  if (v9)
  {
    self->_mightHaveCustomFormats = 1;
  }

  v11 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, v10, format, v6, modifyCopy);

  return objc_msgSend_key(v11, v12, v13, v14, v15);
}

- (unsigned)addCommentStorage:(id)storage atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, storage, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addConditionalStyleSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, set, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addFormula:(id)formula atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, formula, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addControlCellSpec:(id)spec atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, spec, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addFormulaError:(id)error atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, error, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addImportWarningSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, set, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addMultipleChoiceListFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, format, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addRichText:(id)text atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, text, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addString:(id)string atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, string, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (unsigned)addStyle:(id)style atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, style, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8, v9);
}

- (id)cellFormatForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) cellFormatForKey:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1327, 0, "Can only store formats in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  objc_opt_class();
  v24 = sub_2211723D4(self, v5, v21, v22, v23);
  v25 = TSUDynamicCast();

  return v25;
}

- (id)commentStorageForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) commentStorageForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1335, 0, "Can only store cell comment storage objects in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_commentStorage(v22, v23, v24, v25, v26);

  return v27;
}

- (id)conditionalStyleSetForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 9)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) conditionalStyleSetForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1342, 0, "Can only store conditional styles in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_conditionalStyleSet(v22, v23, v24, v25, v26);

  return v27;
}

- (id)formulaForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) formulaForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1349, 0, "Can only store formulas in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_cellSpec(v22, v23, v24, v25, v26);

  return v27;
}

- (id)controlCellSpecForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 12)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) controlCellSpecForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1356, 0, "Can only store controls in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_cellSpec(v22, v23, v24, v25, v26);

  return v27;
}

- (id)formulaErrorForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) formulaErrorForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1363, 0, "Can only store formulaErrors in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_formulaError(v22, v23, v24, v25, v26);

  return v27;
}

- (id)importWarningSetForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 11)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) importWarningSetForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1370, 0, "Can only store import warning set objects in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_importWarningSet(v22, v23, v24, v25, v26);

  return v27;
}

- (id)multipleChoiceListFormatForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) multipleChoiceListFormatForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1377, 0, "Can only store pop up menu model in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_popUpMenuModel(v22, v23, v24, v25, v26);

  return v27;
}

- (id)richTextForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) richTextForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1384, 0, "Can only store text storages in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_richTextStorage(v22, v23, v24, v25, v26);

  return v27;
}

- (id)stringForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) stringForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1391, 0, "Can only store strings in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_string(v22, v23, v24, v25, v26);

  return v27;
}

- (id)stringForKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared
{
  v7 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, wrap, shared) != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableDataList(Type_Specific_API) stringForKey:outShouldWrap:outIsShared:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1398, 0, "Can only store strings in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = sub_221172150(self, v7, v10, v11, v12);
  v33 = objc_msgSend_string(v24, v25, v26, v27, v28);
  if (wrap)
  {
    *wrap = objc_msgSend_shouldWrap(v24, v29, v30, v31, v32);
  }

  if (shared)
  {
    *shared = objc_msgSend_refCount(v24, v29, v30, v31, v32) > 1;
  }

  return v33;
}

- (id)styleForKey:(unsigned int)key
{
  v5 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3, v4) != 4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList(Type_Specific_API) styleForKey:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1412, 0, "Can only store styles in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = sub_221172150(self, v5, v8, v9, v10);
  v27 = objc_msgSend_style(v22, v23, v24, v25, v26);

  return v27;
}

- (void)upgradeCellFormatsU2_0
{
  v69 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_listType(self, a2, v2, v3, v4) == 2)
  {
    objc_opt_class();
    v13 = objc_msgSend_context(self, v9, v10, v11, v12);
    v18 = objc_msgSend_documentObject(v13, v14, v15, v16, v17);
    v19 = TSUCheckedDynamicCast();

    v24 = objc_msgSend_customFormatList(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2020000000;
    v67 = 0;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_221176E94;
    v61[3] = &unk_2784600D0;
    v65 = v66;
    v30 = v24;
    v62 = v30;
    selfCopy = self;
    v31 = v29;
    v64 = v31;
    sub_221170F5C(self, v61);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v32 = v31;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v57, v68, 16);
    if (v38)
    {
      v39 = *v58;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v58 != v39)
          {
            objc_enumerationMutation(v32);
          }

          v41 = *(*(&v57 + 1) + 8 * i);
          v42 = objc_msgSend_key(v41, v34, v35, v36, v37, v57);
          objc_msgSend_p_replaceObjectAtKey_withObject_(self, v43, v42, v41, v44);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v57, v68, 16);
      }

      while (v38);
    }

    _Block_object_dispose(v66, 8);
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Upgrade) upgradeCellFormatsU2_0]", v7, v8);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v48, v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 1430, 0, "This upgrade code is only for the Format list.");

    v56 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v56, v52, v53, v54, v55);
  }
}

- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d
{
  if (self->_listType == 9)
  {
    if (objc_msgSend_count(self, a2, d, v3, v4))
    {
      objc_msgSend_willModifyForUpgrade(self, v7, v8, v9, v10);
      v27 = *d;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_22117728C;
      v26[3] = &unk_2784600F0;
      v26[4] = 0;
      objc_msgSend_replaceConditionalStyleSetsUsingBlock_(self, v11, v26, v12, v13);
    }
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataList(Upgrade) upgradeConditionalStylesToLinkedRefWithTableUID:]", v3, v4);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 1476, 0, "This upgrade is for conditional style only.");

    v25 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v25, v21, v22, v23, v24);
  }
}

- (id)reassignCustomFormatUIDForPaste:(id)paste
{
  pasteCopy = paste;
  if (!pasteCopy)
  {
    pasteCopy = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22117738C;
  v14[3] = &unk_278460118;
  v9 = pasteCopy;
  v15 = v9;
  objc_msgSend_p_replaceCustomFormatsWithBlock_(self, v10, v14, v11, v12);

  return v9;
}

- (id)getRefCountsFromDataList
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221174770;
  v13 = sub_221174780;
  v14 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211775DC;
  v8[3] = &unk_278460140;
  v8[4] = &v9;
  objc_msgSend_enumerateKeysAndCountsUsingBlock_(self, v3, v8, v4, v5);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end