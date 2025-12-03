@interface KNSlide
+ (id)blankSlideWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show;
- (BOOL)p_oneOrMoreDrawablesMayHaveImplicitBuildEventsInDrawables:(id)drawables;
- (BOOL)p_urlIsSlideSpecific:(id)specific;
- (BOOL)slideObjectsLayerWithTemplate;
- (KNSlide)initWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show;
- (id)childEnumerator;
- (id)defaultBodyPlaceholder;
- (id)defaultSlideNumberPlaceholder;
- (id)defaultTitlePlaceholder;
- (id)infoCorrespondingToTemplateSlideInfo:(id)info;
- (id)infosToDisplay;
- (id)p_slideNodeUUIDStringFromURL:(id)l;
- (id)paragraphIndexesOfTopLevelBullets;
- (void)acceptVisitor:(id)visitor;
- (void)addInfoUsingObjectPlaceholderGeometry:(id)geometry;
- (void)addMapForStorage:(id)storage forHyperlink:(id)hyperlink;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)insertDrawables:(id)drawables atIndex:(unint64_t)index dolcContext:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_checkTemplateSlide;
- (void)removeDrawable:(id)drawable;
- (void)removeInfoUsingObjectPlaceholderGeometry:(id)geometry;
- (void)removeMapForStorage:(id)storage forHyperlink:(id)hyperlink;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setInfosUsingObjectPlaceholderGeometry:(id)geometry;
- (void)setNote:(id)note;
- (void)setTemplateSlide:(id)slide resetTemplateSlideBackgroundObjects:(BOOL)objects;
- (void)setToTemplateSlide:(id)slide;
- (void)updateSlideSpecificHyperlinkMapForStorage:(id)storage oldHyperlink:(id)hyperlink newHyperlink:(id)newHyperlink;
- (void)updateSlideSpecificLinkMapForInfo:(id)info newHyperlink:(id)hyperlink;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNSlide

+ (id)blankSlideWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show
{
  showCopy = show;
  slideCopy = slide;
  nodeCopy = node;
  v11 = [self alloc];
  v13 = objc_msgSend_initWithSlideNode_templateSlide_andShow_(v11, v12, nodeCopy, slideCopy, showCopy);

  return v13;
}

- (KNSlide)initWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show
{
  slideCopy = slide;
  nodeCopy = node;
  v12 = objc_msgSend_context(show, v10, v11);
  v26.receiver = self;
  v26.super_class = KNSlide;
  v13 = [(KNAbstractSlide *)&v26 initWithSlideNode:nodeCopy context:v12];

  if (v13)
  {
    if (slideCopy)
    {
      objc_msgSend_setToTemplateSlide_(v13, v14, slideCopy);
    }

    v15 = [KNNoteInfo alloc];
    v18 = objc_msgSend_context(v13, v16, v17);
    v20 = objc_msgSend_initWithContext_(v15, v19, v18);
    note = v13->_note;
    v13->_note = v20;

    objc_msgSend_setParentInfo_(v13->_note, v22, v13);
    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    infosUsingObjectPlaceholderGeometry = v13->_infosUsingObjectPlaceholderGeometry;
    v13->_infosUsingObjectPlaceholderGeometry = v23;
  }

  return v13;
}

- (void)setTemplateSlide:(id)slide resetTemplateSlideBackgroundObjects:(BOOL)objects
{
  objectsCopy = objects;
  slideCopy = slide;
  if (self->_templateSlide != slideCopy)
  {
    objc_msgSend_willModify(self, v7, v8);
    if (objectsCopy)
    {
      v12 = objc_msgSend_slideObjectsLayerWithTemplate(self->_templateSlide, v10, v11);
      if (v12 != objc_msgSend_slideObjectsLayerWithTemplate(slideCopy, v13, v14))
      {
        sub_275E59EAC();
      }

      if (objc_msgSend_slideObjectsLayerWithTemplate(slideCopy, v15, v16))
      {
        v19 = objc_msgSend_nonPlaceholderObjects(self->_templateSlide, v17, v18);
        v22 = objc_msgSend_nonPlaceholderObjects(slideCopy, v20, v21);
        v25 = objc_msgSend_count(v19, v23, v24);
        if (v25 != objc_msgSend_count(v22, v26, v27))
        {
          sub_275E59E08();
        }

        v30 = objc_msgSend_childInfos(self, v28, v29);
        v33 = objc_msgSend_mutableCopy(v30, v31, v32);

        v43 = MEMORY[0x277D85DD0];
        v44 = 3221225472;
        v45 = sub_275D70124;
        v46 = &unk_27A698250;
        v47 = v33;
        v48 = v22;
        v34 = v22;
        v35 = v33;
        objc_msgSend_enumerateObjectsUsingBlock_(v19, v36, &v43);
        objc_msgSend_setChildInfosWithoutDOLC_(self, v37, v35, v43, v44, v45, v46);
      }
    }

    objc_storeStrong(&self->_templateSlide, slide);
    v40 = objc_msgSend_slideNode(self, v38, v39);
    objc_msgSend_updateTemplateSlideUUID(v40, v41, v42);
  }
}

- (void)addInfoUsingObjectPlaceholderGeometry:(id)geometry
{
  geometryCopy = geometry;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_addObject_(self->_infosUsingObjectPlaceholderGeometry, v6, geometryCopy);
}

- (void)removeInfoUsingObjectPlaceholderGeometry:(id)geometry
{
  geometryCopy = geometry;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_removeObject_(self->_infosUsingObjectPlaceholderGeometry, v6, geometryCopy);
}

- (void)setInfosUsingObjectPlaceholderGeometry:(id)geometry
{
  if (self->_infosUsingObjectPlaceholderGeometry != geometry)
  {
    v4 = objc_msgSend_mutableCopy(geometry, a2, geometry);
    infosUsingObjectPlaceholderGeometry = self->_infosUsingObjectPlaceholderGeometry;
    self->_infosUsingObjectPlaceholderGeometry = v4;
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v13.receiver = self;
  v13.super_class = KNSlide;
  [(KNAbstractSlide *)&v13 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  v10 = objc_msgSend_note(self, v8, v9);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_adoptStylesheet_withMapper_(v10, v11, stylesheetCopy, mapperCopy);
  }
}

- (void)setToTemplateSlide:(id)slide
{
  v123 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  if (!slideCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNSlide setToTemplateSlide:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 217, 0, "invalid nil value for '%{public}s'", "templateSlide");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_setTemplateSlide_(self, v14, slideCopy);
  v17 = objc_msgSend_style(slideCopy, v15, v16);
  objc_msgSend_setStyle_(self, v18, v17);

  objc_msgSend_setChildInfosWithoutDOLC_(self, v19, MEMORY[0x277CBEBF8]);
  if (objc_msgSend_isTitleVisible(self, v20, v21))
  {
    v24 = objc_msgSend_titlePlaceholder(self, v22, v23);
    objc_msgSend_removeDrawable_(self, v25, v24);
  }

  objc_msgSend_setTitlePlaceholder_(self, v22, 0);
  if (objc_msgSend_isBodyVisible(self, v26, v27))
  {
    v30 = objc_msgSend_bodyPlaceholder(self, v28, v29);
    objc_msgSend_removeDrawable_(self, v31, v30);
  }

  objc_msgSend_setBodyPlaceholder_(self, v28, 0);
  if (objc_msgSend_isSlideNumberVisible(self, v32, v33))
  {
    v36 = objc_msgSend_slideNumberPlaceholder(self, v34, v35);
    objc_msgSend_removeDrawable_(self, v37, v36);
  }

  objc_msgSend_setSlideNumberPlaceholder_(self, v34, 0);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v40 = objc_msgSend_childInfos(slideCopy, v38, v39);
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v118, v122, 16);
  if (v42)
  {
    v44 = v42;
    v45 = *v119;
    v117 = v40;
    do
    {
      v46 = 0;
      do
      {
        if (*v119 != v45)
        {
          objc_enumerationMutation(v40);
        }

        v47 = *(*(&v118 + 1) + 8 * v46);
        v50 = objc_msgSend_tagForInfo_(slideCopy, v43, v47);
        if (v50)
        {
          v51 = objc_msgSend_copyToInstantiateTemplatePlaceholder(v47, v48, v49);
          objc_msgSend_addDrawable_dolcContext_(self, v52, v51, 0);
          objc_msgSend_setInfo_forSageTag_(self, v53, v51, v50);
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = objc_msgSend_titlePlaceholder(slideCopy, v54, v55);

          if (v47 == v56)
          {
            v85 = objc_msgSend_defaultTitlePlaceholder(self, v57, v58);
            objc_msgSend_setTitlePlaceholder_(self, v86, v85);

            v89 = objc_msgSend_titlePlaceholder(self, v87, v88);
            goto LABEL_30;
          }

          v59 = objc_msgSend_bodyPlaceholder(slideCopy, v57, v58);

          if (v47 == v59)
          {
            v91 = objc_msgSend_defaultBodyPlaceholder(self, v60, v61);
            objc_msgSend_setBodyPlaceholder_(self, v92, v91);

            v89 = objc_msgSend_bodyPlaceholder(self, v93, v94);
            goto LABEL_30;
          }

          v62 = objc_msgSend_slideNumberPlaceholder(slideCopy, v60, v61);

          if (v47 == v62)
          {
            v95 = objc_msgSend_defaultSlideNumberPlaceholder(self, v63, v64);
            objc_msgSend_setSlideNumberPlaceholder_(self, v96, v95);

            v89 = objc_msgSend_slideNumberPlaceholder(self, v97, v98);
LABEL_30:
            v51 = v89;
            objc_msgSend_addDrawable_dolcContext_(self, v90, v89, 0);
LABEL_16:

            goto LABEL_17;
          }

          v65 = objc_msgSend_objectPlaceholder(slideCopy, v63, v64);

          if (v47 != v65)
          {
            v67 = MEMORY[0x277D81150];
            v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[KNSlide setToTemplateSlide:]");
            v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m");
            v71 = TSUObjectReferenceDescription();
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v70, 259, 0, "Unexpected placeholder %@ not transfered to slide.", v71);

            v40 = v117;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
          }
        }

        else if (objc_msgSend_slideObjectsLayerWithTemplate(slideCopy, v54, v55))
        {
          objc_msgSend_willModify(self, v75, v76);
          v79 = objc_msgSend_childInfos(self, v77, v78);
          v82 = objc_msgSend_mutableCopy(v79, v80, v81);

          v40 = v117;
          objc_msgSend_addObject_(v82, v83, v47);
          objc_msgSend_setChildInfosWithoutDOLC_(self, v84, v82);
        }

LABEL_17:

        ++v46;
      }

      while (v44 != v46);
      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v118, v122, 16);
      v44 = v99;
    }

    while (v99);
  }

  v102 = objc_msgSend_titlePlaceholder(self, v100, v101);

  if (!v102)
  {
    v105 = objc_msgSend_defaultTitlePlaceholder(self, v103, v104);
    objc_msgSend_setTitlePlaceholder_(self, v106, v105);
  }

  v107 = objc_msgSend_bodyPlaceholder(self, v103, v104);

  if (!v107)
  {
    v110 = objc_msgSend_defaultBodyPlaceholder(self, v108, v109);
    objc_msgSend_setBodyPlaceholder_(self, v111, v110);
  }

  v112 = objc_msgSend_slideNumberPlaceholder(self, v108, v109);

  if (!v112)
  {
    v115 = objc_msgSend_defaultSlideNumberPlaceholder(self, v113, v114);
    objc_msgSend_setSlideNumberPlaceholder_(self, v116, v115);
  }
}

- (id)defaultTitlePlaceholder
{
  v3 = objc_msgSend_templateSlide(self, a2, v2);
  v6 = objc_msgSend_titlePlaceholder(v3, v4, v5);
  v9 = objc_msgSend_copyToInstantiateTemplatePlaceholder(v6, v7, v8);

  return v9;
}

- (id)defaultBodyPlaceholder
{
  v3 = objc_msgSend_templateSlide(self, a2, v2);
  v6 = objc_msgSend_bodyPlaceholder(v3, v4, v5);
  v9 = objc_msgSend_copyToInstantiateTemplatePlaceholder(v6, v7, v8);

  return v9;
}

- (id)defaultSlideNumberPlaceholder
{
  v3 = objc_msgSend_templateSlide(self, a2, v2);
  v6 = objc_msgSend_slideNumberPlaceholder(v3, v4, v5);
  v9 = objc_msgSend_copyToInstantiateTemplatePlaceholder(v6, v7, v8);

  return v9;
}

- (id)infoCorrespondingToTemplateSlideInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_templateSlide(self, v5, v6);
  v10 = objc_msgSend_titlePlaceholder(v7, v8, v9);

  if (v10 == infoCopy)
  {
    v31 = objc_msgSend_titlePlaceholder(self, v11, v12);
  }

  else
  {
    v13 = objc_msgSend_bodyPlaceholder(v7, v11, v12);

    if (v13 == infoCopy)
    {
      v31 = objc_msgSend_bodyPlaceholder(self, v14, v15);
    }

    else
    {
      v16 = objc_msgSend_slideNumberPlaceholder(v7, v14, v15);

      if (v16 != infoCopy)
      {
        v19 = objc_msgSend_placeholdersForTags(v7, v17, v18);
        v21 = objc_msgSend_allKeysForObject_(v19, v20, infoCopy);

        if (objc_msgSend_count(v21, v22, v23))
        {
          v26 = objc_msgSend_placeholdersForTags(self, v24, v25);
          v28 = objc_msgSend_objectAtIndexedSubscript_(v21, v27, 0);
          v30 = objc_msgSend_objectForKeyedSubscript_(v26, v29, v28);
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_12;
      }

      v31 = objc_msgSend_slideNumberPlaceholder(self, v17, v18);
    }
  }

  v30 = v31;
LABEL_12:

  return v30;
}

- (BOOL)slideObjectsLayerWithTemplate
{
  v3 = objc_msgSend_templateSlide(self, a2, v2);
  v6 = objc_msgSend_slideObjectsLayerWithTemplate(v3, v4, v5);

  return v6;
}

- (void)insertDrawables:(id)drawables atIndex:(unint64_t)index dolcContext:(id)context
{
  v15.receiver = self;
  v15.super_class = KNSlide;
  drawablesCopy = drawables;
  [(KNAbstractSlide *)&v15 insertDrawables:drawablesCopy atIndex:index dolcContext:context];
  LODWORD(context) = objc_msgSend_p_oneOrMoreDrawablesMayHaveImplicitBuildEventsInDrawables_(self, v9, drawablesCopy, v15.receiver, v15.super_class);

  if (context)
  {
    v12 = objc_msgSend_slideNode(self, v10, v11);
    objc_msgSend_invalidateBuildEventCountCaches(v12, v13, v14);
  }
}

- (BOOL)p_oneOrMoreDrawablesMayHaveImplicitBuildEventsInDrawables:(id)drawables
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  drawablesCopy = drawables;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(drawablesCopy, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(drawablesCopy);
        }

        if (objc_msgSend_mayHaveImplicitBuildEvents(*(*(&v11 + 1) + 8 * i), v5, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(drawablesCopy, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)removeDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (objc_msgSend_mayHaveImplicitBuildEvents(drawableCopy, v5, v6))
  {
    v9 = objc_msgSend_slideNode(self, v7, v8);
    objc_msgSend_invalidateBuildEventCountCaches(v9, v10, v11);
  }

  objc_msgSend_removeInfoUsingObjectPlaceholderGeometry_(self, v7, drawableCopy);
  v12.receiver = self;
  v12.super_class = KNSlide;
  [(KNAbstractSlide *)&v12 removeDrawable:drawableCopy];
}

- (void)setNote:(id)note
{
  noteCopy = note;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_documentRoot(self, v7, v8);
  v13 = objc_msgSend_inDocument(self, v10, v11);
  if (noteCopy)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(noteCopy, v12, v9, 0);
  }

  v16 = self->_note;
  if (v16)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  note = self->_note;
  if (v17 != 1)
  {
    objc_msgSend_setParentInfo_(note, v15, 0);
    objc_storeStrong(&self->_note, note);
    objc_msgSend_setParentInfo_(self->_note, v23, self);
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  objc_msgSend_willBeRemovedFromDocumentRoot_(note, v15, v9);
  objc_msgSend_setParentInfo_(self->_note, v19, 0);
  objc_storeStrong(&self->_note, note);
  objc_msgSend_setParentInfo_(self->_note, v20, self);
  objc_msgSend_wasRemovedFromDocumentRoot_(v16, v21, v9);
  if (v14)
  {
LABEL_13:
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_note, v22, v9, 0);
  }

LABEL_14:
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v11.receiver = self;
  v11.super_class = KNSlide;
  childEnumerator = [(KNAbstractSlide *)&v11 childEnumerator];
  v7 = objc_msgSend_note(self, v5, v6);
  v9 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v8, childEnumerator, v7, 0);

  return v9;
}

- (void)acceptVisitor:(id)visitor
{
  v4 = TSUProtocolCast();
  if (v4)
  {
    v6 = v4;
    objc_msgSend_visitKNSlide_(v4, v5, self, &unk_2885462B0);
    v4 = v6;
  }
}

- (id)infosToDisplay
{
  selfCopy = self;
  v75 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_templateSlide(self, a2, v2);

  if (!v4)
  {
    sub_275E59F50();
  }

  v7 = objc_msgSend_templateSlide(selfCopy, v5, v6);
  v10 = objc_msgSend_nonPlaceholderObjects(v7, v8, v9);

  v11 = MEMORY[0x277CBEB40];
  v14 = objc_msgSend_count(v10, v12, v13);
  v16 = objc_msgSend_orderedSetWithCapacity_(v11, v15, v14);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = v10;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v69, v74, 16);
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_msgSend_addObject_(v16, v24, v23);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v69, v74, 16);
    }

    while (v20);
  }

  v27 = objc_msgSend_childInfos(selfCopy, v25, v26);
  v28 = MEMORY[0x277CBEB40];
  v31 = objc_msgSend_count(v16, v29, v30);
  v34 = objc_msgSend_count(v27, v32, v33);
  v36 = objc_msgSend_orderedSetWithCapacity_(v28, v35, v31 + v34 + 1);
  v39 = objc_msgSend_background(selfCopy, v37, v38);
  objc_msgSend_addObject_(v36, v40, v39);

  if (objc_msgSend_slideObjectsLayerWithTemplate(selfCopy, v41, v42))
  {
    v64 = v16;
    v45 = objc_msgSend_array(MEMORY[0x277CBEB18], v43, v44);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = v27;
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v65, v73, 16);
    if (v48)
    {
      v49 = v48;
      v50 = *v66;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v66 != v50)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&v65 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_parentInfo(v52, v53, v54);
            v56 = v55 = selfCopy;

            v57 = v56 == v55;
            selfCopy = v55;
            if (!v57)
            {
              continue;
            }
          }

          objc_msgSend_addObject_(v45, v53, v52);
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v53, &v65, v73, 16);
      }

      while (v49);
    }

    v16 = v64;
  }

  else
  {
    objc_msgSend_unionOrderedSet_(v36, v43, v16);
    v45 = v27;
  }

  if (objc_msgSend_count(v45, v58, v59))
  {
    objc_msgSend_addObjectsFromArray_(v36, v60, v45);
  }

  v62 = objc_msgSend_array(v36, v60, v61);

  return v62;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = KNSlide;
  [(KNAbstractSlide *)&v13 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v10 = objc_msgSend_note(self, v8, v9);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v10, v11, rootCopy, contextCopy);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  objc_msgSend_p_checkTemplateSlide(self, v8, v9);
  v15.receiver = self;
  v15.super_class = KNSlide;
  [(KNAbstractSlide *)&v15 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v12 = objc_msgSend_note(self, v10, v11);
  v14 = v12;
  if (v12)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v12, v13, rootCopy, contextCopy);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v10.receiver = self;
  v10.super_class = KNSlide;
  [(KNAbstractSlide *)&v10 willBeRemovedFromDocumentRoot:rootCopy];
  v7 = objc_msgSend_note(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v8, rootCopy);
  }
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v10.receiver = self;
  v10.super_class = KNSlide;
  [(KNAbstractSlide *)&v10 wasRemovedFromDocumentRoot:rootCopy];
  v7 = objc_msgSend_note(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_wasRemovedFromDocumentRoot_(v7, v8, rootCopy);
  }
}

- (BOOL)p_urlIsSlideSpecific:(id)specific
{
  if (!specific)
  {
    return 0;
  }

  v3 = objc_msgSend_absoluteString(specific, a2, specific);
  v5 = objc_msgSend_rangeOfString_(v3, v4, @"?slideid=") == 0;

  return v5;
}

- (id)p_slideNodeUUIDStringFromURL:(id)l
{
  lCopy = l;
  v4 = objc_msgSend_absoluteString(l, a2, l);
  v6 = v4;
  if (lCopy)
  {
    if (objc_msgSend_rangeOfString_(v4, v5, @"?slideid="))
    {
      lCopy = 0;
    }

    else
    {
      v9 = objc_msgSend_length(@"?slideid=", v7, v8);
      lCopy = objc_msgSend_substringFromIndex_(v6, v10, v9);
    }
  }

  return lCopy;
}

- (void)updateSlideSpecificLinkMapForInfo:(id)info newHyperlink:(id)hyperlink
{
  infoCopy = info;
  hyperlinkCopy = hyperlink;
  v9 = objc_msgSend_hyperlinkURL(infoCopy, v7, v8);
  IsSlideSpecific = objc_msgSend_p_urlIsSlideSpecific_(self, v10, v9);
  v14 = objc_msgSend_p_urlIsSlideSpecific_(self, v12, hyperlinkCopy);
  if (IsSlideSpecific)
  {
    v15 = objc_msgSend_p_slideNodeUUIDStringFromURL_(self, v13, v9);
    v18 = objc_msgSend_slideNode(self, v16, v17);
    objc_msgSend_removeHyperlinkForInfo_toSlideNode_(v18, v19, infoCopy, v15);
  }

  if (v14)
  {
    v20 = objc_msgSend_p_slideNodeUUIDStringFromURL_(self, v13, hyperlinkCopy);
    v23 = objc_msgSend_slideNode(self, v21, v22);
    objc_msgSend_addHyperlinkForInfo_toSlideNode_(v23, v24, infoCopy, v20);
  }
}

- (void)updateSlideSpecificHyperlinkMapForStorage:(id)storage oldHyperlink:(id)hyperlink newHyperlink:(id)newHyperlink
{
  storageCopy = storage;
  hyperlinkCopy = hyperlink;
  newHyperlinkCopy = newHyperlink;
  IsSlideSpecific = objc_msgSend_p_urlIsSlideSpecific_(self, v10, hyperlinkCopy);
  v14 = objc_msgSend_p_urlIsSlideSpecific_(self, v12, newHyperlinkCopy);
  if (IsSlideSpecific)
  {
    v15 = objc_msgSend_p_slideNodeUUIDStringFromURL_(self, v13, hyperlinkCopy);
    v18 = objc_msgSend_slideNode(self, v16, v17);
    objc_msgSend_removeHyperlinkForStorage_toSlideNode_(v18, v19, storageCopy, v15);
  }

  if (v14)
  {
    v20 = objc_msgSend_p_slideNodeUUIDStringFromURL_(self, v13, newHyperlinkCopy);
    v23 = objc_msgSend_slideNode(self, v21, v22);
    objc_msgSend_addHyperlinkForStorage_toSlideNode_(v23, v24, storageCopy, v20);
  }
}

- (void)removeMapForStorage:(id)storage forHyperlink:(id)hyperlink
{
  storageCopy = storage;
  hyperlinkCopy = hyperlink;
  if (objc_msgSend_p_urlIsSlideSpecific_(self, v7, hyperlinkCopy))
  {
    v9 = objc_msgSend_p_slideNodeUUIDStringFromURL_(self, v8, hyperlinkCopy);
    v12 = objc_msgSend_slideNode(self, v10, v11);
    objc_msgSend_removeHyperlinkForStorage_toSlideNode_(v12, v13, storageCopy, v9);
  }
}

- (void)addMapForStorage:(id)storage forHyperlink:(id)hyperlink
{
  storageCopy = storage;
  hyperlinkCopy = hyperlink;
  if (objc_msgSend_p_urlIsSlideSpecific_(self, v7, hyperlinkCopy))
  {
    v9 = objc_msgSend_p_slideNodeUUIDStringFromURL_(self, v8, hyperlinkCopy);
    v12 = objc_msgSend_slideNode(self, v10, v11);
    objc_msgSend_addHyperlinkForStorage_toSlideNode_(v12, v13, storageCopy, v9);
  }
}

- (void)p_checkTemplateSlide
{
  v4 = objc_msgSend_templateSlide(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_templateSlide(self, v5, v6);

    if (!v7)
    {
      sub_275E59FF4(self, v8, v9);
    }
  }
}

- (id)paragraphIndexesOfTopLevelBullets
{
  v3 = objc_msgSend_bodyPlaceholder(self, a2, v2);
  v6 = objc_msgSend_textStorage(v3, v4, v5);

  if (v6)
  {
    objc_msgSend_paragraphIndexesOfTopLevelBullets(v6, v7, v8);
  }

  else
  {
    objc_msgSend_indexSet(MEMORY[0x277CCAA78], v7, v8);
  }
  v9 = ;

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v36.receiver = self;
  v36.super_class = KNSlide;
  [(KNAbstractSlide *)&v36 loadFromArchive:archive unarchiver:unarchiverCopy];
  v9 = *(archive + 4);
  if ((v9 & 0x200) != 0)
  {
    v10 = *(archive + 42);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_275D78284;
    v35[3] = &unk_27A6983B8;
    v35[4] = self;
    v11 = unarchiverCopy;
    v12 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v13, v10, v12, 0, v35);

    v9 = *(archive + 4);
  }

  if ((v9 & 0x8000) != 0)
  {
    v14 = *(archive + 48);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_275D78290;
    v34[3] = &unk_27A6983E0;
    v34[4] = self;
    v15 = unarchiverCopy;
    v16 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v17, v14, v16, 0, v34);
  }

  if (*(archive + 62) >= 1)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_275D78318;
    v33[3] = &unk_27A697A10;
    v33[4] = self;
    v18 = unarchiverCopy;
    v19 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v18, v20, archive + 240, v19, 0, v33);
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_275D783A0;
  v31[4] = sub_275D783B0;
  v32 = 0;
  if ((*(archive + 18) & 8) != 0)
  {
    v21 = *(archive + 52);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_275D783B8;
    v30[3] = &unk_27A698408;
    v30[4] = v31;
    v22 = unarchiverCopy;
    v23 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v22, v24, v21, v23, 0, v30);
  }

  v25 = *(archive + 459);
  v26 = objc_msgSend_fileFormatVersion(unarchiverCopy, v7, v8);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_275D783C8;
  v28[3] = &unk_27A698430;
  v29 = v25;
  v28[4] = self;
  v28[5] = v31;
  v28[6] = v26;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v27, v28);
  _Block_object_dispose(v31, 8);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v45 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = KNSlide;
  archiverCopy = archiver;
  [(KNAbstractSlide *)&v43 saveToArchive:archive archiver:?];
  if (objc_msgSend_slideObjectsLayerWithTemplate(self, v5, v6))
  {
    objc_msgSend_requiresDocumentVersion_(archiverCopy, v7, *MEMORY[0x277D80958]);
  }

  templateSlide = self->_templateSlide;
  if (templateSlide)
  {
    *(archive + 4) |= 0x200u;
    v10 = *(archive + 42);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F050](v11);
      *(archive + 42) = v10;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v7, templateSlide, v10);
  }

  v34 = objc_msgSend_note(self, v7, v8);
  if (v34)
  {
    *(archive + 4) |= 0x8000u;
    v13 = *(archive + 48);
    if (!v13)
    {
      v14 = *(archive + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C8F050](v14);
      *(archive + 48) = v13;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v34, v13);
  }

  v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_infosUsingObjectPlaceholderGeometry;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v39, v44, 16);
  if (v18)
  {
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        v22 = objc_msgSend_childInfos(self, v16, v17);
        v24 = objc_msgSend_containsObject_(v22, v23, v21);

        if (v24)
        {
          objc_msgSend_addObject_(v37, v25, v21);
        }

        else
        {
          v26 = MEMORY[0x277D81150];
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNSlide(PersistenceAdditions) saveToArchive:archiver:]");
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlidePersistenceAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 194, 0, "Object %@ was among _infosUnsingObjectPlaceholderGeometry but not among infos. We will attempt to repair this by discarding that object in save.", v21);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v39, v44, 16);
    }

    while (v18);
  }

  objc_msgSend_setStrongReferenceSet_message_(archiverCopy, v33, v37, archive + 240);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812EA908[32]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v8, v9))
  {
    v12 = objc_msgSend_preUFFVersion(unarchiverCopy, v10, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_275D78C8C;
    v14[3] = &unk_27A698480;
    v14[4] = self;
    v14[5] = v12;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v13, v14);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D55CF8, off_2812EA908[32]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end