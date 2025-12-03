@interface TPPageTemplate
+ (BOOL)isUserDefinedTag:(id)tag;
- (BOOL)containsModelObject:(id)object;
- (BOOL)isUniqueTag:(id)tag;
- (NSArray)childInfos;
- (NSString)description;
- (TPPageTemplate)initWithContext:(id)context name:(id)name placeholderDrawables:(id)drawables placeholderTagsInZOrder:(id)order sectionTemplateDrawables:(id)templateDrawables;
- (id)boxedObjectForProperty:(int)property;
- (id)childEnumerator;
- (id)objectForProperty:(int)property;
- (id)tagForDrawable:(id)drawable;
- (id)topLevelParentInfoForInfo:(id)info;
- (id)userDefinedTagForDrawable:(id)drawable;
- (int)intValueForProperty:(int)property;
- (unint64_t)numberOfDerivedPagesInDocument;
- (unint64_t)templateIndex;
- (unint64_t)templatePreviewPageIndex;
- (void)addPlaceholderDrawable:(id)drawable afterDrawable:(id)afterDrawable;
- (void)applyTag:(id)tag toPlaceholder:(id)placeholder;
- (void)enumeratePlaceholderDrawablesWithBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBackgroundFill:(id)fill;
- (void)setGeometry:(id)geometry;
- (void)setName:(id)name;
- (void)setParentInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TPPageTemplate

- (TPPageTemplate)initWithContext:(id)context name:(id)name placeholderDrawables:(id)drawables placeholderTagsInZOrder:(id)order sectionTemplateDrawables:(id)templateDrawables
{
  contextCopy = context;
  nameCopy = name;
  drawablesCopy = drawables;
  orderCopy = order;
  v125 = contextCopy;
  templateDrawablesCopy = templateDrawables;
  v128.receiver = self;
  v128.super_class = TPPageTemplate;
  v16 = [(TPPageTemplate *)&v128 initWithContext:contextCopy];
  if (v16)
  {
    if (templateDrawablesCopy)
    {
      objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v15, v17, v18, v19, v20, templateDrawablesCopy);
    }

    else
    {
      objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v15, v17, v18, v19, v20, MEMORY[0x277CBEBF8]);
    }
    v21 = ;
    sectionTemplateDrawables = v16->_sectionTemplateDrawables;
    v16->_sectionTemplateDrawables = v21;

    v28 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v23, v24, v25, v26, v27, drawablesCopy);
    placeholderDrawables = v16->_placeholderDrawables;
    v16->_placeholderDrawables = v28;

    v30 = [TPDrawablesZOrder alloc];
    v36 = objc_msgSend_initWithContext_(v30, v31, v32, v33, v34, v35, contextCopy);
    drawablesZOrder = v16->_drawablesZOrder;
    v16->_drawablesZOrder = v36;

    objc_storeStrong(&v16->_name, name);
    v43 = 0;
    v16->_headersFootersMatchPreviousPage = 1;
    v16->_hideHeadersFooters = 0;
    v44 = 0x277D81000uLL;
    v127 = drawablesCopy;
    while (v43 < objc_msgSend_count(orderCopy, v38, v39, v40, v41, v42))
    {
      v50 = objc_msgSend_objectAtIndexedSubscript_(orderCopy, v45, v46, v47, v48, v49, v43);
      v57 = objc_msgSend_objectForKeyedSubscript_(drawablesCopy, v51, v52, v53, v54, v55, v50);
      if (v57)
      {
        objc_msgSend_insertDrawable_atZOrder_(v16->_drawablesZOrder, v56, v58, v59, v60, v61, v57, v43);
      }

      else
      {
        v62 = *(v44 + 336);
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v58, v59, v60, v61, "[TPPageTemplate initWithContext:name:placeholderDrawables:placeholderTagsInZOrder:sectionTemplateDrawables:]");
        v64 = v44;
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v71, v72, v73, v74, v75, v63, v70, 106, 0, "invalid nil value for '%{public}s'", "drawable");

        v44 = v64;
        v76 = *(v64 + 336);
        drawablesCopy = v127;
        objc_msgSend_logBacktraceThrottled(v76, v77, v78, v79, v80, v81);
      }

      ++v43;
    }

    v82 = objc_msgSend_drawableCount(v16->_drawablesZOrder, v45, v46, v47, v48, v49);
    if (v82 != objc_msgSend_count(v16->_placeholderDrawables, v83, v84, v85, v86, v87))
    {
      v93 = *(v44 + 336);
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, v92, "[TPPageTemplate initWithContext:name:placeholderDrawables:placeholderTagsInZOrder:sectionTemplateDrawables:]");
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
      v106 = objc_msgSend_count(v16->_placeholderDrawables, v101, v102, v103, v104, v105);
      v112 = objc_msgSend_drawableCount(v16->_drawablesZOrder, v107, v108, v109, v110, v111);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v113, v114, v115, v116, v117, v94, v100, 111, 0, "The count of placeholders (%lu) doesn't match the count of z-orders (%lu)", v106, v112);

      objc_msgSend_logBacktraceThrottled(*(v44 + 336), v118, v119, v120, v121, v122);
    }
  }

  return v16;
}

- (void)setBackgroundFill:(id)fill
{
  fillCopy = fill;
  if (self->_backgroundFill != fillCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11, v12, v13);

    if (v14 == fillCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = fillCopy;
    }

    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v15;
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
  name = self->_name;
  self->_name = nameCopy;
}

- (BOOL)isUniqueTag:(id)tag
{
  v7 = objc_msgSend_objectForKey_(self->_placeholderDrawables, a2, v3, v4, v5, v6, tag);
  v8 = v7 == 0;

  return v8;
}

- (id)userDefinedTagForDrawable:(id)drawable
{
  v7 = objc_msgSend_tagForDrawable_(self, a2, v3, v4, v5, v6, drawable);
  v8 = objc_opt_class();
  if (objc_msgSend_isUserDefinedTag_(v8, v9, v10, v11, v12, v13, v7))
  {
    v14 = v7;
  }

  else
  {
    v14 = &stru_288501738;
  }

  v15 = v14;

  return v14;
}

- (id)tagForDrawable:(id)drawable
{
  drawableCopy = drawable;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_275FF1A38;
  v21 = sub_275FF1A48;
  v22 = 0;
  placeholderDrawables = self->_placeholderDrawables;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275FF1A50;
  v14[3] = &unk_27A6A89C8;
  v15 = drawableCopy;
  v16 = &v17;
  v6 = drawableCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(placeholderDrawables, v7, v8, v9, v10, v11, v14);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)enumeratePlaceholderDrawablesWithBlock:(id)block
{
  blockCopy = block;
  placeholderDrawables = self->_placeholderDrawables;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275FF1B88;
  v12[3] = &unk_27A6A89F0;
  v12[4] = self;
  v13 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(placeholderDrawables, v7, v8, v9, v10, v11, v12);
}

- (void)applyTag:(id)tag toPlaceholder:(id)placeholder
{
  tagCopy = tag;
  placeholderCopy = placeholder;
  objc_msgSend_willModify(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_tagForDrawable_(self, v12, v13, v14, v15, v16, placeholderCopy);
  if (v18)
  {
    objc_msgSend_removeObjectForKey_(self->_placeholderDrawables, v17, v19, v20, v21, v22, v18);
  }

  objc_msgSend_setObject_forKey_(self->_placeholderDrawables, v17, v19, v20, v21, v22, placeholderCopy, tagCopy);
}

- (unint64_t)templateIndex
{
  objc_opt_class();
  v8 = objc_msgSend_context(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_documentRoot(v8, v9, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  if (v15)
  {
    v21 = objc_msgSend_pageTemplates(v15, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_indexOfObject_(v21, v22, v23, v24, v25, v26, self);
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v27;
}

- (unint64_t)templatePreviewPageIndex
{
  if (objc_msgSend_templateIndex(self, a2, v2, v3, v4, v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return MEMORY[0x2821F9670](TPPageInfo, sel_pageIndexFromPageTemplateIndex_, v6, v7, v8, v9);
}

- (unint64_t)numberOfDerivedPagesInDocument
{
  v43 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v8 = objc_msgSend_context(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_documentRoot(v8, v9, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  if (v15)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = objc_msgSend_sections(v15, v16, 0, v17, v18, v19, 0);
    v26 = 0;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, v22, v23, v24, v25, &v38, v42, 16);
    if (v28)
    {
      v33 = *v39;
      do
      {
        v34 = 0;
        do
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v20);
          }

          v35 = objc_msgSend_pageTemplate(*(*(&v38 + 1) + 8 * v34), v27, v29, v30, v31, v32);
          v36 = v35 == self;

          v26 += v36;
          ++v34;
        }

        while (v28 != v34);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v27, v29, v30, v31, v32, &v38, v42, 16);
      }

      while (v28);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)addPlaceholderDrawable:(id)drawable afterDrawable:(id)afterDrawable
{
  drawableCopy = drawable;
  afterDrawableCopy = afterDrawable;
  objc_msgSend_setParentInfo_(drawableCopy, v7, v8, v9, v10, v11, self);
  v17 = objc_msgSend_objectUUID(drawableCopy, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_UUIDString(v17, v18, v19, v20, v21, v22);

  v29 = objc_msgSend_objectForKey_(self->_placeholderDrawables, v24, v25, v26, v27, v28, v23);

  if (v29)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "[TPPageTemplate addPlaceholderDrawable:afterDrawable:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
    v48 = objc_msgSend_name(self, v43, v44, v45, v46, v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v49, v50, v51, v52, v53, v36, v42, 227, 0, "Adding a placeholder drawable into a page template when that placeholder is already in the page template. Page Template: %@, Drawable Tag: %@", v48, v23);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57, v58);
  }

  objc_msgSend_setObject_forKey_(self->_placeholderDrawables, v30, v31, v32, v33, v34, drawableCopy, v23);
  if (afterDrawableCopy)
  {
    v64 = objc_msgSend_zOrderOfDrawable_(self->_drawablesZOrder, v59, v60, v61, v62, v63, afterDrawableCopy);
    if (v64 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertDrawable_atZOrder_(self->_drawablesZOrder, v65, v66, v67, v68, v69, drawableCopy, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      objc_msgSend_insertDrawable_atZOrder_(self->_drawablesZOrder, v65, v66, v67, v68, v69, drawableCopy, v64 + 1);
    }
  }

  else
  {
    objc_msgSend_insertDrawable_atZOrder_(self->_drawablesZOrder, v59, v60, v61, v62, v63, drawableCopy, 0);
  }
}

- (id)childEnumerator
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v13 = objc_msgSend_allValues(self->_placeholderDrawables, v8, v9, v10, v11, v12);
  objc_msgSend_addObjectsFromArray_(v7, v14, v15, v16, v17, v18, v13);

  objc_msgSend_addObjectsFromArray_(v7, v19, v20, v21, v22, v23, self->_sectionTemplateDrawables);
  v29 = objc_msgSend_objectEnumerator(v7, v24, v25, v26, v27, v28);

  return v29;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v56 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = objc_msgSend_allValues(self->_placeholderDrawables, v8, 0, v9, v10, v11);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v50, v55, 16);
  if (v19)
  {
    v24 = *v51;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v12);
        }

        v26 = *(*(&v50 + 1) + 8 * i);
        objc_msgSend_setParentInfo_(v26, v18, v20, v21, v22, v23, self);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v26, v27, v28, v29, v30, v31, rootCopy, contextCopy);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v20, v21, v22, v23, &v50, v55, 16);
    }

    while (v19);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v32 = self->_sectionTemplateDrawables;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, v37, &v46, v54, 16);
  if (v39)
  {
    v44 = *v47;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v47 != v44)
        {
          objc_enumerationMutation(v32);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v46 + 1) + 8 * j), v38, v40, v41, v42, v43, rootCopy, contextCopy, v46);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, v40, v41, v42, v43, &v46, v54, 16);
    }

    while (v39);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v13 = objc_msgSend_context(rootCopy, v8, v9, v10, v11, v12);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v14, v15, v16, v17, v18, v13);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = objc_msgSend_allValues(self->_placeholderDrawables, v19, 0, v20, v21, v22);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, v28, &v55, v60, 16);
  if (v30)
  {
    v35 = *v56;
    do
    {
      v36 = 0;
      do
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v55 + 1) + 8 * v36++), v29, v31, v32, v33, v34, rootCopy, contextCopy);
      }

      while (v30 != v36);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, v31, v32, v33, v34, &v55, v60, 16);
    }

    while (v30);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = self->_sectionTemplateDrawables;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, v39, v40, v41, v42, &v51, v59, 16);
  if (v44)
  {
    v49 = *v52;
    do
    {
      v50 = 0;
      do
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(v37);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v51 + 1) + 8 * v50++), v43, v45, v46, v47, v48, rootCopy, contextCopy, v51);
      }

      while (v44 != v50);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v43, v45, v46, v47, v48, &v51, v59, 16);
    }

    while (v44);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v58 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = objc_msgSend_allValues(self->_placeholderDrawables, v5, 0, v6, v7, v8);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v52, v57, 16);
  if (v16)
  {
    v21 = *v53;
    do
    {
      v22 = 0;
      do
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v52 + 1) + 8 * v22++), v15, v17, v18, v19, v20, rootCopy);
      }

      while (v16 != v22);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v52, v57, 16);
    }

    while (v16);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = self->_sectionTemplateDrawables;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, v28, &v48, v56, 16);
  if (v30)
  {
    v35 = *v49;
    do
    {
      v36 = 0;
      do
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v48 + 1) + 8 * v36++), v29, v31, v32, v33, v34, rootCopy, v48);
      }

      while (v30 != v36);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, v31, v32, v33, v34, &v48, v56, 16);
    }

    while (v30);
  }

  v42 = objc_msgSend_context(rootCopy, v37, v38, v39, v40, v41);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v43, v44, v45, v46, v47, v42);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v47 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = objc_msgSend_allValues(self->_placeholderDrawables, v5, 0, v6, v7, v8);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v41, v46, 16);
  if (v16)
  {
    v21 = *v42;
    do
    {
      v22 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v41 + 1) + 8 * v22++), v15, v17, v18, v19, v20, rootCopy);
      }

      while (v16 != v22);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v41, v46, 16);
    }

    while (v16);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = self->_sectionTemplateDrawables;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, v28, &v37, v45, 16);
  if (v30)
  {
    v35 = *v38;
    do
    {
      v36 = 0;
      do
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v37 + 1) + 8 * v36++), v29, v31, v32, v33, v34, rootCopy, v37);
      }

      while (v30 != v36);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, v31, v32, v33, v34, &v37, v45, 16);
    }

    while (v30);
  }
}

- (void)saveToArchiver:(id)archiver
{
  v135 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v126 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, v4, v5, v6, v7, sub_275FF4608, off_2812F85B8[24]);

  v13 = objc_msgSend_UTF8String(self->_name, v8, v9, v10, v11, v12);
  *(v126 + 16) |= 1u;
  sub_275FBA9EC(__p, v13);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v133 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = v126;
  headersFootersMatchPreviousPage = self->_headersFootersMatchPreviousPage;
  v21 = *(v126 + 16) | 8;
  *(v126 + 16) = v21;
  *(v126 + 96) = headersFootersMatchPreviousPage;
  if (self->_backgroundFill)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v14, v15, v16, v17, v18, 6, v126);
    backgroundFill = self->_backgroundFill;
    *(v126 + 16) |= 2u;
    v28 = *(v126 + 80);
    if (!v28)
    {
      v29 = *(v126 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C92CE0](v29);
      *(v126 + 80) = v28;
    }

    objc_msgSend_saveToArchive_archiver_(backgroundFill, v22, v23, v24, v25, v26, v28, archiverCopy);
    v19 = v126;
    v21 = *(v126 + 16);
  }

  hideHeadersFooters = self->_hideHeadersFooters;
  *(v19 + 16) = v21 | 0x10;
  *(v19 + 97) = hideHeadersFooters;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v14, v15, v16, v17, v18, self->_sectionTemplateDrawables, v19 + 24);
  v36 = objc_msgSend_allKeys(self->_placeholderDrawables, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_sortedArrayUsingComparator_(v36, v37, v38, v39, v40, v41, &unk_2885011F8);

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v42;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, v44, v45, v46, v47, &v128, v134, 16);
  if (v48)
  {
    v123 = *v129;
    do
    {
      v125 = v48;
      for (i = 0; i != v125; ++i)
      {
        if (*v129 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v128 + 1) + 8 * i);
        v56 = objc_msgSend_objectForKeyedSubscript_(self->_placeholderDrawables, v49, v50, v51, v52, v53, v55);
        v57 = v126;
        v58 = *(v126 + 64);
        if (!v58)
        {
          goto LABEL_19;
        }

        v59 = *(v126 + 56);
        v60 = *v58;
        if (v59 < *v58)
        {
          *(v126 + 56) = v59 + 1;
          v61 = *&v58[2 * v59 + 2];
          goto LABEL_21;
        }

        if (v60 == *(v126 + 60))
        {
LABEL_19:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v126 + 48));
          v57 = v126;
          v58 = *(v126 + 64);
          v60 = *v58;
        }

        *v58 = v60 + 1;
        v61 = sub_275FAF3BC(*(v57 + 48));
        v62 = *(v126 + 56);
        v63 = *(v126 + 64) + 8 * v62;
        *(v126 + 56) = v62 + 1;
        *(v63 + 8) = v61;
LABEL_21:
        v64 = v55;
        v70 = objc_msgSend_UTF8String(v55, v65, v66, v67, v68, v69);
        *(v61 + 16) |= 1u;
        sub_275FBA9EC(__p, v70);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v133 < 0)
        {
          operator delete(__p[0]);
        }

        v76 = objc_msgSend_zOrderOfDrawable_(self->_drawablesZOrder, v71, v72, v73, v74, v75, v56);
        v82 = v76;
        if (v76 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v83 = MEMORY[0x277D81150];
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, v81, "[TPPageTemplate saveToArchiver:]");
          v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
          v96 = objc_msgSend_objectUUID(v56, v91, v92, v93, v94, v95);
          v102 = objc_msgSend_UUIDString(v96, v97, v98, v99, v100, v101);
          v108 = objc_msgSend_name(self, v103, v104, v105, v106, v107);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v109, v110, v111, v112, v113, v84, v90, 335, 0, "Drawable %@ is not in _drawablesZOrder in page template %@.", v102, v108);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117, v118);
        }

        v119 = *(v61 + 16);
        *(v61 + 40) = v82;
        *(v61 + 16) = v119 | 6;
        v120 = *(v61 + 32);
        if (!v120)
        {
          v121 = *(v61 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          v120 = MEMORY[0x277C92D60](v121);
          *(v61 + 32) = v120;
        }

        objc_msgSend_setStrongReference_message_(archiverCopy, v77, v78, v79, v80, v81, v56, v120);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, v50, v51, v52, v53, &v128, v134, 16);
    }

    while (v48);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v5, v6, v7, v8, off_2812F85B8[24]);

  v15 = *(v9 + 16);
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_tsp_initWithProtobufString_(v16, v17, v18, v19, v20, v21, *(v9 + 72) & 0xFFFFFFFFFFFFFFFELL);
    if (objc_msgSend_fileFormatVersion(unarchiverCopy, v23, v24, v25, v26, v27) < *MEMORY[0x277D809A8])
    {
      v33 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v28, v29, v30, v31, v32);
      v39 = objc_msgSend_tsu_stringByReplacingInstancesOfCharactersInSet_withString_(v22, v34, v35, v36, v37, v38, v33, @" ");

      if ((objc_msgSend_isEqualToString_(v22, v40, v41, v42, v43, v44, v39) & 1) == 0)
      {
        v45 = v39;

        v22 = v45;
        objc_msgSend_willModifyForUpgrade(self, v46, v47, v48, v49, v50);
      }
    }

    name = self->_name;
    self->_name = v22;

    v15 = *(v9 + 16);
  }

  if ((v15 & 8) != 0)
  {
    self->_headersFootersMatchPreviousPage = *(v9 + 96);
  }

  if ((v15 & 2) != 0)
  {
    v52 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v10, v11, v12, v13, v14, *(v9 + 80), unarchiverCopy);
    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v52;

    v15 = *(v9 + 16);
  }

  if ((v15 & 0x10) != 0)
  {
    self->_hideHeadersFooters = *(v9 + 97);
  }

  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = sub_275FF364C;
  v133[3] = &unk_27A6A8508;
  v133[4] = self;
  v54 = unarchiverCopy;
  v55 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v54, v56, v57, v58, v59, v60, v9 + 24, v55, 0, v133);

  v61 = *(v9 + 56);
  v67 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v62, v63, v64, v65, v66);
  placeholderDrawables = self->_placeholderDrawables;
  self->_placeholderDrawables = v67;

  v69 = [TPDrawablesZOrder alloc];
  v75 = objc_msgSend_context(v54, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_initWithContext_(v69, v76, v77, v78, v79, v80, v75);
  drawablesZOrder = self->_drawablesZOrder;
  self->_drawablesZOrder = v81;

  v127 = 0;
  v128 = &v127;
  v83.n128_u64[0] = 0x3032000000;
  v129 = 0x3032000000;
  v130 = sub_275FF1A38;
  v131 = sub_275FF1A48;
  v132 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v84, v83, v85, v86, v87, v61);
  if (v61)
  {
    for (i = 0; i != v61; ++i)
    {
      v94 = objc_msgSend_null(MEMORY[0x277CBEB68], v88, v89, v90, v91, v92);
      objc_msgSend_setObject_atIndexedSubscript_(v128[5], v95, v96, v97, v98, v99, v94, i);
    }

    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v100 = 0;
    v101 = v61;
    do
    {
      v102 = v9;
      v103 = *(*(v9 + 64) + (v100 >> 29) + 8);
      v104 = objc_alloc(MEMORY[0x277CCACA8]);
      v110 = objc_msgSend_tsp_initWithProtobufString_(v104, v105, v106, v107, v108, v109, *(v103 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v111 = *(v103 + 40);
      v112 = *(v103 + 32);
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = sub_275FF3660;
      v122[3] = &unk_27A6A8A38;
      v122[4] = self;
      v122[5] = v110;
      v122[6] = &v127;
      v122[7] = &v123;
      v122[8] = v111;
      v122[9] = v61;
      v113 = v54;
      v115 = objc_opt_class();
      if (v112)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v113, v114, v116, v117, v118, v119, v112, v115, 0, v122);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v113, v114, v116, v117, v118, v119, MEMORY[0x277D80A18], v115, 0, v122);
      }

      v100 += 0x100000000;
      --v101;
      v9 = v102;
    }

    while (v101);
  }

  else
  {
    v123 = 0;
    v124 = &v123;
    v89.n128_u64[0] = 0x2020000000;
    v125 = 0x2020000000;
    v126 = 0;
  }

  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = sub_275FF3830;
  v121[3] = &unk_27A6A8768;
  v121[4] = self;
  objc_msgSend_addFinalizeHandler_(v54, v88, v89, v90, v91, v92, v121);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(&v127, 8);
}

- (NSString)description
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  v12 = objc_msgSend_objectUUID(self, v7, v8, v9, v10, v11);
  v13 = MEMORY[0x277CCABB0];
  matched = objc_msgSend_headersFootersMatchPreviousPage(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_numberWithBool_(v13, v20, v21, v22, v23, v24, matched);
  v31 = objc_msgSend_stringWithFormat_(v3, v26, v27, v28, v29, v30, @"(%@*)%p Name=%@ UUID=%@ HeadersFootersMatchPrevious=%@ backgroundFill=%@ Placeholders=", v5, self, name, v12, v25, self->_backgroundFill);

  placeholderDrawables = self->_placeholderDrawables;
  v63[0] = MEMORY[0x277D85DD0];
  v33.n128_u64[0] = 3221225472;
  v63[1] = 3221225472;
  v63[2] = sub_275FF3CCC;
  v63[3] = &unk_27A6A8A88;
  v63[4] = v31;
  v63[5] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(placeholderDrawables, v34, v33, v35, v36, v37, v63);
  objc_msgSend_appendString_(v31, v38, v39, v40, v41, v42, @" Master Drawables=");
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v43 = self->_sectionTemplateDrawables;
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, v45, v46, v47, v48, &v59, v64, 16);
  if (v50)
  {
    v55 = *v60;
    do
    {
      v56 = 0;
      do
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(v43);
        }

        objc_msgSend_appendFormat_(v31, v49, v51, v52, v53, v54, @" {%@}", *(*(&v59 + 1) + 8 * v56++));
      }

      while (v50 != v56);
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v49, v51, v52, v53, v54, &v59, v64, 16);
    }

    while (v50);
  }

  v57 = v31;
  return v31;
}

- (void)setGeometry:(id)geometry
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageTemplate setGeometry:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 486, 0, "can't set geometry on a page template");

  v25 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v25, v20, v21, v22, v23, v24);
}

- (void)setParentInfo:(id)info
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageTemplate setParentInfo:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 494, 0, "Page templates do not have parent infos");

  v25 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v25, v20, v21, v22, v23, v24);
}

- (NSArray)childInfos
{
  drawablesZOrder = self->_drawablesZOrder;
  v7 = objc_msgSend_allValues(self->_placeholderDrawables, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_orderedDrawables_(drawablesZOrder, v8, v9, v10, v11, v12, v7);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = v15;

  return v15;
}

- (id)boxedObjectForProperty:(int)property
{
  v3 = *&property;
  v6 = String();
  v11 = 0;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      objc_msgSend_floatValueForProperty_(self, v5, v7, v8, v9, v10, v3);
      v27.n128_u32[0] = 2139095040;
      if (v24.n128_f32[0] != INFINITY)
      {
        v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v23, v24, v27, v25, v26);
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_14;
      }

      objc_msgSend_doubleValueForProperty_(self, v5, v7, v8, v9, v10, v3);
      v22.n128_u64[0] = 0x7FF0000000000000;
      if (v19.n128_f64[0] != INFINITY)
      {
        v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v18, v19, v22, v20, v21);
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!v6)
    {
      v11 = objc_msgSend_objectForProperty_(self, v5, v7, v8, v9, v10, v3);
      goto LABEL_14;
    }

    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v12 = objc_msgSend_intValueForProperty_(self, v5, v7, v8, v9, v10, v3);
    if (v12 != 0x80000000)
    {
      v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, v14, v15, v16, v17, v12);
      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 225:
      v8 = 104;
      goto LABEL_7;
    case 4215:
      v8 = 80;
LABEL_7:
      v7 = *(&self->super.super.isa + v8);
      break;
    case 4214:
      v7 = objc_msgSend_childInfos(self, a2, v3, v4, v5, v6);
      break;
    default:
      v7 = 0;
      break;
  }

  return v7;
}

- (int)intValueForProperty:(int)property
{
  switch(property)
  {
    case 4216:
      return 0;
    case 226:
      return objc_msgSend_hideHeadersFooters(self, a2, v3, v4, v5, v6);
    case 224:
      return objc_msgSend_headersFootersMatchPreviousPage(self, a2, v3, v4, v5, v6);
  }

  return 0x80000000;
}

+ (BOOL)isUserDefinedTag:(id)tag
{
  tagCopy = tag;
  if (tagCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = objc_msgSend_initWithUUIDString_(v4, v5, v6, v7, v8, v9, tagCopy);
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)topLevelParentInfoForInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  objc_msgSend_parentInfo(infoCopy, v5, v6, v7, v8, v9);
  while (1)
    v11 = {;
    if (!v11)
    {
      break;
    }

    v16 = objc_msgSend_parentInfo(v4, v10, v12, v13, v14, v15);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    v23 = objc_msgSend_parentInfo(v4, v18, v19, v20, v21, v22);

    v4 = v23;
    objc_msgSend_parentInfo(v23, v24, v25, v26, v27, v28);
  }

  return v4;
}

- (BOOL)containsModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  if (v5)
  {
    objc_opt_class();
    v11 = objc_msgSend_topLevelParentInfoForInfo_(self, v6, v7, v8, v9, v10, v5, &unk_2885108A0);
    v12 = TSUDynamicCast();

    if (objc_msgSend_containsObject_(self->_sectionTemplateDrawables, v13, v14, v15, v16, v17, v12))
    {
      v23 = 1;
    }

    else
    {
      v24 = objc_msgSend_tagForDrawable_(self, v18, v19, v20, v21, v22, v12);
      v23 = v24 != 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end