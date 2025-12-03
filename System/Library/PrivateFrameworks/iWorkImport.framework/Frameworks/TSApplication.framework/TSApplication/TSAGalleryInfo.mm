@interface TSAGalleryInfo
+ (BOOL)p_stylesAreEqualForOutgoingStorage:(id)storage incomingStorage:(id)incomingStorage;
+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver;
+ (id)defaultGalleryCaptionParagraphStyleInStylesheet:(id)stylesheet;
+ (id)i_newCaptionStorageWithContext:(id)context;
+ (id)p_overrideCaptionParagraphStyleIdentifier;
+ (id)p_paragraphStyleWithLocalizedNameKey:(id)key inStylesheet:(id)stylesheet;
- (BOOL)canCopyData;
- (BOOL)needsDownload;
- (BOOL)supportsHyperlinks;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (NSArray)childInfos;
- (TSAGalleryInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSAGalleryInfo)initWithContext:(id)context geometry:(id)geometry captionStorage:(id)storage;
- (id)animationFilters;
- (id)captionTextStoragesContainingUserText;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)typeName;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style animationFilter:(id)filter;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)insertContainedModel:(id)model atIndex:(unint64_t)index;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveModel:(id)model toIndex:(unint64_t)index;
- (void)processSelectedStoragesWithStatisticsController:(id)controller;
- (void)removeContainedModel:(id)model;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setCaptionMode:(int64_t)mode;
- (void)setCaptionStorage:(id)storage;
- (void)setItems:(id)items;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSAGalleryInfo

- (void)setCaptionMode:(int64_t)mode
{
  if (self->_captionMode != mode)
  {
    objc_msgSend_willModify(self, a2, mode, v3);
    self->_captionMode = mode;
  }
}

- (void)setCaptionStorage:(id)storage
{
  storageCopy = storage;
  if (self->_captionStorage != storageCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_captionStorage, storage);
  }
}

- (TSAGalleryInfo)initWithContext:(id)context geometry:(id)geometry
{
  contextCopy = context;
  geometryCopy = geometry;
  v19.receiver = self;
  v19.super_class = TSAGalleryInfo;
  v8 = [(TSAGalleryInfo *)&v19 initWithContext:contextCopy geometry:geometryCopy];
  v9 = v8;
  if (v8)
  {
    items = v8->_items;
    v8->_items = MEMORY[0x277CBEBF8];

    v11 = objc_opt_class();
    v14 = objc_msgSend_i_newCaptionStorageWithContext_(v11, v12, contextCopy, v13);
    captionStorage = v9->_captionStorage;
    v9->_captionStorage = v14;

    objc_msgSend_setParentInfo_(v9->_captionStorage, v16, v9, v17);
  }

  return v9;
}

- (TSAGalleryInfo)initWithContext:(id)context geometry:(id)geometry captionStorage:(id)storage
{
  contextCopy = context;
  geometryCopy = geometry;
  storageCopy = storage;
  v20.receiver = self;
  v20.super_class = TSAGalleryInfo;
  v11 = [(TSAGalleryInfo *)&v20 initWithContext:contextCopy geometry:geometryCopy];
  v12 = v11;
  if (v11)
  {
    items = v11->_items;
    v11->_items = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v12->_captionStorage, storage);
    v14 = objc_opt_class();
    objc_msgSend_i_configureCaptionStorage_(v14, v15, v12->_captionStorage, v16);
    objc_msgSend_setParentInfo_(v12->_captionStorage, v17, v12, v18);
  }

  return v12;
}

- (void)setItems:(id)items
{
  v129 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  items = self->_items;
  if (items != itemsCopy)
  {
    v104 = itemsCopy;
    isEqualToArray = objc_msgSend_isEqualToArray_(items, v4, itemsCopy, v6);
    itemsCopy = v104;
    if ((isEqualToArray & 1) == 0)
    {
      objc_msgSend_willModify(self, v9, v104, v10);
      objc_msgSend_willChangeProperty_(self, v11, 514, v12);
      if (self->_isInDocument)
      {
        v13 = objc_alloc(MEMORY[0x277CBEB18]);
        v17 = objc_msgSend_count(self->_items, v14, v15, v16);
        v20 = objc_msgSend_initWithCapacity_(v13, v18, v17, v19);
        v21 = objc_alloc(MEMORY[0x277CBEB18]);
        v25 = objc_msgSend_count(v104, v22, v23, v24);
        v28 = objc_msgSend_initWithCapacity_(v21, v26, v25, v27);
        v108 = objc_msgSend_documentRoot(self, v29, v30, v31);
        v106 = v20;
      }

      else
      {
        v108 = 0;
        v28 = 0;
        v106 = 0;
      }

      v105 = v28;
      v32 = objc_alloc(MEMORY[0x277CBEB98]);
      v107 = objc_msgSend_initWithArray_(v32, v33, v104, v34);
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v35 = self->_items;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v121, v128, 16);
      if (v39)
      {
        v40 = *v122;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v122 != v40)
            {
              objc_enumerationMutation(v35);
            }

            v42 = *(*(&v121 + 1) + 8 * i);
            if ((objc_msgSend_containsObject_(v107, v37, v42, v38) & 1) == 0)
            {
              v44 = objc_msgSend_parentInfo(v42, v37, v43, v38);
              v45 = v44 == self;

              if (!v45)
              {
                v48 = MEMORY[0x277D81150];
                v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSAGalleryInfo setItems:]", v47);
                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v51);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 182, 0, "Removed item's parent info should have been self.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
              }

              if (self->_isInDocument)
              {
                objc_msgSend_addObject_(v106, v46, v42, v47);
                objc_msgSend_willBeRemovedFromDocumentRoot_(v42, v57, v108, v58);
              }

              objc_msgSend_setParentInfo_(v42, v46, 0, v47);
            }
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v121, v128, 16);
        }

        while (v39);
      }

      v59 = objc_alloc(MEMORY[0x277CBEB98]);
      v62 = objc_msgSend_initWithArray_(v59, v60, self->_items, v61);
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v63 = v104;
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v117, v127, 16);
      if (v67)
      {
        v68 = *v118;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v118 != v68)
            {
              objc_enumerationMutation(v63);
            }

            v70 = *(*(&v117 + 1) + 8 * j);
            if ((objc_msgSend_containsObject_(v62, v65, v70, v66) & 1) == 0)
            {
              v72 = objc_msgSend_parentInfo(v70, v65, v71, v66);
              v73 = v72 == 0;

              if (!v73)
              {
                v76 = MEMORY[0x277D81150];
                v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSAGalleryInfo setItems:]", v75);
                v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v79);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v81, v77, v80, 196, 0, "expected nil value for '%{public}s'", "item.parentInfo");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84);
              }

              if (self->_isInDocument)
              {
                objc_msgSend_addObject_(v105, v74, v70, v75);
                objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v70, v85, v108, 0);
              }

              objc_msgSend_setParentInfo_(v70, v74, self, v75);
            }
          }

          v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v117, v127, 16);
        }

        while (v67);
      }

      v89 = objc_msgSend_copy(v63, v86, v87, v88);
      v90 = self->_items;
      self->_items = v89;

      if (self->_isInDocument)
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v91 = v106;
        v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v113, v126, 16);
        if (v95)
        {
          v96 = *v114;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v114 != v96)
              {
                objc_enumerationMutation(v91);
              }

              objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v113 + 1) + 8 * k), v93, v108, v94);
            }

            v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v93, &v113, v126, 16);
          }

          while (v95);
        }

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v98 = v105;
        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v109, v125, 16);
        if (v101)
        {
          v102 = *v110;
          do
          {
            for (m = 0; m != v101; ++m)
            {
              if (*v110 != v102)
              {
                objc_enumerationMutation(v98);
              }

              objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v109 + 1) + 8 * m), v100, v108, 0);
            }

            v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v100, &v109, v125, 16);
          }

          while (v101);
        }
      }

      itemsCopy = v104;
    }
  }
}

- (BOOL)needsDownload
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_msgSend_items(self, a2, v2, v3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_needsDownload(*(*(&v13 + 1) + 8 * i), v6, v7, v8))
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)canCopyData
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_items(self, a2, v2, v3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_msgSend_canCopyData(*(*(&v14 + 1) + 8 * i), v6, v7, v8) & 1) == 0)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (id)typeName
{
  v4 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Image Gallery", &stru_288512028, @"TSApplication");

  return v6;
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v17.receiver = self;
  v17.super_class = TSAGalleryInfo;
  childEnumerator = [(TSAGalleryInfo *)&v17 childEnumerator];
  v8 = objc_msgSend_childInfos(self, v5, v6, v7);
  v12 = objc_msgSend_objectEnumerator(v8, v9, v10, v11);
  v15 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v13, childEnumerator, v14, v12, 0);

  return v15;
}

- (id)childEnumeratorForUserSearch
{
  v29.receiver = self;
  v29.super_class = TSAGalleryInfo;
  childEnumeratorForUserSearch = [(TSAGalleryInfo *)&v29 childEnumeratorForUserSearch];
  if (objc_msgSend_captionMode(self, v4, v5, v6))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    while (1)
    {
      v14 = objc_msgSend_nextObject(childEnumeratorForUserSearch, v7, v8, v9);
      if (!v14)
      {
        break;
      }

      objc_msgSend_addObject_(v10, v11, v14, v13);
    }

    v15 = objc_msgSend_captionMode(self, v11, v12, v13);
    if (v15 == 1)
    {
      v19 = objc_msgSend_items(self, v16, v17, v18);
      v24 = objc_msgSend_valueForKey_(v19, v22, @"captionStorage", v23);
      objc_msgSend_addObjectsFromArray_(v10, v25, v24, v26);
    }

    else
    {
      if (v15 != 2)
      {
LABEL_10:
        v27 = objc_msgSend_objectEnumerator(v10, v16, v17, v18);

        childEnumeratorForUserSearch = v27;
        goto LABEL_11;
      }

      v19 = objc_msgSend_captionStorage(self, v16, v17, v18);
      objc_msgSend_addObject_(v10, v20, v19, v21);
    }

    goto LABEL_10;
  }

LABEL_11:

  return childEnumeratorForUserSearch;
}

- (NSArray)childInfos
{
  v5 = objc_msgSend_items(self, a2, v2, v3);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_count(v5, v7, v8, v9);
  v13 = objc_msgSend_initWithCapacity_(v6, v11, v10 + 1, v12);
  objc_msgSend_addObjectsFromArray_(v13, v14, v5, v15);
  v19 = objc_msgSend_captionStorage(self, v16, v17, v18);
  objc_msgSend_addObject_(v13, v20, v19, v21);

  return v13;
}

- (void)insertContainedModel:(id)model atIndex:(unint64_t)index
{
  modelCopy = model;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_items(self, v7, v8, v9);
  v14 = objc_msgSend_mutableCopy(v10, v11, v12, v13);

  if (objc_msgSend_count(v14, v15, v16, v17) < index)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSAGalleryInfo insertContainedModel:atIndex:]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 381, 0, "Inserting at invalid address");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  objc_msgSend_insertObject_atIndex_(v14, v18, v6, index);
  objc_msgSend_setItems_(self, v29, v14, v30);
}

- (void)removeContainedModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v8 = objc_msgSend_items(self, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  if ((objc_msgSend_containsObject_(v12, v13, v4, v14) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSAGalleryInfo removeContainedModel:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 392, 0, "Attempting to remove item not contained in model objects.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  objc_msgSend_removeObject_(v12, v15, v4, v16);
  objc_msgSend_setItems_(self, v26, v12, v27);
}

- (void)moveModel:(id)model toIndex:(unint64_t)index
{
  modelCopy = model;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_items(self, v7, v8, v9);
  v14 = objc_msgSend_mutableCopy(v10, v11, v12, v13);

  if ((objc_msgSend_containsObject_(v14, v15, v6, v16) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSAGalleryInfo moveModel:toIndex:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 403, 0, "Attempting to move item not contained in model objects.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  objc_msgSend_removeObject_(v14, v17, v6, v18);
  objc_msgSend_insertObject_atIndex_(v14, v28, v6, index);
  objc_msgSend_setItems_(self, v29, v14, v30);
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = TSAGalleryInfo;
  [(TSAGalleryInfo *)&v22 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = objc_msgSend_items(self, v8, v9, v10, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v23, 16);
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v18 + 1) + 8 * v16++), v13, rootCopy, contextCopy);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v18, v23, 16);
    }

    while (v14);
  }

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_captionStorage, v17, rootCopy, contextCopy);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = TSAGalleryInfo;
  [(TSAGalleryInfo *)&v22 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  self->_isInDocument = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = objc_msgSend_items(self, v8, v9, v10, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v23, 16);
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v18 + 1) + 8 * v16++), v13, rootCopy, contextCopy);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v18, v23, 16);
    }

    while (v14);
  }

  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_captionStorage, v17, rootCopy, contextCopy);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v23 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v21.receiver = self;
  v21.super_class = TSAGalleryInfo;
  [(TSAGalleryInfo *)&v21 willBeRemovedFromDocumentRoot:rootCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_items(self, v5, v6, v7, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v22, 16);
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v17 + 1) + 8 * v14++), v10, rootCopy, v11);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v17, v22, 16);
    }

    while (v12);
  }

  objc_msgSend_willBeRemovedFromDocumentRoot_(self->_captionStorage, v15, rootCopy, v16);
  self->_isInDocument = 0;
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v23 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v21.receiver = self;
  v21.super_class = TSAGalleryInfo;
  [(TSAGalleryInfo *)&v21 wasRemovedFromDocumentRoot:rootCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_items(self, v5, v6, v7, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v22, 16);
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v17 + 1) + 8 * v14++), v10, rootCopy, v11);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v17, v22, 16);
    }

    while (v12);
  }

  objc_msgSend_wasRemovedFromDocumentRoot_(self->_captionStorage, v15, rootCopy, v16);
}

- (BOOL)supportsHyperlinks
{
  v11.receiver = self;
  v11.super_class = TSAGalleryInfo;
  if (![(TSAGalleryInfo *)&v11 supportsHyperlinks])
  {
    return 0;
  }

  v5 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v2, v3, v4);
  v9 = objc_msgSend_supportsImageGalleryHyperlinks(v5, v6, v7, v8);

  return v9;
}

+ (id)i_newCaptionStorageWithContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_documentRoot(contextCopy, v5, v6, v7);
  v12 = objc_msgSend_stylesheet(v8, v9, v10, v11);
  v15 = objc_msgSend_defaultGalleryCaptionParagraphStyleInStylesheet_(self, v13, v12, v14);
  v16 = objc_alloc(MEMORY[0x277D80F28]);
  v20 = objc_msgSend_initialListStyle(v15, v17, v18, v19);
  v40 = -1;
  v22 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v16, v21, contextCopy, 0, 3, v12, v15, v20, 0, 0, v40);

  objc_msgSend_i_configureCaptionStorage_(self, v23, v22, v24);
  v28 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v25, v26, v27);
  LODWORD(self) = objc_msgSend_imageGalleryCaptionsUsePlaceholderText(v28, v29, v30, v31);

  if (self)
  {
    v35 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v32, v33, v34);
    v37 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"Caption", &stru_288512028, @"TSApplication");

    objc_msgSend_insertPlaceholderText_atCharIndex_undoTransaction_(v22, v38, v37, 0, 0);
  }

  return v22;
}

+ (id)defaultGalleryCaptionParagraphStyleInStylesheet:(id)stylesheet
{
  v58[3] = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  objc_opt_class();
  v8 = objc_msgSend_p_overrideCaptionParagraphStyleIdentifier(self, v5, v6, v7);
  v11 = objc_msgSend_styleWithIdentifier_(stylesheetCopy, v9, v8, v10);
  v12 = TSUCheckedDynamicCast();

  if (!v12)
  {
    objc_opt_class();
    v16 = objc_msgSend_documentRoot(stylesheetCopy, v13, v14, v15);
    v20 = objc_msgSend_theme(v16, v17, v18, v19);
    v21 = TSUCheckedDynamicCast();
    v12 = objc_msgSend_captionTextPreset(v21, v22, v23, v24);

    if (!v12)
    {
      v29 = sub_2760ACE64(v25, v26, v27, v28);
      v58[0] = v29;
      v58[1] = @"Caption Small";
      v58[2] = @"Caption";
      v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v58, 3);

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v32 = v31;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v53, v57, 16);
      if (v35)
      {
        v36 = *v54;
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v54 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v12 = objc_msgSend_p_paragraphStyleWithLocalizedNameKey_inStylesheet_(self, v34, *(*(&v53 + 1) + 8 * i), stylesheetCopy);
            if (v12)
            {

              goto LABEL_14;
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v53, v57, 16);
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v12 = objc_msgSend_defaultParagraphStyle(stylesheetCopy, v38, v39, v40);
      if (!v12)
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSAGalleryInfo defaultGalleryCaptionParagraphStyleInStylesheet:]", v42);
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v46);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 550, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
        v12 = 0;
      }
    }
  }

LABEL_14:

  return v12;
}

+ (id)p_overrideCaptionParagraphStyleIdentifier
{
  v4 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], a2, v2, v3);
  v5 = String();

  return v5;
}

+ (id)p_paragraphStyleWithLocalizedNameKey:(id)key inStylesheet:(id)stylesheet
{
  keyCopy = key;
  stylesheetCopy = stylesheet;
  v10 = objc_msgSend_context(stylesheetCopy, v7, v8, v9);
  v14 = objc_msgSend_documentRoot(v10, v11, v12, v13);
  v18 = objc_msgSend_documentLocale(v14, v15, v16, v17);

  v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, keyCopy, &stru_288512028, @"TSApplication");
  objc_opt_class();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_276102334;
  v27[3] = &unk_27A6B0E70;
  v21 = v20;
  v28 = v21;
  v24 = objc_msgSend_firstCascadedStylePassingTest_(stylesheetCopy, v22, v27, v23);
  v25 = TSUCheckedDynamicCast();

  return v25;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v32 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_pushMappingContext_(mapperCopy, v8, self, v9);
  v30.receiver = self;
  v30.super_class = TSAGalleryInfo;
  [(TSAGalleryInfo *)&v30 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  v13 = objc_msgSend_captionStorage(self, v10, v11, v12);
  objc_msgSend_adoptStylesheet_withMapper_(v13, v14, stylesheetCopy, mapperCopy);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = objc_msgSend_items(self, v15, v16, v17, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v26, v31, 16);
  if (v21)
  {
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_adoptStylesheet_withMapper_(*(*(&v26 + 1) + 8 * v23++), v20, stylesheetCopy, mapperCopy);
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v26, v31, 16);
    }

    while (v21);
  }

  objc_msgSend_popMappingContext_(mapperCopy, v24, self, v25);
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4012000000;
  v45 = sub_276102864;
  v46 = nullsub_10;
  v47 = "";
  v48 = *MEMORY[0x277CBF3A8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  v10 = objc_msgSend_items(self, v7, v8, v9);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v38, v49, 16);
  if (v15)
  {
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = objc_msgSend_imageData(v18, v12, v13, v14);
        v20 = v19 == dataCopy;

        if (v20)
        {
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = sub_276102874;
          v37[3] = &unk_27A6B0E98;
          v37[4] = v18;
          v37[5] = &v42;
          objc_msgSend_performBlockWithTemporaryLayout_(selfCopy, v12, v37, v14);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v38, v49, 16);
    }

    while (v15);
  }

  v21 = TSDTopmostInfoFromInfo();
  v25 = objc_msgSend_parentInfo(v21, v22, v23, v24);
  v26 = TSUProtocolCast();

  if (v26)
  {
    objc_msgSend_highestScaleFactorForRenderingDrawableInfo_(v26, v27, selfCopy, v28, &unk_288541558);
    v29 = v43;
    if (v30 > 1.0)
    {
      TSUMultiplySizeScalar();
      *(v29 + 6) = v31;
      *(v29 + 7) = v32;
    }
  }

  else
  {
    v29 = v43;
  }

  v33 = v29[6];
  v34 = v29[7];

  _Block_object_dispose(&v42, 8);
  v35 = v33;
  v36 = v34;
  result.height = v36;
  result.width = v35;
  return result;
}

- (id)animationFilters
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D80570];
  v9[0] = *MEMORY[0x277D805A0];
  v9[1] = v3;
  v9[2] = *MEMORY[0x277D80590];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v9, 3);
  v7 = objc_msgSend_setWithArray_(v2, v5, v4, v6);

  return v7;
}

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style animationFilter:(id)filter
{
  if (!objc_msgSend_isEqualToString_(filter, a2, *MEMORY[0x277D80590], filter))
  {
    return 1;
  }

  v8 = objc_msgSend_items(self, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);

  if (v12 <= 1)
  {
    return 1;
  }

  else
  {
    return v12 - 1;
  }
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAGalleryInfo mixingTypeWithObject:context:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 712, 0, "invalid nil value for '%{public}s'", "otherGalleryInfo", objectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_geometry(self, v6, v7, v8);
  v23 = objc_msgSend_geometry(v9, v20, v21, v22);
  objc_msgSend_mixingTypeWithObject_context_(v19, v24, v23, contextCopy);
  TSDMixingTypeBestFromMixingTypes();

  v28 = objc_msgSend_items(self, v25, v26, v27);
  v112 = objc_msgSend_lastObject(v28, v29, v30, v31);

  v35 = objc_msgSend_items(v9, v32, v33, v34);
  v39 = objc_msgSend_firstObject(v35, v36, v37, v38);

  v43 = 2;
  if (v112 && v39)
  {
    v44 = objc_msgSend_imageData(v112, v40, v41, v42);
    v48 = objc_msgSend_imageData(v39, v45, v46, v47);
    isEqual = objc_msgSend_isEqual_(v44, v49, v48, v50);

    if (isEqual)
    {
      v55 = MEMORY[0x277CCAE60];
      objc_msgSend_offset(v112, v52, v53, v54);
      v114[0] = v56;
      v114[1] = v57;
      v59 = objc_msgSend_valueWithBytes_objCType_(v55, v58, v114, "{CGPoint=dd}");
      v60 = MEMORY[0x277CCAE60];
      objc_msgSend_offset(v39, v61, v62, v63);
      v113[0] = v64;
      v113[1] = v65;
      v67 = objc_msgSend_valueWithBytes_objCType_(v60, v66, v113, "{CGPoint=dd}");
      TSDMixingTypeWithObjects();
      TSDMixingTypeBestFromMixingTypes();

      v68 = MEMORY[0x277CCABB0];
      objc_msgSend_scale(v112, v69, v70, v71);
      v75 = objc_msgSend_numberWithDouble_(v68, v72, v73, v74);
      v76 = MEMORY[0x277CCABB0];
      objc_msgSend_scale(v39, v77, v78, v79);
      v83 = objc_msgSend_numberWithDouble_(v76, v80, v81, v82);
      TSDMixingTypeWithObjects();
      v43 = TSDMixingTypeBestFromMixingTypes();
    }

    else
    {
      v43 = TSDMixingTypeBestFromMixingTypes();
    }
  }

  v84 = objc_msgSend_captionMode(self, v40, v41, v42);
  v87 = v112;
  if (v84 == 1 || (v87 = self, v84 == 2))
  {
    v88 = objc_msgSend_captionStorage(v87, v87, v85, v86);
  }

  else
  {
    v88 = 0;
  }

  v92 = objc_msgSend_captionMode(v9, v87, v85, v86);
  v93 = v39;
  if (v92 == 1 || (v93 = v9, v92 == 2))
  {
    v94 = objc_msgSend_captionStorage(v93, v89, v90, v91);
  }

  else
  {
    v94 = 0;
  }

  v95 = objc_msgSend_string(v88, v89, v90, v91);
  v99 = objc_msgSend_string(v94, v96, v97, v98);
  v100 = v95;
  v101 = v99;
  if (v100 | v101 && (v104 = v101, v105 = objc_msgSend_isEqual_(v100, v102, v101, v103), v104, v100, v104, v100, (v105 & 1) == 0) || v88 && v94 && (v106 = objc_opt_class(), (objc_msgSend_p_stylesAreEqualForOutgoingStorage_incomingStorage_(v106, v107, v88, v94) & 1) == 0))
  {
    v43 = TSDMixingTypeBestFromMixingTypes();
  }

  if (v43 == 3)
  {
    v108 = 2;
  }

  else
  {
    v108 = v43;
  }

  return v108;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v121[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v10 = objc_msgSend_geometry(self, v7, v8, v9);
  v14 = objc_msgSend_geometry(v6, v11, v12, v13);
  v15 = TSDMixingMixedObjectWithFraction();

  v16 = [TSAGalleryInfo alloc];
  v20 = objc_msgSend_context(self, v17, v18, v19);
  v22 = objc_msgSend_initWithContext_geometry_(v16, v21, v20, v15);

  v26 = objc_msgSend_captionStorage(v22, v23, v24, v25);
  v30 = objc_msgSend_captionStorage(self, v27, v28, v29);
  objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v26, v31, v30, 0, 0, 0);

  v35 = objc_msgSend_items(self, v32, v33, v34);
  v39 = objc_msgSend_lastObject(v35, v36, v37, v38);

  if (v39)
  {
    v40 = [TSAGalleryItem alloc];
    v44 = objc_msgSend_context(self, v41, v42, v43);
    v48 = objc_msgSend_imageData(v39, v45, v46, v47);
    v50 = objc_msgSend_initWithContext_imageData_(v40, v49, v44, v48);

    v54 = objc_msgSend_captionStorage(v50, v51, v52, v53);
    v58 = objc_msgSend_captionStorage(v39, v55, v56, v57);
    objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v54, v59, v58, 0, 0, 0);

    v63 = objc_msgSend_items(v6, v60, v61, v62);
    v67 = objc_msgSend_firstObject(v63, v64, v65, v66);

    v68 = MEMORY[0x277CCAE60];
    objc_msgSend_offset(v39, v69, v70, v71);
    v120[0] = v72;
    v120[1] = v73;
    v75 = objc_msgSend_valueWithBytes_objCType_(v68, v74, v120, "{CGPoint=dd}");
    v76 = MEMORY[0x277CCAE60];
    objc_msgSend_offset(v67, v77, v78, v79);
    v119[0] = v80;
    v119[1] = v81;
    v83 = objc_msgSend_valueWithBytes_objCType_(v76, v82, v119, "{CGPoint=dd}");
    v84 = TSDMixingMixedObjectWithFraction();
    objc_msgSend_CGPointValue(v84, v85, v86, v87);
    objc_msgSend_setOffset_(v50, v88, v89, v90);

    v91 = MEMORY[0x277CCABB0];
    objc_msgSend_scale(v39, v92, v93, v94);
    v98 = objc_msgSend_numberWithDouble_(v91, v95, v96, v97);
    v99 = MEMORY[0x277CCABB0];
    objc_msgSend_scale(v67, v100, v101, v102);
    v106 = objc_msgSend_numberWithDouble_(v99, v103, v104, v105);
    v107 = TSDMixingMixedObjectWithFraction();
    objc_msgSend_doubleValue(v107, v108, v109, v110);
    objc_msgSend_setScale_(v50, v111, v112, v113);

    v121[0] = v50;
    v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v114, v121, 1);
    objc_msgSend_setItems_(v22, v116, v115, v117);
  }

  return v22;
}

+ (BOOL)p_stylesAreEqualForOutgoingStorage:(id)storage incomingStorage:(id)incomingStorage
{
  storageCopy = storage;
  incomingStorageCopy = incomingStorage;
  v10 = objc_msgSend_range(storageCopy, v7, v8, v9);
  v12 = v11;
  v13 = MEMORY[0x277D81510];
  v36 = *MEMORY[0x277D81510];
  v16 = objc_msgSend_range(incomingStorageCopy, v11, v14, v15);
  v18 = v17;
  v35 = *v13;
  v19 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(storageCopy, v17, v10, &v36);
  v21 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(incomingStorageCopy, v20, v16, &v35);
  if (*(&v36 + 1) != *(&v35 + 1))
  {
    isEqual = 0;
    if (v36 != __PAIR128__(v12, v10) || (isEqual = 0, v35 != __PAIR128__(v18, v16)))
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  v22 = v19;
  v23 = v21;
  v26 = v23;
  if (!(v22 | v23))
  {

LABEL_8:
    v30 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(storageCopy, v27, v10, &v36);
    v21 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(incomingStorageCopy, v31, v16, &v35);
    if (*(&v36 + 1) == *(&v35 + 1) || (isEqual = 0, v36 == __PAIR128__(v12, v10)) && (isEqual = 0, v35 == __PAIR128__(v18, v16)))
    {
      v19 = v30;
      v21 = v21;
      if (v19 | v21)
      {
        isEqual = objc_msgSend_isEqual_(v19, v32, v21, v33);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      v19 = v30;
    }

    goto LABEL_17;
  }

  v29 = objc_msgSend_isEqual_(v22, v24, v23, v25);

  if (v29)
  {
    goto LABEL_8;
  }

  isEqual = 0;
LABEL_18:

  return isEqual;
}

+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_opt_class() == class)
  {
    v7 = unarchiverCopy;
    v8 = MEMORY[0x277D80558];
    google::protobuf::internal::AssignDescriptors();
    v11 = objc_msgSend_messageWithDescriptor_(v7, v9, *(*(v8 + 88) + 672), v10);

    if (google::protobuf::internal::ExtensionSet::Has((v11 + 16)))
    {
      class = self;
    }
  }

  classCopy = class;

  return class;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, *(*(v4 + 88) + 672), v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276094000, *(*(v4 + 88) + 672));

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 6))
  {
    v7 = *(archive + 6);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v39.receiver = self;
  v39.super_class = TSAGalleryInfo;
  [(TSAGalleryInfo *)&v39 loadFromArchive:v7 unarchiver:unarchiverCopy];
  self->_isInDocument = objc_msgSend_sourceType(unarchiverCopy, v8, v9, v10) == 1;
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_276103C84;
  v38[3] = &unk_27A6B01F8;
  v38[4] = self;
  v12 = unarchiverCopy;
  v13 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v12, v14, Message + 24, v13, 0, v38);

  v15 = *(Message + 16);
  if ((v15 & 2) != 0)
  {
    v16 = *(Message + 56);
    if (v16 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2 * (v16 == 2);
    }

    self->_captionMode = v17;
  }

  if (v15)
  {
    v18 = *(Message + 48);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_276103DB4;
    v37[3] = &unk_27A6B0430;
    v37[4] = self;
    v19 = v12;
    v20 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v21, v18, v20, 0, v37);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_276103E44;
  v35[3] = &unk_27A6B0338;
  v35[4] = self;
  v22 = v12;
  v36 = v22;
  objc_msgSend_addFinalizeHandler_(v22, v23, v35, v24);
  v25 = *(archive + 8);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_276104038;
  v34[3] = &unk_27A6AF6A0;
  v34[4] = self;
  v26 = v22;
  v28 = objc_opt_class();
  if (v25)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v26, v27, v25, v28, 0, v34);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v26, v27, MEMORY[0x277D80A18], v28, 0, v34);
  }

  v31 = *(archive + 10);
  if ((v31 & 0x400) != 0)
  {
    v32 = objc_msgSend_readDataReferenceMessage_(v26, v29, *(archive + 16), v30);
    v31 = *(archive + 10);
  }

  if ((v31 & 0x200) != 0)
  {
    v33 = objc_msgSend_readDataReferenceMessage_(v26, v29, *(archive + 15), v30);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_276104478;
  v66[3] = &unk_27A6AF6C8;
  archiveCopy = archive;
  v7 = archiverCopy;
  v67 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v66);
  v10 = objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v9, 200, archive);
  TSA::GalleryInfo::default_instance(v10);
  v11 = google::protobuf::internal::ExtensionSet::MutableMessage();
  objc_msgSend_setStrongReferenceArray_message_(v7, v12, self->_items, v11 + 24);
  captionMode = self->_captionMode;
  v17 = captionMode == 1;
  if (captionMode == 2)
  {
    v17 = 2;
  }

  v18 = *(v11 + 16);
  *(v11 + 16) = v18 | 2;
  *(v11 + 56) = v17;
  captionStorage = self->_captionStorage;
  if (captionStorage)
  {
    *(v11 + 16) = v18 | 3;
    v20 = *(v11 + 48);
    if (!v20)
    {
      v21 = *(v11 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C951B0](v21);
      *(v11 + 48) = v20;
    }

    objc_msgSend_setStrongReference_message_(v7, v13, captionStorage, v20);
  }

  v22 = objc_msgSend_firstObject(self->_items, v13, v14, v15);
  v29 = objc_msgSend_imageData(v22, v23, v24, v25);
  if (!v29)
  {
    v29 = objc_msgSend_null(MEMORY[0x277D80828], v26, v27, v28);
  }

  *(archive + 10) |= 0x200u;
  v30 = *(archive + 15);
  if (!v30)
  {
    v31 = *(archive + 1);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x277C95130](v31);
    *(archive + 15) = v30;
  }

  objc_msgSend_setDataReference_message_(v7, v26, v29, v30);
  v38 = objc_msgSend_thumbnailImageData(v22, v32, v33, v34);
  if (!v38)
  {
    v38 = objc_msgSend_null(MEMORY[0x277D80828], v35, v36, v37);
  }

  *(archive + 10) |= 0x400u;
  v39 = *(archive + 16);
  if (!v39)
  {
    v40 = *(archive + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C95130](v40);
    *(archive + 16) = v39;
  }

  objc_msgSend_setDataReference_message_(v7, v35, v38, v39);
  archivedImageStyle = self->_archivedImageStyle;
  if (!archivedImageStyle)
  {
    v43 = objc_alloc(MEMORY[0x277D80340]);
    v47 = objc_msgSend_context(self, v44, v45, v46);
    v50 = objc_msgSend_initWithContext_(v43, v48, v47, v49);
    v51 = self->_archivedImageStyle;
    self->_archivedImageStyle = v50;

    archivedImageStyle = self->_archivedImageStyle;
  }

  *(archive + 10) |= 4u;
  v52 = *(archive + 8);
  if (!v52)
  {
    v53 = *(archive + 1);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x277C951B0](v53);
    *(archive + 8) = v52;
  }

  objc_msgSend_setStrongReference_message_(v7, v41, archivedImageStyle, v52);
  if (v22)
  {
    objc_msgSend_naturalSize(v22, v54, v55, v56);
    v58 = v57;
    v60 = v59;
  }

  else
  {
    v58 = *MEMORY[0x277CBF3A8];
    v60 = *(MEMORY[0x277CBF3A8] + 8);
  }

  *(archive + 10) |= 8u;
  v61 = *(archive + 9);
  if (!v61)
  {
    v62 = *(archive + 1);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x277C95160](v62);
    *(archive + 9) = v61;
  }

  v70.width = v58;
  v70.height = v60;
  TSPCGSizeCopyToMessage(v70, v61);
  *(archive + 10) |= 0x80u;
  v63 = *(archive + 13);
  if (!v63)
  {
    v64 = *(archive + 1);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = MEMORY[0x277C95160](v64);
    *(archive + 13) = v63;
  }

  v71.width = v58;
  v71.height = v60;
  TSPCGSizeCopyToMessage(v71, v63);
  objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v65, *MEMORY[0x277D80990], *MEMORY[0x277D80990], @"TSAGalleries");
}

- (id)captionTextStoragesContainingUserText
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  captionMode = self->_captionMode;
  if (captionMode == 2)
  {
    v25 = objc_msgSend_captionStorage(self, v3, v4, v5);
    hasUserGeneratedVisibleText = objc_msgSend_hasUserGeneratedVisibleText(v25, v26, v27, v28);

    if (hasUserGeneratedVisibleText)
    {
      v30 = objc_msgSend_captionStorage(self, v3, v4, v5);
      objc_msgSend_addObject_(v6, v31, v30, v32);
    }
  }

  else if (captionMode == 1)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = objc_msgSend_items(self, v3, v4, v5, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v35, v39, 16);
    if (v13)
    {
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = objc_msgSend_captionStorage(v16, v10, v11, v12);
          v21 = objc_msgSend_hasUserGeneratedVisibleText(v17, v18, v19, v20);

          if (v21)
          {
            v22 = objc_msgSend_captionStorage(v16, v10, v11, v12);
            objc_msgSend_addObject_(v6, v23, v22, v24);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v35, v39, 16);
      }

      while (v13);
    }
  }

  v33 = objc_msgSend_copy(v6, v3, v4, v5);

  return v33;
}

- (void)processSelectedStoragesWithStatisticsController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = objc_msgSend_captionTextStoragesContainingUserText(self, v5, v6, v7, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_processStorageForStatistics_processSelection_(controllerCopy, v10, *(*(&v14 + 1) + 8 * v13++), 0);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

@end