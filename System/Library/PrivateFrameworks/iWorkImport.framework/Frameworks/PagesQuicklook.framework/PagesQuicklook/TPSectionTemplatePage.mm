@interface TPSectionTemplatePage
+ (id)sectionTemplatePageForPageTemplate:(id)template withSection:(id)section;
- (BOOL)containsInfo:(id)info;
- (BOOL)containsModelObject:(id)object;
- (BOOL)p_isInDocument;
- (BOOL)usesSingleHeaderFooter;
- (NSEnumerator)headerFooterFragmentEnumerator;
- (NSString)description;
- (TPSection)section;
- (TPSectionTemplatePage)initWithSection:(id)section;
- (TSKDocumentRoot)documentRoot;
- (double)bodyWidth;
- (double)pHeightOfHeaderFooter:(int64_t)footer;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)headerFooter:(int64_t)footer fragmentAtIndex:(int64_t)index;
- (id)i_pageTemplate;
- (id)objectUUIDPath;
- (id)p_headerAndFooterStorages;
- (id)sectionTemplateDrawablesSortedByZOrder:(id)order;
- (id)topLevelParentInfoForInfo:(id)info;
- (int64_t)headerFooterTypeForStorage:(id)storage;
- (int64_t)headerFragmentIndexForStorage:(id)storage;
- (int64_t)p_headerFragmentIndexForTabIndex:(unsigned int)index paragraphStyle:(id)style bodyWidth:(double)width;
- (unint64_t)countOfSectionTemplateDrawables;
- (void)addSectionTemplateDrawable:(id)drawable atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c;
- (void)addSectionTemplateDrawables:(id)drawables atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)i_addSectionTemplateDrawable:(id)drawable;
- (void)i_copyHeadersAndFootersFrom:(id)from dolcContext:(id)context withBlock:(id)block;
- (void)i_createHeadersFooters:(int64_t)footers stylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context mayAlreadyExist:(BOOL)exist;
- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context;
- (void)i_importHeaderFooter:(id)footer headerType:(int64_t)type dolcContext:(id)context splitHeaders:(BOOL)headers;
- (void)i_setHeaderFooter:(int64_t)footer storage:(id)storage fragmentIndex:(int64_t)index;
- (void)i_setPageTemplateUUIDPath:(id)path;
- (void)i_splitHeaderFooter:(id)footer storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root;
- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context;
- (void)p_makeDrawablesPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root;
- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context;
- (void)p_makeHeadersFootersPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)p_splitHeaderFooterByTabs:(id)tabs storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width;
- (void)removeSectionTemplateDrawable:(id)drawable suppressDOLC:(BOOL)c;
- (void)saveToArchiver:(id)archiver;
- (void)setParentStorage:(id)storage;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TPSectionTemplatePage

- (TPSectionTemplatePage)initWithSection:(id)section
{
  sectionCopy = section;
  v10 = objc_msgSend_context(sectionCopy, v5, v6, v7, v8, v9);
  v13.receiver = self;
  v13.super_class = TPSectionTemplatePage;
  v11 = [(TPSectionTemplatePage *)&v13 initWithContext:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_section, sectionCopy);
  }

  return v11;
}

+ (id)sectionTemplatePageForPageTemplate:(id)template withSection:(id)section
{
  templateCopy = template;
  sectionCopy = section;
  v7 = [TPSectionTemplatePage alloc];
  v13 = objc_msgSend_initWithSection_(v7, v8, v9, v10, v11, v12, sectionCopy);
  v19 = objc_msgSend_objectUUIDPath(templateCopy, v14, v15, v16, v17, v18);
  objc_msgSend_i_setPageTemplateUUIDPath_(v13, v20, v21, v22, v23, v24, v19);

  return v13;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, v9, off_2812F85B8[20]);

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v11 = *(v10 + 32);
  if (v11 == 3)
  {
    v12 = 8;
    while (1)
    {
      v13 = v53;
      if (!v53)
      {
        goto LABEL_8;
      }

      v14 = v52;
      v15 = *v53;
      if (v52 >= *v53)
      {
        break;
      }

      LODWORD(v52) = v52 + 1;
      v16 = *&v53[2 * v14 + 2];
LABEL_10:
      TSP::Reference::CopyFrom(v16, *(*(v10 + 40) + v12));
      v12 += 8;
      if (v12 == 32)
      {
        goto LABEL_11;
      }
    }

    if (v15 == HIDWORD(v52))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v51);
      v13 = v53;
      v15 = *v53;
    }

    *v13 = v15 + 1;
    v16 = MEMORY[0x277C92D60](v51);
    v17 = &v53[2 * v52];
    LODWORD(v52) = v52 + 1;
    *(v17 + 1) = v16;
    goto LABEL_10;
  }

LABEL_11:
  v18 = *(v10 + 56);
  if (v18 == 3)
  {
    v19 = 8;
    while (1)
    {
      v20 = v53;
      if (!v53)
      {
        goto LABEL_18;
      }

      v21 = v52;
      v22 = *v53;
      if (v52 >= *v53)
      {
        break;
      }

      LODWORD(v52) = v52 + 1;
      v23 = *&v53[2 * v21 + 2];
LABEL_20:
      TSP::Reference::CopyFrom(v23, *(*(v10 + 64) + v19));
      v19 += 8;
      if (v19 == 32)
      {
        goto LABEL_21;
      }
    }

    if (v22 == HIDWORD(v52))
    {
LABEL_18:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v51);
      v20 = v53;
      v22 = *v53;
    }

    *v20 = v22 + 1;
    v23 = MEMORY[0x277C92D60](v51);
    v24 = &v53[2 * v52];
    LODWORD(v52) = v52 + 1;
    *(v24 + 1) = v23;
    goto LABEL_20;
  }

LABEL_21:
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_275FEB084;
  v48[3] = &unk_27A6A8740;
  v49 = v11;
  v50 = v18;
  v48[4] = self;
  v25 = unarchiverCopy;
  v26 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v25, v27, v28, v29, v30, v31, &v51, v26, 0, v48);

  if (*(v10 + 80) >= 1)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_275FEB264;
    v47[3] = &unk_27A6A8508;
    v47[4] = self;
    v37 = v25;
    v38 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v37, v39, v40, v41, v42, v43, v10 + 72, v38, 0, v47);
  }

  if (*(v10 + 16))
  {
    v44 = objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(v25, v32, v33, v34, v35, v36, *(v10 + 96));
    pageTemplateUUIDPath = self->_pageTemplateUUIDPath;
    self->_pageTemplateUUIDPath = v44;
  }

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_275FEB278;
  v46[3] = &unk_27A6A8768;
  v46[4] = self;
  objc_msgSend_addFinalizeHandler_(v25, v32, v33, v34, v35, v36, v46);
  sub_275FB56E8(&v51);
}

- (void)dealloc
{
  v7 = 0;
  headerFooters = self->_headerFooters;
  v9 = 1;
  do
  {
    v10 = 0;
    v11 = v9;
    v12 = headerFooters[v7];
    do
    {
      objc_msgSend_setOwningAttachment_(v12[v10], a2, v2, v3, v4, v5, 0);
      objc_msgSend_setParentInfo_(v12[v10], v13, v14, v15, v16, v17, 0);
      v18 = v12[v10];
      v12[v10] = 0;

      ++v10;
    }

    while (v10 != 3);
    v9 = 0;
    v7 = 1;
  }

  while ((v11 & 1) != 0);
  v19.receiver = self;
  v19.super_class = TPSectionTemplatePage;
  [(TPSectionTemplatePage *)&v19 dealloc];
}

- (void)saveToArchiver:(id)archiver
{
  v125 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, v9, sub_275FEFF84, off_2812F85B8[20]);

  v16 = 0;
  selfCopy = self;
  headerFooters = self->_headerFooters;
  do
  {
    v18 = (*headerFooters)[v16];
    if (!v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "[TPSectionTemplatePage saveToArchiver:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 306, 0, "invalid nil value for '%{public}s'", "_headerFooters[TSWPHeaderFooterTypeHeader][i]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
      v18 = (*headerFooters)[v16];
    }

    v37 = *(v10 + 40);
    if (!v37)
    {
      goto LABEL_9;
    }

    v38 = *(v10 + 32);
    v39 = *v37;
    if (v38 < *v37)
    {
      *(v10 + 32) = v38 + 1;
      objc_msgSend_setStrongReference_message_(archiverCopy, v11, v12, v13, v14, v15, v18, *&v37[2 * v38 + 2]);
      goto LABEL_11;
    }

    if (v39 == *(v10 + 36))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 24));
      v37 = *(v10 + 40);
      v39 = *v37;
    }

    *v37 = v39 + 1;
    v40 = MEMORY[0x277C92D60](*(v10 + 24));
    v41 = *(v10 + 32);
    v42 = *(v10 + 40) + 8 * v41;
    *(v10 + 32) = v41 + 1;
    *(v42 + 8) = v40;
    objc_msgSend_setStrongReference_message_(archiverCopy, v43, v44, v45, v46, v47, v18, v40);
LABEL_11:
    ++v16;
  }

  while (v16 != 3);
  v48 = 0;
  v49 = self->_headerFooters[1];
  do
  {
    v50 = v49[v48];
    if (!v50)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "[TPSectionTemplatePage saveToArchiver:]");
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v59, v60, v61, v62, v63, v52, v58, 311, 0, "invalid nil value for '%{public}s'", "_headerFooters[TSWPHeaderFooterTypeFooter][i]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67, v68);
      v50 = v49[v48];
    }

    v69 = *(v10 + 64);
    if (!v69)
    {
      goto LABEL_20;
    }

    v70 = *(v10 + 56);
    v71 = *v69;
    if (v70 < *v69)
    {
      *(v10 + 56) = v70 + 1;
      objc_msgSend_setStrongReference_message_(archiverCopy, v11, v12, v13, v14, v15, v50, *&v69[2 * v70 + 2]);
      goto LABEL_22;
    }

    if (v71 == *(v10 + 60))
    {
LABEL_20:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 48));
      v69 = *(v10 + 64);
      v71 = *v69;
    }

    *v69 = v71 + 1;
    v72 = MEMORY[0x277C92D60](*(v10 + 48));
    v73 = *(v10 + 56);
    v74 = *(v10 + 64) + 8 * v73;
    *(v10 + 56) = v73 + 1;
    *(v74 + 8) = v72;
    objc_msgSend_setStrongReference_message_(archiverCopy, v75, v76, v77, v78, v79, v50, v72);
LABEL_22:
    ++v48;
  }

  while (v48 != 3);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v80 = self->_sectionTemplateDrawables;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, v82, v83, v84, v85, &v120, v124, 16);
  if (!v87)
  {
    goto LABEL_37;
  }

  v92 = *v121;
  while (2)
  {
    v93 = 0;
    while (2)
    {
      if (*v121 != v92)
      {
        objc_enumerationMutation(v80);
      }

      v94 = *(*(&v120 + 1) + 8 * v93);
      v95 = *(v10 + 88);
      if (!v95)
      {
        goto LABEL_33;
      }

      v96 = *(v10 + 80);
      v97 = *v95;
      if (v96 < *v95)
      {
        *(v10 + 80) = v96 + 1;
        objc_msgSend_setStrongReference_message_(archiverCopy, v86, v88, v89, v90, v91, v94, *&v95[2 * v96 + 2]);
        goto LABEL_35;
      }

      if (v97 == *(v10 + 84))
      {
LABEL_33:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 72));
        v95 = *(v10 + 88);
        v97 = *v95;
      }

      *v95 = v97 + 1;
      v98 = MEMORY[0x277C92D60](*(v10 + 72));
      v99 = *(v10 + 80);
      v100 = *(v10 + 88) + 8 * v99;
      *(v10 + 80) = v99 + 1;
      *(v100 + 8) = v98;
      objc_msgSend_setStrongReference_message_(archiverCopy, v101, v102, v103, v104, v105, v94, v98);
LABEL_35:
      if (v87 != ++v93)
      {
        continue;
      }

      break;
    }

    v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v86, v88, v89, v90, v91, &v120, v124, 16);
    if (v87)
    {
      continue;
    }

    break;
  }

LABEL_37:

  if (selfCopy->_pageTemplateUUIDPath)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v106, v107, v108, v109, v110, 4, v10);
    pageTemplateUUIDPath = selfCopy->_pageTemplateUUIDPath;
    *(v10 + 16) |= 1u;
    v117 = *(v10 + 96);
    if (!v117)
    {
      v118 = *(v10 + 8);
      if (v118)
      {
        v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
      }

      v117 = MEMORY[0x277C92D50](v118);
      *(v10 + 96) = v117;
    }

    objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(archiverCopy, v111, v112, v113, v114, v115, pageTemplateUUIDPath, v117);
  }
}

- (id)copyWithContext:(id)context
{
  v77 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  v5 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithContext_(v5, v6, v7, v8, v9, v10, contextCopy);
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = 0;
    v15 = v13;
    do
    {
      v16 = selfCopy->_headerFooters[v12][v14];
      v22 = v16;
      if (v16)
      {
        v23 = objc_msgSend_length(v16, v17, v18, v19, v20, v21);
        v29 = objc_msgSend_newSubstorageWithRange_context_flags_(v22, v24, v25, v26, v27, v28, 0, v23, contextCopy, 1);
        objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(v11, v30, v31, v32, v33, v34, v12, v29, v14);
      }

      ++v14;
    }

    while (v14 != 3);
    v13 = 0;
    v12 = 1;
  }

  while ((v15 & 1) != 0);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = selfCopy->_sectionTemplateDrawables;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, v37, v38, v39, v40, &v72, v76, 16);
  if (v42)
  {
    v47 = *v73;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v73 != v47)
        {
          objc_enumerationMutation(v35);
        }

        v50 = objc_msgSend_replicateForReinsertion(*(*(&v72 + 1) + 8 * i), v41, v43, v44, v45, v46);
        if (v50)
        {
          v55 = *(v11 + 128);
          if (!v55)
          {
            v56 = objc_alloc(MEMORY[0x277CBEB18]);
            v62 = objc_msgSend_count(selfCopy->_sectionTemplateDrawables, v57, v58, v59, v60, v61);
            v68 = objc_msgSend_initWithCapacity_(v56, v63, v64, v65, v66, v67, v62);
            v69 = *(v11 + 128);
            *(v11 + 128) = v68;

            v55 = *(v11 + 128);
          }

          objc_msgSend_addObject_(v55, v49, v51, v52, v53, v54, v50);
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v41, v43, v44, v45, v46, &v72, v76, 16);
    }

    while (v42);
  }

  objc_storeStrong((v11 + 136), selfCopy->_pageTemplateUUIDPath);
  return v11;
}

- (BOOL)containsModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUClassAndProtocolCast();
  if (v6)
  {
    v11 = objc_msgSend_containsInfo_(self, v5, v7, v8, v9, v10, v6, &unk_2885108A0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)containsInfo:(id)info
{
  v8 = objc_msgSend_topLevelParentInfoForInfo_(self, a2, v3, v4, v5, v6, info);
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (objc_msgSend_wpKind(v9, v10, v11, v12, v13, v14) == 1)
  {
    v20 = objc_msgSend_headerFooterTypeForStorage_(self, v15, v16, v17, v18, v19, v8);

    if (v20 != -1)
    {
      v21 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_containsObject_(self->_sectionTemplateDrawables, v22, v23, v24, v25, v26, v8);
  }

  else
  {
    v21 = 0;
  }

LABEL_8:

  return v21;
}

- (unint64_t)countOfSectionTemplateDrawables
{
  result = self->_sectionTemplateDrawables;
  if (result)
  {
    return objc_msgSend_count(result, a2, v2, v3, v4, v5);
  }

  return result;
}

- (id)sectionTemplateDrawablesSortedByZOrder:(id)order
{
  v64 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  if (orderCopy)
  {
    v52 = orderCopy;
    if (objc_msgSend_count(orderCopy, v5, v6, v7, v8, v9))
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v15 = objc_msgSend_count(v52, v10, v11, v12, v13, v14);
      sub_275FEC284(&v60, v15);
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v52;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, v18, v19, v20, &v56, v63, 16);
      if (v22)
      {
        v27 = *v57;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v57 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v56 + 1) + 8 * i);
            v30 = objc_msgSend_indexOfObjectIdenticalTo_(self->_sectionTemplateDrawables, v21, v23, v24, v25, v26, v29);
            if (v30 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v32 = v60;
              v31 = v61;
              v33 = v29;
              if (v31 != v32)
              {
                v34 = (v31 - v32) >> 4;
                do
                {
                  v35 = v34 >> 1;
                  v36 = (v32 + 16 * (v34 >> 1));
                  if (*v36 < v30 || v30 >= *v36 && v36[1] < v33)
                  {
                    v32 = (v36 + 2);
                    v35 = v34 + ~v35;
                  }

                  v34 = v35;
                }

                while (v35);
                v31 = v32;
              }

              v54 = v30;
              v37 = v33;
              v55 = v37;
              sub_275FEC340(&v60, v31, &v54);
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v23, v24, v25, v26, &v56, v63, 16);
        }

        while (v22);
      }

      if (v60 == v61)
      {
        v44 = 0;
      }

      else
      {
        v44 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v38, v39, v40, v41, v42, (v61 - v60) >> 4);
        v49 = v60;
        v50 = v61;
        while (v49 != v50)
        {
          objc_msgSend_addObject_(v44, v43, v45, v46, v47, v48, *(v49 + 8));
          v49 += 16;
        }
      }

      v54 = &v60;
      sub_275FEFFF0(&v54);
    }

    else
    {
      v44 = 0;
    }

    orderCopy = v52;
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (void)addSectionTemplateDrawable:(id)drawable atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c
{
  drawableCopy = drawable;
  contextCopy = context;
  if (!drawableCopy)
  {
    goto LABEL_14;
  }

  objc_msgSend_willModify(self, v10, v12, v13, v14, v15);
  if (!self->_sectionTemplateDrawables)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sectionTemplateDrawables = self->_sectionTemplateDrawables;
    self->_sectionTemplateDrawables = v21;

    if (c)
    {
      goto LABEL_8;
    }

LABEL_6:
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

    if (WeakRetained)
    {
      v24 = objc_loadWeakRetained(&self->_documentRoot);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(drawableCopy, v25, v26, v27, v28, v29, v24, contextCopy);
    }

    goto LABEL_8;
  }

  if (!c)
  {
    goto LABEL_6;
  }

LABEL_8:
  v31 = objc_msgSend_count(self->_sectionTemplateDrawables, v16, v17, v18, v19, v20);
  v36 = self->_sectionTemplateDrawables;
  if (v31 <= index)
  {
    objc_msgSend_addObject_(v36, v30, v32, v33, v34, v35, drawableCopy);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(v36, v30, v32, v33, v34, v35, drawableCopy, index);
  }

  if (!c)
  {
    v37 = objc_loadWeakRetained(&self->_documentRoot);

    if (v37)
    {
      v38 = objc_loadWeakRetained(&self->_documentRoot);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(drawableCopy, v39, v40, v41, v42, v43, v38, contextCopy);
    }
  }

LABEL_14:
}

- (void)addSectionTemplateDrawables:(id)drawables atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c
{
  cCopy = c;
  v37 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  contextCopy = context;
  if (index == 0xFFFFFFFF)
  {
    sectionTemplateDrawables = self->_sectionTemplateDrawables;
    if (sectionTemplateDrawables)
    {
      index = objc_msgSend_count(sectionTemplateDrawables, v11, v13, v14, v15, v16);
    }

    else
    {
      index = 0;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = drawablesCopy;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, v23, &v32, v36, 16);
  if (v25)
  {
    v30 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_addSectionTemplateDrawable_atIndex_insertContext_suppressDOLC_(self, v24, v26, v27, v28, v29, *(*(&v32 + 1) + 8 * i), index++, contextCopy, cCopy, v32);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, v26, v27, v28, v29, &v32, v36, 16);
    }

    while (v25);
  }
}

- (void)removeSectionTemplateDrawable:(id)drawable suppressDOLC:(BOOL)c
{
  drawableCopy = drawable;
  if (drawableCopy)
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9, v10);
    if (!c)
    {
      WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

      if (WeakRetained)
      {
        v17 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeRemovedFromDocumentRoot_(drawableCopy, v18, v19, v20, v21, v22, v17);
      }
    }

    objc_msgSend_removeObjectIdenticalTo_(self->_sectionTemplateDrawables, v11, v12, v13, v14, v15, drawableCopy);
    if (!c)
    {
      v28 = objc_loadWeakRetained(&self->_documentRoot);

      if (v28)
      {
        v29 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasRemovedFromDocumentRoot_(drawableCopy, v30, v31, v32, v33, v34, v29);
      }
    }

    if (!objc_msgSend_count(self->_sectionTemplateDrawables, v23, v24, v25, v26, v27))
    {
      sectionTemplateDrawables = self->_sectionTemplateDrawables;
      self->_sectionTemplateDrawables = 0;
    }
  }
}

- (id)topLevelParentInfoForInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v11 = objc_msgSend_bodyStorage(WeakRetained, v6, v7, v8, v9, v10);
  v12 = infoCopy;
  while (1)
  {
    v13 = v12;

    v20 = objc_msgSend_parentInfo(v13, v14, v15, v16, v17, v18);
    if (!v20)
    {
      break;
    }

    v25 = objc_msgSend_parentInfo(v13, v19, v21, v22, v23, v24);

    if (v25 == v11)
    {
      break;
    }

    v12 = objc_msgSend_parentInfo(v13, v26, v27, v28, v29, v30);
    WeakRetained = v13;
  }

  return v13;
}

- (double)pHeightOfHeaderFooter:(int64_t)footer
{
  v3 = 0;
  v4 = self->_headerFooters[footer];
  v5 = 0.0;
  do
  {
    v6 = v4[v3];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277D80F30]);
      v13 = objc_msgSend_initWithStorage_(v7, v8, v9, v10, v11, v12, v6);
      objc_msgSend_measuredSizeWithFlags_(v13, v14, v15, v16, v17, v18, 15);
      if (v19 > v5)
      {
        v5 = v19;
      }
    }

    ++v3;
  }

  while (v3 != 3);
  return v5;
}

- (TSKDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (double)bodyWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  objc_msgSend_bodyWidth(WeakRetained, v3, v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

- (BOOL)usesSingleHeaderFooter
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v8 = objc_msgSend_usesSingleHeaderFooter(WeakRetained, v3, v4, v5, v6, v7);

  return v8;
}

- (id)headerFooter:(int64_t)footer fragmentAtIndex:(int64_t)index
{
  if (index >= 3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPSectionTemplatePage headerFooter:fragmentAtIndex:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v20, v21, v22, v23, v12, v18, 543, 0, "bad header index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  v29 = self->_headerFooters[footer][index];

  return v29;
}

- (int64_t)headerFooterTypeForStorage:(id)storage
{
  storageCopy = storage;
  v5 = self->_headerFooters[0][0];
  if (v5)
  {
    v6 = v5 == storageCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((v7 = self->_headerFooters[0][1]) != 0 ? (v8 = v7 == storageCopy) : (v8 = 0), v8 || ((v9 = self->_headerFooters[0][2]) != 0 ? (v10 = v9 == storageCopy) : (v10 = 0), v10)))
  {
    v17 = 0;
  }

  else
  {
    v11 = self->_headerFooters[1][0];
    if (v11)
    {
      v12 = v11 == storageCopy;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || ((v13 = self->_headerFooters[1][1]) != 0 ? (v14 = v13 == storageCopy) : (v14 = 0), v14 || ((v15 = self->_headerFooters[1][2]) != 0 ? (v16 = v15 == storageCopy) : (v16 = 0), v16)))
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  return v17;
}

- (int64_t)headerFragmentIndexForStorage:(id)storage
{
  storageCopy = storage;
  v5 = self->_headerFooters[0][0];
  if (v5)
  {
    v6 = v5 == storageCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((v7 = self->_headerFooters[1][0]) != 0 ? (v8 = v7 == storageCopy) : (v8 = 0), v8))
  {
    v17 = 0;
  }

  else
  {
    v9 = self->_headerFooters[0][1];
    if (v9)
    {
      v10 = v9 == storageCopy;
    }

    else
    {
      v10 = 0;
    }

    if (v10 || ((v11 = self->_headerFooters[1][1]) != 0 ? (v12 = v11 == storageCopy) : (v12 = 0), v12))
    {
      v17 = 1;
    }

    else
    {
      v13 = self->_headerFooters[0][2];
      if (v13)
      {
        v14 = v13 == storageCopy;
      }

      else
      {
        v14 = 0;
      }

      if (v14 || ((v15 = self->_headerFooters[1][2]) != 0 ? (v16 = v15 == storageCopy) : (v16 = 0), v16))
      {
        v17 = 2;
      }

      else
      {
        v17 = -1;
      }
    }
  }

  return v17;
}

- (NSEnumerator)headerFooterFragmentEnumerator
{
  v3 = [TPHeaderFooterFragmentEnumerator alloc];
  v9 = objc_msgSend_initWithSectionTemplatePage_(v3, v4, v5, v6, v7, v8, self);

  return v9;
}

- (void)setParentStorage:(id)storage
{
  v4 = 0;
  headerFooters = self->_headerFooters;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = headerFooters[v4];
    do
    {
      v10 = v9[v7];
      objc_msgSend_setParentInfo_(v10, v11, v12, v13, v14, v15, storage);

      ++v7;
    }

    while (v7 != 3);
    v6 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_p_makeHeadersFootersPerformSelector_withStylesheet_withMapper_(self, v7, v8, v9, v10, v11, sel_adoptStylesheet_withMapper_, stylesheetCopy, mapperCopy);
  objc_msgSend_p_makeDrawablesPerformSelector_withStylesheet_withMapper_(self, v12, v13, v14, v15, v16, sel_adoptStylesheet_withMapper_, stylesheetCopy, mapperCopy);
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_msgSend_i_setDocumentRoot_(self, v8, v9, v10, v11, v12, v7);

  objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_context_(self, v13, v14, v15, v16, v17, sel_willBeAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy);
  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_context_(self, v18, v19, v20, v21, v22, sel_willBeAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v12 = objc_msgSend_context(rootCopy, v7, v8, v9, v10, v11);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v13, v14, v15, v16, v17, v12);

  if (self->_headerFooters[0][0])
  {
    objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_context_(self, v18, v19, v20, v21, v22, sel_wasAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy);
  }

  else
  {
    objc_msgSend_willModify(self, v18, v19, v20, v21, v22);
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    v34 = objc_msgSend_stylesheet(WeakRetained, v29, v30, v31, v32, v33);
    v35 = objc_loadWeakRetained(&self->_documentRoot);
    v41 = objc_msgSend_theme(v35, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_headerAndFooterStyle(v41, v42, v43, v44, v45, v46);
    objc_msgSend_i_createHeadersFooters_stylesheet_paragraphStyle_context_mayAlreadyExist_(self, v48, v49, v50, v51, v52, 0, v34, v47, contextCopy, 0);

    v53 = objc_loadWeakRetained(&self->_documentRoot);
    v59 = objc_msgSend_stylesheet(v53, v54, v55, v56, v57, v58);
    v60 = objc_loadWeakRetained(&self->_documentRoot);
    v66 = objc_msgSend_theme(v60, v61, v62, v63, v64, v65);
    v72 = objc_msgSend_headerAndFooterStyle(v66, v67, v68, v69, v70, v71);
    objc_msgSend_i_createHeadersFooters_stylesheet_paragraphStyle_context_mayAlreadyExist_(self, v73, v74, v75, v76, v77, 1, v59, v72, contextCopy, 0);
  }

  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_context_(self, v23, v24, v25, v26, v27, sel_wasAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_(self, v4, v5, v6, v7, v8, sel_willBeRemovedFromDocumentRoot_);
  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_(self, v9, v10, v11, v12, v13, sel_willBeRemovedFromDocumentRoot_, rootCopy);
  v19 = objc_msgSend_context(rootCopy, v14, v15, v16, v17, v18);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v20, v21, v22, v23, v24, v19);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_(self, v4, v5, v6, v7, v8, sel_wasRemovedFromDocumentRoot_);
  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_(self, v9, v10, v11, v12, v13, sel_wasRemovedFromDocumentRoot_, rootCopy);
  objc_msgSend_i_setDocumentRoot_(self, v14, v15, v16, v17, v18, 0);
}

- (id)childEnumerator
{
  v7 = objc_msgSend_aggregateEnumeratorWithObjects_(MEMORY[0x277D81148], a2, v2, v3, v4, v5, 0);
  v13 = objc_msgSend_p_headerAndFooterStorages(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_objectEnumerator(v13, v14, v15, v16, v17, v18);

  if (v19)
  {
    objc_msgSend_addObject_(v7, v20, v21, v22, v23, v24, v19);
  }

  v30 = objc_msgSend_sectionTemplateDrawables(self, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_objectEnumerator(v30, v31, v32, v33, v34, v35);

  if (v36)
  {
    objc_msgSend_addObject_(v7, v37, v38, v39, v40, v41, v36);
  }

  return v7;
}

- (id)objectUUIDPath
{
  WeakRetained = objc_loadWeakRetained(&self->_section);
  v9 = objc_msgSend_objectUUIDPath(WeakRetained, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_objectUUID(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_UUIDPathByAppendingUUID_(v9, v16, v17, v18, v19, v20, v15);

  return v21;
}

- (void)i_setHeaderFooter:(int64_t)footer storage:(id)storage fragmentIndex:(int64_t)index
{
  storageCopy = storage;
  if (storageCopy)
  {
    while (1)
    {
      if ((index || footer) && self->_headerFooters[0][0] == storageCopy)
      {
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, v13, "[TPSectionTemplatePage i_setHeaderFooter:storage:fragmentIndex:]");
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 676, 0, "Setting header/footer (type=%lu, index=%lu) to already known header/footer (type=%lu, index=%lu)", footer, index, 0, 0);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
      }

      operator++();
    }
  }

  v32 = self->_headerFooters[footer];
  v33 = v32[index];
  v32[index] = storageCopy;
}

- (void)i_addSectionTemplateDrawable:(id)drawable
{
  drawableCopy = drawable;
  sectionTemplateDrawables = self->_sectionTemplateDrawables;
  v12 = drawableCopy;
  if (!sectionTemplateDrawables)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_sectionTemplateDrawables;
    self->_sectionTemplateDrawables = v10;

    sectionTemplateDrawables = self->_sectionTemplateDrawables;
    drawableCopy = v12;
  }

  objc_msgSend_addObject_(sectionTemplateDrawables, drawableCopy, v5, v6, v7, v8, drawableCopy);
}

- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  contextCopy = context;
  v15 = 0;
  v16 = 1;
  do
  {
    v17 = v16;
    v18 = self->_headerFooters[v15];
    if (!*v18 || !v18[1] || !v18[2])
    {
      objc_msgSend_i_createHeadersFooters_stylesheet_paragraphStyle_context_mayAlreadyExist_(self, v9, v11, v12, v13, v14);
    }

    v16 = 0;
    v15 = 1;
  }

  while ((v17 & 1) != 0);
}

- (void)i_splitHeaderFooter:(id)footer storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width
{
  footerCopy = footer;
  contextCopy = context;
  if (footerCopy && objc_msgSend_length(footerCopy, footerCopy, v12, v13, v14, v15))
  {
    v20 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(footerCopy, footerCopy, v16, v17, v18, v19, 0, 0);
    v26 = objc_msgSend_intValueForProperty_(v20, v21, v22, v23, v24, v25, 86);
    if (v26 > 2)
    {
      if ((v26 - 3) > 1)
      {
        goto LABEL_12;
      }
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        v32 = 2;
        goto LABEL_11;
      }

      if (v26 == 2)
      {
        v32 = 1;
LABEL_11:
        objc_storeStrong(&storages[v32], footer);
      }

LABEL_12:

      goto LABEL_13;
    }

    v28.n128_f64[0] = width;
    objc_msgSend_p_splitHeaderFooterByTabs_storages_dolcContext_bodyWidth_(self, v27, v28, v29, v30, v31, footerCopy, storages, contextCopy);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)i_importHeaderFooter:(id)footer headerType:(int64_t)type dolcContext:(id)context splitHeaders:(BOOL)headers
{
  headersCopy = headers;
  v86 = *MEMORY[0x277D85DE8];
  footerCopy = footer;
  contextCopy = context;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v81 = footerCopy;
  v82 = contextCopy;
  if (headersCopy)
  {
    v13.n128_u64[0] = 0x407D400000000000;
    objc_msgSend_i_splitHeaderFooter_storages_dolcContext_bodyWidth_(self, v12, v13, v14, v15, v16, footerCopy, &v83, contextCopy, footerCopy);
  }

  else if (footerCopy)
  {
    v84 = footerCopy;
  }

  v17 = 0;
  v18 = (&self->super.super.isa + 3 * type);
  do
  {
    if (*(&v83 + v17))
    {
      WeakRetained = objc_loadWeakRetained(&self->_section);
      v25 = objc_msgSend_parentStorage(WeakRetained, v20, v21, v22, v23, v24);
      objc_msgSend_setParentInfo_(*(&v83 + v17), v26, v27, v28, v29, v30, v25);

      v31 = v18[10];
      v32 = objc_loadWeakRetained(&self->_documentRoot);
      LOBYTE(v25) = v32 == 0;

      if (v25)
      {
        objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v33, v34, v35, v36, v37, type, *(&v83 + v17), v17);
      }

      else
      {
        v38 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v31, v39, v40, v41, v42, v43, v38);

        v44 = *(&v83 + v17);
        v45 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v44, v46, v47, v48, v49, v50, v45, v82);

        objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v51, v52, v53, v54, v55, type, *(&v83 + v17), v17);
        v56 = v18[10];
        v57 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v56, v58, v59, v60, v61, v62, v57, v82);

        v63 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasRemovedFromDocumentRoot_(v31, v64, v65, v66, v67, v68, v63);
      }
    }

    else
    {
      v31 = objc_msgSend_headerFooter_fragmentAtIndex_(self, v12, v13, v14, v15, v16, type, v17);
      v74 = objc_msgSend_range(v31, v69, v70, v71, v72, v73);
      objc_msgSend_deleteRange_undoTransaction_(v31, v75, v76, v77, v78, v79, v74, v75, 0);
    }

    ++v17;
    ++v18;
  }

  while (v17 != 3);
  for (i = 16; i != -8; i -= 8)
  {
  }
}

- (void)i_copyHeadersAndFootersFrom:(id)from dolcContext:(id)context withBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v13 = 0;
  v14 = 1;
  do
  {
    v15 = 0;
    v80 = v14;
    v16 = (&self->super.super.isa + 3 * v13);
    do
    {
      v17 = objc_msgSend_headerFooter_fragmentAtIndex_(from, v7, v9, v10, v11, v12, v13, v15);
      v23 = objc_msgSend_length(v17, v18, v19, v20, v21, v22);
      v29 = objc_msgSend_context(self, v24, v25, v26, v27, v28);
      v35 = objc_msgSend_newSubstorageWithRange_context_flags_(v17, v30, v31, v32, v33, v34, 0, v23, v29, 3);

      WeakRetained = objc_loadWeakRetained(&self->_section);
      v42 = objc_msgSend_parentStorage(WeakRetained, v37, v38, v39, v40, v41);
      objc_msgSend_setParentInfo_(v35, v43, v44, v45, v46, v47, v42);

      v48 = v16[10];
      v49 = objc_loadWeakRetained(&self->_documentRoot);

      if (v49)
      {
        v55 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v48, v56, v57, v58, v59, v60, v55);

        v61 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v35, v62, v63, v64, v65, v66, v61, contextCopy);
      }

      objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v50, v51, v52, v53, v54, v13, v35, v15);
      v67 = objc_loadWeakRetained(&self->_documentRoot);

      if (v67)
      {
        v68 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v35, v69, v70, v71, v72, v73, v68, contextCopy);

        v74 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasRemovedFromDocumentRoot_(v48, v75, v76, v77, v78, v79, v74);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, v17, v35);
      }

      ++v15;
      ++v16;
    }

    while (v15 != 3);
    v14 = 0;
    v13 = 1;
  }

  while ((v80 & 1) != 0);
}

- (BOOL)p_isInDocument
{
  v6 = objc_msgSend_section(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_tsp_isInDocument(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)p_headerAndFooterStorages
{
  v2 = 0;
  v3 = 0;
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  headerFooters = self->_headerFooters;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = headerFooters[v2];
    do
    {
      v9 = v8[v6];
      v10 = v9;
      if (v10)
      {
        objc_storeStrong(v18 + v3++, v9);
      }

      ++v6;
    }

    while (v6 != 3);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  if (v3)
  {
    v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v15, v18, v3);
  }

  for (i = 40; i != -8; i -= 8)
  {
  }

  return v3;
}

- (void)p_splitHeaderFooterByTabs:(id)tabs storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width
{
  v135 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  contextCopy = context;
  if (tabsCopy)
  {
    context = objc_autoreleasePoolPush();
    v15 = objc_msgSend_string(tabsCopy, v10, v11, v12, v13, v14);
    v121 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(tabsCopy, v16, v17, v18, v19, v20, 0, 0);
    selfCopy = self;
    v126 = objc_msgSend_length(tabsCopy, v21, v22, v23, v24, v25);
    v30 = 0;
    v31 = 0;
    v122 = 0;
    v124 = 0;
    v32 = 0;
    v33 = 1;
    v34 = xmmword_27605FD10;
    while (1)
    {
      if (v33)
      {
        v122 = 0;
        v31 = 0;
        v131 = v124;
        v34 = xmmword_27605FD10;
        v132 = xmmword_27605FD10;
        v133 = xmmword_27605FD10;
        v134 = 0;
      }

      if (v32 >= v126)
      {
        break;
      }

      v35 = objc_msgSend_characterAtIndex_(v15, v26, v34, v27, v28, v29, v32);
      v33 = 0;
      v129 = v35;
      if (v35 > 9)
      {
        if (v35 == 10 || v35 == 8232)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!v35)
        {
          goto LABEL_15;
        }

        if (v35 == 9)
        {
          *(&v131 + 2 * v31 + 1) = v32 - *(&v131 + 2 * v31);
          v34.n128_f64[0] = width;
          v36 = objc_msgSend_p_headerFragmentIndexForTabIndex_paragraphStyle_bodyWidth_(selfCopy, v26, v34, v27, v28, v29, v122, v121);
          v37 = v36 - v31;
          if (v36 > v31)
          {
            v38 = &v133 + v31;
            do
            {
              *(v38 - 1) = v32;
              *v38++ = 0;
              --v37;
            }

            while (v37);
            v31 = v36;
          }

          v33 = 0;
          ++v122;
        }
      }

LABEL_33:
      if (++v32 > v126)
      {

        objc_autoreleasePoolPop(context);
        goto LABEL_38;
      }
    }

    v129 = 0;
LABEL_15:
    v39 = 0;
    v124 = v32 + 1;
    v125 = v31;
    *(&v131 + 2 * v31 + 1) = v32 - *(&v131 + 2 * v31);
    memset(v130, 0, sizeof(v130));
    v40 = &v132;
    v41 = &v132;
    do
    {
      v43 = *v41++;
      v42 = v43;
      if (v43)
      {
        v44 = *(v40 - 1);
        if (!v30)
        {
          v45 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v26, v34, v27, v28, v29);
          v30 = objc_msgSend_invertedSet(v45, v46, v47, v48, v49, v50);
        }

        v51 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v15, v26, v34, v27, v28, v29, v30, 2, v44, v42);
        if (v51 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v52 = v26;
          v137.location = objc_msgSend_rangeOfCharacterFromSet_options_range_(v15, v26, v34, v27, v28, v29, v30, 4, v44, v42);
          v137.length = v53;
          v136.location = v51;
          v136.length = v52;
          v54 = NSUnionRange(v136, v137);
          v59 = objc_msgSend_context(selfCopy, v54.length, v55, v56, v57, v58);
          v65 = objc_msgSend_newSubstorageWithRange_context_flags_(tabsCopy, v60, v61, v62, v63, v64, v54.location, v54.length, v59, 1);

          v66 = v130[v39];
          v130[v39] = v65;
        }
      }

      ++v39;
      v40 = v41;
    }

    while (v39 != 3);
    v67 = [TPHeaderFragmentImportHelper alloc];
    v73 = objc_msgSend_context(selfCopy, v68, v69, v70, v71, v72);
    v79 = objc_msgSend_context(selfCopy, v74, v75, v76, v77, v78);
    v85 = objc_msgSend_initWithFragments_storageContext_objectsContext_(v67, v80, v81, v82, v83, v84, v130, v73, v79);

    objc_msgSend_processFragmentsForSpaceFormatting(v85, v86, v87, v88, v89, v90);
    v91 = 0;
    storagesCopy = storages;
    do
    {
      v93 = v130[v91];
      v95 = v93;
      if (v129)
      {
        v100 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v94, v96, v97, v98, v99, &v129, 1);
        v106 = objc_msgSend_length(v95, v101, v102, v103, v104, v105);
        objc_msgSend_insertString_atCharIndex_undoTransaction_(v95, v107, v108, v109, v110, v111, v100, v106, 0);
      }

      v112 = *storagesCopy;
      if (*storagesCopy)
      {
        if (v130[v91])
        {
          v113 = objc_msgSend_length(*storagesCopy, v94, v96, v97, v98, v99);
          objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v112, v114, v115, v116, v117, v118, v95, v113, contextCopy, 0);
        }
      }

      else
      {
        objc_storeStrong(storagesCopy, v93);
      }

      ++v91;
      ++storagesCopy;
    }

    while (v91 != 3);

    for (i = 2; i != -1; --i)
    {
    }

    v33 = 1;
    v31 = v125;
    goto LABEL_33;
  }

LABEL_38:
}

- (int64_t)p_headerFragmentIndexForTabIndex:(unsigned int)index paragraphStyle:(id)style bodyWidth:(double)width
{
  styleCopy = style;
  v13 = styleCopy;
  if (styleCopy)
  {
    objc_msgSend_floatValueForProperty_(styleCopy, v8, v9, v10, v11, v12, 83);
    v15 = v14.n128_f32[0];
    v20 = objc_msgSend_valueForProperty_(v13, v16, v14, v17, v18, v19, 84);
    v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);
    v32 = index - v26;
    if (index >= v26)
    {
      if (v26)
      {
        v42 = objc_msgSend_tabAtIndex_(v20, v27, v28, v29, v30, v31, (v26 - 1));
        objc_msgSend_position(v42, v43, v44, v45, v46, v47);
        v49 = v48;
      }

      else
      {
        v49 = 0.0;
      }

      v40 = (floor(v49 / v15) + 1.0) * v15 + v32 * v15;
    }

    else
    {
      v33 = objc_msgSend_tabAtIndex_(v20, v27, v28, v29, v30, v31);
      objc_msgSend_position(v33, v34, v35, v36, v37, v38);
      v40 = v39;
    }

    v50 = width / 3.0;
    if (v40 <= width / 3.0)
    {
      v41 = 0;
    }

    else if (v40 < v50 + v50 && v50 < v40)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (void)i_createHeadersFooters:(int64_t)footers stylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context mayAlreadyExist:(BOOL)exist
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  contextCopy = context;
  v19 = 0;
  v20 = self->_headerFooters[footers];
  do
  {
    if (!exist && v20[v19])
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, v18, "[TPSectionTemplatePage i_createHeadersFooters:stylesheet:paragraphStyle:context:mayAlreadyExist:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v29, v30, v31, v32, v33, v22, v28, 982, 0, "overwriting non-nil header or footer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37, v38);
    }

    if (!v20[v19])
    {
      v39 = objc_alloc(MEMORY[0x277D80F28]);
      v45 = objc_msgSend_context(self, v40, v41, v42, v43, v44);
      v51 = objc_msgSend_initialListStyle(styleCopy, v46, v47, v48, v49, v50);
      v57 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v39, v52, v53, v54, v55, v56, v45, 0, 1, stylesheetCopy, styleCopy, v51, 0, 0);

      WeakRetained = objc_loadWeakRetained(&self->_section);
      v64 = objc_msgSend_parentStorage(WeakRetained, v59, v60, v61, v62, v63);
      objc_msgSend_setParentInfo_(v57, v65, v66, v67, v68, v69, v64);

      objc_msgSend_p_filterParagraphStylesOnHeaderFooterStorage_stylesheet_(self, v70, v71, v72, v73, v74, v57, stylesheetCopy);
      v75 = objc_loadWeakRetained(&self->_documentRoot);

      if (v75)
      {
        v81 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v57, v82, v83, v84, v85, v86, v81, contextCopy);

        v87 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v57, v88, v89, v90, v91, v92, v87, contextCopy);
      }

      objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v76, v77, v78, v79, v80, footers, v57, v19);
    }

    ++v19;
  }

  while (v19 != 3);
}

- (void)p_makeHeadersFootersPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v14 = 0;
  headerFooters = self->_headerFooters;
  do
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[v14 + 3], v8, v10, v11, v12, v13, selector, stylesheetCopy, mapperCopy);
    ++v14;
  }

  while (v14 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[i], v8, v10, v11, v12, v13, selector, stylesheetCopy, mapperCopy);
  }
}

- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v14 = 0;
  headerFooters = self->_headerFooters;
  do
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[v14 + 3], v8, v10, v11, v12, v13, selector, rootCopy, contextCopy);
    ++v14;
  }

  while (v14 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[i], v8, v10, v11, v12, v13, selector, rootCopy, contextCopy);
  }
}

- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root
{
  rootCopy = root;
  v11 = 0;
  headerFooters = self->_headerFooters;
  do
  {
    objc_msgSend_performSelector_withObject_((*headerFooters)[v11 + 3], v6, v7, v8, v9, v10, selector, rootCopy);
    ++v11;
  }

  while (v11 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_performSelector_withObject_((*headerFooters)[i], v6, v7, v8, v9, v10, selector, rootCopy);
  }
}

- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_sectionTemplateDrawables;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v24, v28, 16);
  if (v17)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_performSelector_withObject_withObject_(*(*(&v24 + 1) + 8 * v23++), v16, v18, v19, v20, v21, selector, rootCopy, contextCopy, v24);
      }

      while (v17 != v23);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v24, v28, 16);
    }

    while (v17);
  }
}

- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root
{
  v26 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_sectionTemplateDrawables;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, v12, &v21, v25, 16);
  if (v14)
  {
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_performSelector_withObject_(*(*(&v21 + 1) + 8 * v20++), v13, v15, v16, v17, v18, selector, rootCopy, v21);
      }

      while (v14 != v20);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v15, v16, v17, v18, &v21, v25, 16);
    }

    while (v14);
  }
}

- (void)p_makeDrawablesPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v29 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_sectionTemplateDrawables;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v24, v28, 16);
  if (v17)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_performSelector_withObject_withObject_(*(*(&v24 + 1) + 8 * v23++), v16, v18, v19, v20, v21, selector, stylesheetCopy, mapperCopy, v24);
      }

      while (v17 != v23);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v24, v28, 16);
    }

    while (v17);
  }
}

- (void)i_setPageTemplateUUIDPath:(id)path
{
  pathCopy = path;
  objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
  objc_storeStrong(&self->_pageTemplateUUIDPath, path);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  if (WeakRetained)
  {
    pageTemplateUUIDPath = self->_pageTemplateUUIDPath;

    if (pageTemplateUUIDPath)
    {
      objc_opt_class();
      v17 = objc_msgSend_documentRoot(self, v12, v13, v14, v15, v16);
      v23 = objc_msgSend_context(v17, v18, v19, v20, v21, v22);
      v29 = objc_msgSend_objectWithUUIDPath_(v23, v24, v25, v26, v27, v28, self->_pageTemplateUUIDPath);
      v30 = TSUDynamicCast();

      if (!v30)
      {
        v36 = MEMORY[0x277D81150];
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, v35, "[TPSectionTemplatePage i_setPageTemplateUUIDPath:]");
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v44, v45, v46, v47, v48, v37, v43, 1065, 0, "invalid nil value for '%{public}s'", "pageTemplate");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52, v53);
      }
    }
  }
}

- (id)i_pageTemplate
{
  objc_opt_class();
  v8 = objc_msgSend_context(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_objectWithUUIDPath_(v8, v9, v10, v11, v12, v13, self->_pageTemplateUUIDPath);
  v15 = TSUDynamicCast();

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v10 = objc_msgSend_descriptionWithObject_class_(v3, v5, v6, v7, v8, v9, self, v4);
  v11 = TSUObjectReferenceDescription();
  v12 = TSUObjectReferenceDescription();
  v13 = TSUObjectReferenceDescription();
  objc_msgSend_addField_format_(v10, v14, v15, v16, v17, v18, @"header", @"[ %@ %@ %@ ]", v11, v12, v13);

  v19 = TSUObjectReferenceDescription();
  v20 = TSUObjectReferenceDescription();
  v21 = TSUObjectReferenceDescription();
  objc_msgSend_addField_format_(v10, v22, v23, v24, v25, v26, @"footer", @"[ %@ %@ %@ ]", v19, v20, v21);

  pageTemplateUUIDPath = self->_pageTemplateUUIDPath;
  if (pageTemplateUUIDPath)
  {
    v33 = objc_msgSend_UUIDPathString(pageTemplateUUIDPath, v27, v28, v29, v30, v31);
    objc_msgSend_addField_value_(v10, v34, v35, v36, v37, v38, @"pageTemplateUUIDPath", v33);
  }

  v39 = objc_msgSend_descriptionString(v10, v27, v28, v29, v30, v31);

  return v39;
}

- (TPSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

@end