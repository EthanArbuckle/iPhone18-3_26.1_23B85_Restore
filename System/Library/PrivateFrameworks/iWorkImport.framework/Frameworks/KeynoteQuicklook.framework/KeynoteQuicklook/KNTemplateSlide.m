@interface KNTemplateSlide
+ (BOOL)hasLocalizedThumbnailText;
+ (id)masterGuideColor;
+ (void)setMasterGuideColor:(id)a3;
+ (void)templatesNotEquivalentWithFile:(id)a3 lineNumber:(int64_t)a4 reason:(id)a5;
- (BOOL)containsProperty:(int)a3;
- (BOOL)hasBug16580905;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3;
- (BOOL)isObjectVisible;
- (CGRect)objectRect;
- (KNTemplateSlide)initWithSlideNode:(id)a3 context:(id)a4;
- (NSString)description;
- (id)buildChunks;
- (id)builds;
- (id)childEnumerator;
- (id)defaultTagForDrawable:(id)a3;
- (id)imagePlaceholders;
- (id)nonPlaceholderObjects;
- (id)objectForProperty:(int)a3;
- (id)p_defaultThumbnailTextForPlaceholder:(id)a3;
- (id)referencedStyles;
- (id)tagsForNewPlaceholderInfos:(id)a3;
- (id)thumbnailTextForPlaceholder:(id)a3;
- (id)unusedPlaceholderTagBasedOnTag:(id)a3;
- (int)intValueForProperty:(int)a3;
- (unint64_t)buildChunkCount;
- (unint64_t)buildCount;
- (void)acceptVisitor:(id)a3;
- (void)addBuild:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)flushClassicStylesheetRecord;
- (void)generateObjectPlaceholderIfNecessary;
- (void)insertBuildChunk:(id)a3 afterChunk:(id)a4 generateIdentifier:(BOOL)a5;
- (void)loadFromUnarchiver:(id)a3;
- (void)removeBuild:(id)a3;
- (void)removeBuildChunk:(id)a3 rollbackGeneratedIdentifier:(BOOL)a4;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setBodyListStyles:(id)a3;
- (void)setBodyParagraphStyles:(id)a3;
- (void)setName:(id)a3;
- (void)setObjectRect:(CGRect)a3;
- (void)setSlideObjectsLayerWithTemplate:(BOOL)a3;
- (void)setThumbnailTextForBodyPlaceholder:(id)a3;
- (void)setThumbnailTextForTitlePlaceholder:(id)a3;
- (void)updatePlaceholderText;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation KNTemplateSlide

+ (BOOL)hasLocalizedThumbnailText
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2);
  v6 = objc_msgSend_languageCode(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"en");

  return isEqualToString ^ 1;
}

- (void)setName:(id)a3
{
  v4 = a3;
  if (self->_name != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_name, v9);
    v4 = v9;
  }
}

- (CGRect)objectRect
{
  x = self->_objectRect.origin.x;
  y = self->_objectRect.origin.y;
  width = self->_objectRect.size.width;
  height = self->_objectRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setObjectRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_objectRect = &self->_objectRect;
  if (!CGRectEqualToRect(self->_objectRect, a3))
  {
    objc_msgSend_willModify(self, v9, v10);
    p_objectRect->origin.x = x;
    p_objectRect->origin.y = y;
    p_objectRect->size.width = width;
    p_objectRect->size.height = height;
  }
}

- (void)setBodyParagraphStyles:(id)a3
{
  v4 = a3;
  if (self->_bodyParagraphStyles != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_bodyParagraphStyles, v9);
    v4 = v9;
  }
}

- (void)setBodyListStyles:(id)a3
{
  v4 = a3;
  if (self->_bodyListStyles != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_bodyListStyles, v9);
    v4 = v9;
  }
}

- (void)setThumbnailTextForTitlePlaceholder:(id)a3
{
  v4 = a3;
  if (self->_thumbnailTextForTitlePlaceholder != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_thumbnailTextForTitlePlaceholder, v9);
    v4 = v9;
  }
}

- (void)setThumbnailTextForBodyPlaceholder:(id)a3
{
  v4 = a3;
  if (self->_thumbnailTextForBodyPlaceholder != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_thumbnailTextForBodyPlaceholder, v9);
    v4 = v9;
  }
}

- (void)setSlideObjectsLayerWithTemplate:(BOOL)a3
{
  if (self->_slideObjectsLayerWithTemplate != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_slideObjectsLayerWithTemplate = a3;
  }
}

- (KNTemplateSlide)initWithSlideNode:(id)a3 context:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = KNTemplateSlide;
  v7 = [(KNAbstractSlide *)&v15 initWithSlideNode:a3 context:v6];
  v8 = v7;
  if (v7)
  {
    name = v7->_name;
    v7->_name = @"Template Slide";

    v10 = [KNClassicStylesheetRecord alloc];
    v12 = objc_msgSend_initWithContext_(v10, v11, v6);
    classicStylesheetRecord = v8->_classicStylesheetRecord;
    v8->_classicStylesheetRecord = v12;

    v8->_hasBug16580905 = 0;
    v8->_calculatedHasBug16580905 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_name(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@ %p: %@>", v5, self, v8);

  return v10;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v65.receiver = self;
  v65.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v65 adoptStylesheet:v6 withMapper:v7];
  v10 = objc_msgSend_bodyParagraphStyles(self, v8, v9);

  if (v10)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_bodyParagraphStyles(self, v14, v15);
    v19 = objc_msgSend_count(v16, v17, v18);
    v21 = objc_msgSend_initWithCapacity_(v13, v20, v19);

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v24 = objc_msgSend_bodyParagraphStyles(self, v22, v23);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v61, v67, 16);
    if (v26)
    {
      v28 = v26;
      v29 = *v62;
      do
      {
        v30 = 0;
        do
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = objc_msgSend_mappedStyleForStyle_(v7, v27, *(*(&v61 + 1) + 8 * v30));
          objc_msgSend_addObject_(v21, v32, v31);

          ++v30;
        }

        while (v28 != v30);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v61, v67, 16);
      }

      while (v28);
    }

    objc_msgSend_setBodyParagraphStyles_(self, v33, v21);
  }

  v34 = objc_msgSend_bodyListStyles(self, v11, v12);

  if (v34)
  {
    v36 = objc_alloc(MEMORY[0x277CBEB18]);
    v39 = objc_msgSend_bodyListStyles(self, v37, v38);
    v42 = objc_msgSend_count(v39, v40, v41);
    v44 = objc_msgSend_initWithCapacity_(v36, v43, v42);

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = objc_msgSend_bodyListStyles(self, v45, v46, 0);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v57, v66, 16);
    if (v49)
    {
      v51 = v49;
      v52 = *v58;
      do
      {
        v53 = 0;
        do
        {
          if (*v58 != v52)
          {
            objc_enumerationMutation(v47);
          }

          v54 = objc_msgSend_mappedStyleForStyle_(v7, v50, *(*(&v57 + 1) + 8 * v53));
          objc_msgSend_addObject_(v44, v55, v54);

          ++v53;
        }

        while (v51 != v53);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v57, v66, 16);
      }

      while (v51);
    }

    objc_msgSend_setBodyListStyles_(self, v56, v44);
  }

  objc_msgSend_adoptStylesheet_withMapper_(self->_classicStylesheetRecord, v35, v6, v7);
}

- (id)defaultTagForDrawable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"Media";
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"Text";
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"Live Video";
LABEL_7:
    v6 = sub_275DC204C();
    v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, v4, &stru_2884D8E20, @"Keynote");

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNTemplateSlide defaultTagForDrawable:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 201, 0, "No default tag for drawable %{public}@.", v3);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v16 = sub_275DC204C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"Placeholder", &stru_2884D8E20, @"Keynote");

LABEL_9:

  return v8;
}

- (id)tagsForNewPlaceholderInfos:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNTemplateSlide tagsForNewPlaceholderInfos:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 210, 0, "invalid nil value for '%{public}s'", "drawables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v49, v53, 16);
  if (v46)
  {
    v17 = 1;
    v45 = *v50;
    do
    {
      v18 = 0;
      do
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v18;
        v19 = objc_msgSend_defaultTagForDrawable_(self, v16, *(*(&v49 + 1) + 8 * v18));
        v21 = objc_msgSend_objectAtIndex_(obj, v20, 0);
        v23 = objc_msgSend_defaultTagForDrawable_(self, v22, v21);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v24, v19);

        if ((isEqualToString & 1) == 0)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[KNTemplateSlide tagsForNewPlaceholderInfos:]");
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 219, 0, "This method expects that all drawables passed in have the same base tag. If you need this method to support multiple types in the set, you will need to implement it.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
        }

        v34 = v19;
        for (i = objc_msgSend_infoExistsForTag_(self, v26, v19); (i & 1) != 0 || objc_msgSend_indexOfObject_(v14, v36, v34) != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_infoExistsForTag_(self, v43, v42))
        {
          v37 = MEMORY[0x277CCABB8];
          v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v36, v17);
          v40 = objc_msgSend_localizedStringFromNumber_numberStyle_(v37, v39, v38, 1);

          v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%@-%@", v19, v40);

          ++v17;
          v34 = v42;
        }

        objc_msgSend_addObject_(v14, v36, v34);

        v18 = v48 + 1;
      }

      while (v48 + 1 != v46);
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v49, v53, 16);
    }

    while (v46);
  }

  return v14;
}

- (id)unusedPlaceholderTagBasedOnTag:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_infoForTag_(self, v5, v4);

  if (v6)
  {
    v9 = objc_msgSend_documentRoot(self, v7, v8);
    v12 = objc_msgSend_documentLocale(v9, v10, v11);
    v15 = objc_msgSend_placeholdersForTags(self, v13, v14);
    v18 = objc_msgSend_allKeys(v15, v16, v17);
    v19 = TSUNumberFormatterIncreaseTagFromStringWithSeparator();
  }

  else
  {
    v19 = v4;
  }

  return v19;
}

- (id)p_defaultThumbnailTextForPlaceholder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_titlePlaceholder(self, v5, v6);

  if (v7 == v4 || (objc_msgSend_bodyPlaceholder(self, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != v4))
  {
    v13 = sub_275DC204C();
    v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"Lorem Ipsum Dolor", &stru_2884D8E20, @"Keynote");
    goto LABEL_14;
  }

  v16 = objc_msgSend_textStorage(v4, v11, v12);
  v13 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(v16, v17, 0, 0);

  if (!objc_msgSend_firstLabelType(v13, v18, v19))
  {
    v49 = @"Donec quis nunc";
    goto LABEL_13;
  }

  v22 = objc_msgSend_geometry(v4, v20, v21);
  objc_msgSend_size(v22, v23, v24);
  v26 = v25;
  v29 = objc_msgSend_background(self, v27, v28);
  v32 = objc_msgSend_geometry(v29, v30, v31);
  objc_msgSend_size(v32, v33, v34);
  v36 = v35 * 0.5;

  v39 = objc_msgSend_style(v4, v37, v38);
  LODWORD(v22) = objc_msgSend_containsProperty_(v39, v40, 148);

  if (!v22)
  {
    if (v26 > v36)
    {
      goto LABEL_11;
    }

LABEL_12:
    v49 = @"Maecenas aliquam maecenas ligula nostra\nSociis mauris in integer, ipsum purus pede\nEl eu libero cras interdum at eget habitasse\nAliquet sed. Lorem ipsum dolor sit amet";
    goto LABEL_13;
  }

  v43 = objc_msgSend_style(v4, v41, v42);
  v45 = objc_msgSend_objectForProperty_(v43, v44, 148);
  v48 = objc_msgSend_columnCount(v45, v46, v47);

  if (v26 <= v36)
  {
    goto LABEL_12;
  }

  if (v48 <= 1)
  {
LABEL_11:
    v49 = @"Maecenas aliquam maecenas ligula nostra, accumsan taciti. Sociis mauris in integer\nEl eu libero cras interdum at eget habitasse elementum est, ipsum purus pede\nAliquet sed. Lorem ipsum dolor sit amet, ligula suspendisse nulla pretium, rhoncus";
    goto LABEL_13;
  }

  v49 = @"Maecenas aliquam maecenas ligula nostra\nSociis mauris in integer, ipsum purus pede\nEl eu libero cras interdum at eget habitasse\fAliquet sed. Lorem ipsum dolor sit amet\nMaecenas aliquam maecenas ligula nostra\nSociis mauris in integer, ipsum purus pede";
LABEL_13:
  v50 = sub_275DC204C();
  v15 = objc_msgSend_localizedStringForKey_value_table_(v50, v51, v49, &stru_2884D8E20, @"Keynote");

LABEL_14:

  return v15;
}

- (id)thumbnailTextForPlaceholder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ((objc_msgSend_hasLocalizedThumbnailText(v5, v6, v7) & 1) == 0)
  {
    v10 = objc_msgSend_titlePlaceholder(self, v8, v9);

    if (v10 == v4)
    {
      v14 = &OBJC_IVAR___KNTemplateSlide__thumbnailTextForTitlePlaceholder;
LABEL_6:
      v15 = *(&self->super.super.super.isa + *v14);
      if (v15)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = objc_msgSend_bodyPlaceholder(self, v11, v12);

    if (v13 == v4)
    {
      v14 = &OBJC_IVAR___KNTemplateSlide__thumbnailTextForBodyPlaceholder;
      goto LABEL_6;
    }
  }

LABEL_7:
  v15 = objc_msgSend_p_defaultThumbnailTextForPlaceholder_(self, v8, v4);
LABEL_8:

  return v15;
}

- (BOOL)isObjectVisible
{
  v6 = objc_msgSend_objectPlaceholder(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_childInfos(self, v4, v5);
    v10 = objc_msgSend_objectPlaceholder(self, v8, v9);
    v12 = objc_msgSend_containsObject_(v7, v11, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imagePlaceholders
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v7 = objc_msgSend_childInfos(self, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275D60E60;
  v11[3] = &unk_27A697E68;
  v8 = v4;
  v12 = v8;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v11);

  return v8;
}

- (id)nonPlaceholderObjects
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v7 = objc_msgSend_childInfos(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275D60FAC;
  v12[3] = &unk_27A697E90;
  v8 = v4;
  v13 = v8;
  v14 = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v12);

  v10 = v8;
  return v8;
}

- (void)flushClassicStylesheetRecord
{
  classicStylesheetRecord = self->_classicStylesheetRecord;
  self->_classicStylesheetRecord = 0;
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v24.receiver = self;
  v24.super_class = KNTemplateSlide;
  v6 = a3;
  [(KNAbstractSlide *)&v24 wasAddedToDocumentRoot:v6 dolcContext:a4];
  v9 = objc_msgSend_style(self, v7, v8, v24.receiver, v24.super_class);
  v12 = objc_msgSend_stylesheet(v6, v10, v11);

  v17 = objc_msgSend_stylesheet(v9, v13, v14);
  if (v17 == v12)
  {
    v18 = objc_msgSend_parent(v9, v15, v16);
    if (v18)
    {
    }

    else
    {
      v21 = objc_msgSend_styleIdentifier(v9, v19, v20);

      if (v21)
      {
        goto LABEL_5;
      }

      v17 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v12, v22, @"slide", @"slidestyle", 0);
      objc_msgSend_setIdentifier_ofStyle_(v12, v23, v17, v9);
    }
  }

LABEL_5:
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v37 willBeRemovedFromDocumentRoot:v4];
  v7 = objc_msgSend_style(self, v5, v6);
  v10 = objc_msgSend_stylesheet(v7, v8, v9);
  v13 = objc_msgSend_stylesheet(v4, v11, v12);

  if (v10 == v13)
  {
    v14 = v4;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v17 = objc_msgSend_show(v14, v15, v16);
    v20 = objc_msgSend_theme(v17, v18, v19);
    v23 = objc_msgSend_templateSlides(v20, v21, v22);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_275D61358;
    v30[3] = &unk_27A697EB8;
    v30[4] = self;
    v24 = v7;
    v31 = v24;
    v32 = &v33;
    objc_msgSend_enumerateObjectsUsingBlock_(v23, v25, v30);

    if ((v34[3] & 1) == 0)
    {
      v28 = objc_msgSend_stylesheet(v14, v26, v27);
      objc_msgSend_setIdentifier_ofStyle_(v28, v29, 0, v24);
    }

    _Block_object_dispose(&v33, 8);
  }
}

+ (id)masterGuideColor
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_p_defaultTemplateGuideColor, v3);
}

+ (void)setMasterGuideColor:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[KNTemplateSlide setMasterGuideColor:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 445, 0, "iOS and QL do not support setting the guide color");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)updatePlaceholderText
{
  v133[5] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_documentLocale(v4, v5, v6);

  v10 = objc_msgSend_titlePlaceholder(self, v8, v9);
  v12 = objc_msgSend_instructionalTextForInfo_(self, v11, v10);
  v14 = v12;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = objc_msgSend_localizedStringForKey_value_table_(v7, v13, @"Title Text", &stru_2884D8E20, @"Keynote");
  }

  v16 = v15;

  v19 = objc_msgSend_titlePlaceholder(self, v17, v18);
  v22 = objc_msgSend_textStorage(v19, v20, v21);

  v25 = objc_msgSend_string(v22, v23, v24);
  isEqualToString = objc_msgSend_isEqualToString_(v25, v26, v16);

  if ((isEqualToString & 1) == 0)
  {
    v30 = objc_msgSend_titlePlaceholder(self, v28, v29);
    v33 = objc_msgSend_textStorage(v30, v31, v32);
    v36 = objc_msgSend_range(v33, v34, v35);
    objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v22, v37, v36, v37, v16, 0);
  }

  v125 = v16;
  v38 = objc_msgSend_localizedStringForKey_value_table_(v7, v28, @"Body Level One", &stru_2884D8E20, @"Keynote");
  v133[0] = v38;
  v40 = objc_msgSend_localizedStringForKey_value_table_(v7, v39, @"Body Level Two", &stru_2884D8E20, @"Keynote");
  v133[1] = v40;
  v42 = objc_msgSend_localizedStringForKey_value_table_(v7, v41, @"Body Level Three", &stru_2884D8E20, @"Keynote");
  v133[2] = v42;
  v44 = objc_msgSend_localizedStringForKey_value_table_(v7, v43, @"Body Level Four", &stru_2884D8E20, @"Keynote");
  v133[3] = v44;
  v46 = objc_msgSend_localizedStringForKey_value_table_(v7, v45, @"Body Level Five", &stru_2884D8E20, @"Keynote");
  v133[4] = v46;
  v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, v133, 5);

  v51 = objc_msgSend_bodyPlaceholder(self, v49, v50);
  v54 = objc_msgSend_textStorage(v51, v52, v53);

  v57 = objc_msgSend_bodyParagraphStyles(self, v55, v56);
  v60 = v57;
  if (!v57 || !objc_msgSend_count(v57, v58, v59))
  {
    v62 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v54, v58, 0, 0);
    v132 = v62;
    v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, &v132, 1);

    v60 = v64;
  }

  v67 = objc_msgSend_bodyListStyles(self, v58, v61);
  if (v67)
  {
    v68 = objc_msgSend_bodyListStyles(self, v65, v66);
    v71 = objc_msgSend_count(v68, v69, v70);

    if (v71)
    {
      v67 = objc_msgSend_bodyListStyles(self, v65, v66);
    }

    else
    {
      v67 = 0;
    }
  }

  v124 = v22;
  v72 = objc_msgSend_string(MEMORY[0x277CCAB68], v65, v66);
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = sub_275D61AC4;
  v130[3] = &unk_27A697EE0;
  v73 = v72;
  v131 = v73;
  objc_msgSend_enumerateObjectsUsingBlock_(v48, v74, v130);
  v77 = objc_msgSend_string(v54, v75, v76);
  v79 = objc_msgSend_isEqualToString_(v77, v78, v73);

  if ((v79 & 1) == 0)
  {
    v82 = objc_msgSend_range(v54, v80, v81);
    objc_msgSend_deleteRange_undoTransaction_(v54, v83, v82, v83, 0);
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = sub_275D61B2C;
    v126[3] = &unk_27A697F08;
    v127 = v54;
    v128 = v60;
    v129 = v67;
    objc_msgSend_enumerateObjectsUsingBlock_(v48, v84, v126);
  }

  v122 = v60;
  v85 = v67;
  v86 = objc_msgSend_titlePlaceholder(self, v80, v81, v122);
  v89 = objc_msgSend_textStorage(v86, v87, v88);
  v92 = objc_msgSend_string(v89, v90, v91);
  v94 = objc_msgSend_isEqualToString_(v92, v93, self->_thumbnailTextForTitlePlaceholder);

  if (v94)
  {
    thumbnailTextForTitlePlaceholder = self->_thumbnailTextForTitlePlaceholder;
    self->_thumbnailTextForTitlePlaceholder = 0;
  }

  v98 = objc_msgSend_bodyPlaceholder(self, v95, v96);
  v101 = objc_msgSend_textStorage(v98, v99, v100);
  v104 = objc_msgSend_string(v101, v102, v103);
  v106 = objc_msgSend_isEqualToString_(v104, v105, self->_thumbnailTextForBodyPlaceholder);

  if (v106)
  {
    thumbnailTextForBodyPlaceholder = self->_thumbnailTextForBodyPlaceholder;
    self->_thumbnailTextForBodyPlaceholder = 0;
  }

  v110 = objc_msgSend_paragraphCount(v54, v107, v108);
  v111 = v48;
  if (v110 != objc_msgSend_count(v48, v112, v113))
  {
    v115 = MEMORY[0x277D81150];
    v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "[KNTemplateSlide updatePlaceholderText]");
    v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v119, v116, v118, 590, 0, "failed to populate body placeholder correctly");

    v111 = v48;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121);
  }
}

- (id)builds
{
  v17.receiver = self;
  v17.super_class = KNTemplateSlide;
  v2 = [(KNAbstractSlide *)&v17 builds];
  v5 = objc_msgSend_count(v2, v3, v4);

  if (v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNTemplateSlide builds]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 663, 0, "Template slide appears to have builds. This is not currently supported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_set(MEMORY[0x277CBEB98], v6, v7);

  return v15;
}

- (unint64_t)buildCount
{
  v11.receiver = self;
  v11.super_class = KNTemplateSlide;
  if ([(KNAbstractSlide *)&v11 buildCount])
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[KNTemplateSlide buildCount]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 669, 0, "Template slide appears to have builds. This is not currently supported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return 0;
}

- (id)buildChunks
{
  v17.receiver = self;
  v17.super_class = KNTemplateSlide;
  v2 = [(KNAbstractSlide *)&v17 buildChunks];
  v5 = objc_msgSend_count(v2, v3, v4);

  if (v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNTemplateSlide buildChunks]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 674, 0, "Template slide appears to have build chunks. This is not currently supported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_array(MEMORY[0x277CBEA60], v6, v7);

  return v15;
}

- (unint64_t)buildChunkCount
{
  v11.receiver = self;
  v11.super_class = KNTemplateSlide;
  if ([(KNAbstractSlide *)&v11 buildChunkCount])
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[KNTemplateSlide buildChunkCount]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 680, 0, "Template slide appears to have build chunks. This is not currently supported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return 0;
}

- (void)addBuild:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNTemplateSlide addBuild:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 686, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[KNTemplateSlide addBuild:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)removeBuild:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNTemplateSlide removeBuild:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 690, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[KNTemplateSlide removeBuild:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)insertBuildChunk:(id)a3 afterChunk:(id)a4 generateIdentifier:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNTemplateSlide insertBuildChunk:afterChunk:generateIdentifier:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 694, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: %s", "Do not call method", "[KNTemplateSlide insertBuildChunk:afterChunk:generateIdentifier:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v20, v17, v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)removeBuildChunk:(id)a3 rollbackGeneratedIdentifier:(BOOL)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNTemplateSlide removeBuildChunk:rollbackGeneratedIdentifier:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 698, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = *MEMORY[0x277CBE658];
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s: %s", "Do not call method", "[KNTemplateSlide removeBuildChunk:rollbackGeneratedIdentifier:]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v17, v14, v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)acceptVisitor:(id)a3
{
  v4 = TSUProtocolCast();
  if (v4)
  {
    v6 = v4;
    objc_msgSend_visitKNTemplateSlide_(v4, v5, self, &unk_2885462B0);
    v4 = v6;
  }
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v11.receiver = self;
  v11.super_class = KNTemplateSlide;
  v4 = [(KNAbstractSlide *)&v11 childEnumerator];
  v7 = objc_msgSend_classicStylesheetRecord(self, v5, v6);
  v9 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v8, v4, v7, 0);

  return v9;
}

- (BOOL)containsProperty:(int)a3
{
  if (a3 >> 1 == 2106)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = KNTemplateSlide;
  return [(KNAbstractSlide *)&v6 containsProperty:?];
}

- (int)intValueForProperty:(int)a3
{
  if (a3 == 4216)
  {
    return objc_msgSend_slideObjectsLayerWithTemplate(self, a2, *&a3);
  }

  v4.receiver = self;
  v4.super_class = KNTemplateSlide;
  return [(KNAbstractSlide *)&v4 intValueForProperty:?];
}

- (id)objectForProperty:(int)a3
{
  if (a3 == 4213)
  {
    v3 = objc_msgSend_bodyListStyles(self, a2, *&a3);
  }

  else if (a3 == 4212)
  {
    v3 = objc_msgSend_bodyParagraphStyles(self, a2, *&a3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = KNTemplateSlide;
    v3 = [(KNAbstractSlide *)&v5 objectForProperty:?];
  }

  return v3;
}

- (id)referencedStyles
{
  v16.receiver = self;
  v16.super_class = KNTemplateSlide;
  v3 = [(KNAbstractSlide *)&v16 referencedStyles];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v9 = objc_msgSend_bodyParagraphStyles(self, v7, v8);
  objc_msgSend_addObjectsFromArray_(v6, v10, v9);

  v13 = objc_msgSend_bodyListStyles(self, v11, v12);
  objc_msgSend_addObjectsFromArray_(v6, v14, v13);

  return v6;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v17.receiver = self;
  v17.super_class = KNTemplateSlide;
  v4 = a3;
  [(KNAbstractSlide *)&v17 replaceReferencedStylesUsingBlock:v4];
  v7 = objc_msgSend_bodyParagraphStyles(self, v5, v6, v17.receiver, v17.super_class);
  v9 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v7, v8, v4);
  objc_msgSend_setBodyParagraphStyles_(self, v10, v9);

  v13 = objc_msgSend_bodyListStyles(self, v11, v12);
  v15 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v13, v14, v4);

  objc_msgSend_setBodyListStyles_(self, v16, v15);
}

+ (void)templatesNotEquivalentWithFile:(id)a3 lineNumber:(int64_t)a4 reason:(id)a5
{
  if (byte_280A3BF58 == 1)
  {
    byte_280A3BF58 = 0;
  }
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = objc_msgSend_name(self, v5, v6);
  v11 = objc_msgSend_name(v7, v9, v10);
  byte_280A3BF58 = objc_msgSend_isEqualToString_(v8, v12, v11);

  LODWORD(v8) = objc_msgSend_slideObjectsLayerWithTemplate(self, v13, v14);
  if (v8 != objc_msgSend_slideObjectsLayerWithTemplate(v7, v15, v16))
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"slideObjectsLayerWithTemplate");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v22, v21, 984, v19);
LABEL_10:

LABEL_11:
    v54 = 0;
    goto LABEL_12;
  }

  v23 = objc_msgSend_style(self, v17, v18);
  v25 = objc_msgSend_objectForProperty_(v23, v24, 516);
  v28 = objc_msgSend_style(v7, v26, v27);
  v30 = objc_msgSend_objectForProperty_(v28, v29, 516);
  isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v25, v31, v30);

  if ((isEquivalentForCrossDocumentPasteMasterComparison & 1) == 0)
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"background fill");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v51, v21, 990, v19);
    goto LABEL_10;
  }

  v35 = objc_msgSend_nonPlaceholderObjects(self, v33, v34);
  v38 = objc_msgSend_nonPlaceholderObjects(v7, v36, v37);
  v40 = objc_msgSend_kn_isEquivalentForCrossDocumentPasteMasterComparison_(v35, v39, v38);

  if ((v40 & 1) == 0)
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"background objects");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v53, v21, 995, v19);
    goto LABEL_10;
  }

  isTitleVisible = objc_msgSend_isTitleVisible(self, v41, v42);
  if (isTitleVisible != objc_msgSend_isTitleVisible(v7, v44, v45))
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"title visibility");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v49, v21, 1001, v19);
    goto LABEL_10;
  }

  isBodyVisible = objc_msgSend_isBodyVisible(self, v46, v47);
  if (isBodyVisible != objc_msgSend_isBodyVisible(v7, v57, v58))
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, @"body visibility");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v62, v21, 1005, v19);
    goto LABEL_10;
  }

  if (objc_msgSend_isTitleVisible(self, v59, v60))
  {
    v65 = objc_msgSend_titlePlaceholder(self, v63, v64);
    v68 = objc_msgSend_titlePlaceholder(v7, v66, v67);
    v70 = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v65, v69, v68);

    if (!v70)
    {
      goto LABEL_11;
    }
  }

  if (objc_msgSend_isBodyVisible(self, v63, v64))
  {
    v73 = objc_msgSend_bodyPlaceholder(self, v71, v72);
    v76 = objc_msgSend_bodyPlaceholder(v7, v74, v75);
    v78 = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v73, v77, v76);

    if (!v78)
    {
      goto LABEL_11;
    }
  }

  if (objc_msgSend_isSlideNumberVisible(self, v71, v72))
  {
    if (objc_msgSend_isSlideNumberVisible(v7, v79, v80))
    {
      v81 = objc_msgSend_slideNumberPlaceholder(self, v79, v80);
      v84 = objc_msgSend_slideNumberPlaceholder(v7, v82, v83);
      v86 = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v81, v85, v84);

      if (!v86)
      {
        goto LABEL_11;
      }
    }
  }

  v87 = MEMORY[0x277CBEB98];
  v88 = objc_msgSend_placeholdersForTags(self, v79, v80);
  v91 = objc_msgSend_allKeys(v88, v89, v90);
  v93 = objc_msgSend_setWithArray_(v87, v92, v91);

  v94 = MEMORY[0x277CBEB98];
  v97 = objc_msgSend_placeholdersForTags(v7, v95, v96);
  v100 = objc_msgSend_allKeys(v97, v98, v99);
  v102 = objc_msgSend_setWithArray_(v94, v101, v100);

  if (objc_msgSend_isEqual_(v93, v103, v102))
  {
    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 1;
    v106 = objc_msgSend_placeholdersForTags(self, v104, v105);
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = sub_275D62EA0;
    v112[3] = &unk_27A697F30;
    v113 = v7;
    v114 = &v115;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v106, v107, v112);

    v54 = *(v116 + 24);
    if (v54)
    {
      byte_280A3BF58 = 0;
    }

    _Block_object_dispose(&v115, 8);
  }

  else
  {
    v108 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v104, @"placeholder tags");
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m");
    objc_msgSend_templatesNotEquivalentWithFile_lineNumber_reason_(KNTemplateSlide, v111, v110, 1032, v108);

    v54 = 0;
  }

LABEL_12:
  return v54;
}

- (void)generateObjectPlaceholderIfNecessary
{
  objc_opt_class();
  v5 = objc_msgSend_objectPlaceholder(self, v3, v4);
  v67 = TSUDynamicCast();

  if (v67 || (objc_msgSend_objectPlaceholder(self, v6, v7), v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
  {
    v8 = objc_msgSend_objectPlaceholder(self, v6, v7);

    if (v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_willModifyForUpgrade(self, v9, v10);
    objc_opt_class();
    v13 = objc_msgSend_documentRoot(self, v11, v12);
    v14 = TSUDynamicCast();

    v17 = objc_msgSend_show(v14, v15, v16);
    objc_msgSend_size(v17, v18, v19);
    v20 = objc_alloc(MEMORY[0x277D802E8]);
    TSURoundedPoint();
    v22 = v21;
    v24 = v23;
    TSURoundedSize();
    v29 = objc_msgSend_initWithPosition_size_(v20, v25, v26, v22, v24, v27, v28);
    objc_opt_class();
    v32 = objc_msgSend_theme(v17, v30, v31);
    v34 = objc_msgSend_presetOfKind_index_(v32, v33, *MEMORY[0x277D80BB8], 0);
    v35 = TSUDynamicCast();

    v36 = [KNObjectPlaceholderInfo alloc];
    v39 = objc_msgSend_context(v14, v37, v38);
    v41 = objc_msgSend_initWithContext_geometry_style_(v36, v40, v39, v29, v35);

    objc_msgSend_setObjectPlaceholder_(self, v42, v41);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    objc_opt_class();
    v46 = objc_msgSend_documentRoot(self, v44, v45);
    v14 = TSUDynamicCast();

    objc_opt_class();
    v49 = objc_msgSend_show(v14, v47, v48);
    v52 = objc_msgSend_theme(v49, v50, v51);
    v54 = objc_msgSend_presetOfKind_index_(v52, v53, *MEMORY[0x277D80BB8], 0);
    v17 = TSUDynamicCast();

    v55 = [KNObjectPlaceholderInfo alloc];
    v58 = objc_msgSend_context(self, v56, v57);
    v61 = objc_msgSend_objectPlaceholder(self, v59, v60);
    v64 = objc_msgSend_geometry(v61, v62, v63);
    v29 = objc_msgSend_initWithContext_geometry_style_(v55, v65, v58, v64, v17);

    objc_msgSend_setObjectPlaceholder_(self, v66, v29);
  }

LABEL_7:
}

- (BOOL)hasBug16580905
{
  if (!self->_calculatedHasBug16580905)
  {
    v4 = objc_msgSend_owningDocument(self, a2, v2);
    v7 = objc_msgSend_show(v4, v5, v6);
    v10 = objc_msgSend_theme(v7, v8, v9);

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = objc_msgSend_templateSlides(v10, v11, v12);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_275D6486C;
    v16[3] = &unk_27A697FA0;
    v16[4] = self;
    v16[5] = &v17;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v14, v16);

    self->_hasBug16580905 = *(v18 + 24) ^ 1;
    self->_calculatedHasBug16580905 = 1;
    _Block_object_dispose(&v17, 8);
  }

  return self->_hasBug16580905;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812EA908[32]);

  v92.receiver = self;
  v92.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v92 loadFromArchive:v6 unarchiver:v4];
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = objc_msgSend_tsp_initWithProtobufString_(v7, v8, *(v6 + 264) & 0xFFFFFFFFFFFFFFFELL);
  name = self->_name;
  self->_name = v9;

  if (*(v6 + 18))
  {
    v11 = *(v6 + 392);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_275D64F94;
    v91[3] = &unk_27A697FC8;
    v91[4] = self;
    v12 = v4;
    v13 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, v91);
  }

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_275D64FAC;
  v90[3] = &unk_27A697A10;
  v90[4] = self;
  v15 = v4;
  v16 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v15, v17, v6 + 144, v16, 0, v90);

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = sub_275D64FC4;
  v89[3] = &unk_27A697A10;
  v89[4] = self;
  v18 = v15;
  v19 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v18, v20, v6 + 168, v19, 0, v89);

  v23 = *(v6 + 432);
  v24 = *(v6 + 16);
  if ((v24 & 0x80) != 0)
  {
    v27 = objc_alloc(MEMORY[0x277D80358]);
    if (*(v6 + 320))
    {
      v29 = objc_msgSend_initWithArchive_(v27, v28, *(v6 + 320));
    }

    else
    {
      v29 = objc_msgSend_initWithArchive_(v27, v28, MEMORY[0x277D804B8]);
    }

    v25 = v29;
    v24 = *(v6 + 16);
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = 0;
    if ((v24 & 0x1000) == 0)
    {
LABEL_5:
      v26 = 0;
      goto LABEL_14;
    }
  }

  v26 = objc_alloc_init(MEMORY[0x277D80AB8]);
  if (*(v6 + 360))
  {
    objc_msgSend_loadShapeStyleLayoutPropertiesIntoPropertyMap_fromArchive_unarchiver_(MEMORY[0x277D80F18], v30, v26, *(v6 + 360), v18);
  }

  else
  {
    objc_msgSend_loadShapeStyleLayoutPropertiesIntoPropertyMap_fromArchive_unarchiver_(MEMORY[0x277D80F18], v30, v26, MEMORY[0x277D81090], v18);
  }

  v24 = *(v6 + 16);
LABEL_14:
  v31 = *(v6 + 440);
  if ((v24 & 0x100) != 0)
  {
    v33 = objc_alloc(MEMORY[0x277D80358]);
    if (*(v6 + 328))
    {
      v35 = objc_msgSend_initWithArchive_(v33, v34, *(v6 + 328));
    }

    else
    {
      v35 = objc_msgSend_initWithArchive_(v33, v34, MEMORY[0x277D804B8]);
    }

    v32 = v35;
    v24 = *(v6 + 16);
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v37 = objc_alloc_init(MEMORY[0x277D80AB8]);
    if (*(v6 + 368))
    {
      objc_msgSend_loadShapeStyleLayoutPropertiesIntoPropertyMap_fromArchive_unarchiver_(MEMORY[0x277D80F18], v36, v37, *(v6 + 368), v18);
    }

    else
    {
      objc_msgSend_loadShapeStyleLayoutPropertiesIntoPropertyMap_fromArchive_unarchiver_(MEMORY[0x277D80F18], v36, v37, MEMORY[0x277D81090], v18);
    }

    v75 = v37;
    v24 = *(v6 + 16);
    goto LABEL_25;
  }

  v32 = 0;
  if ((v24 & 0x2000) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v75 = 0;
LABEL_25:
  v38 = *(v6 + 448);
  v74 = v25;
  if ((v24 & 0x800) != 0)
  {
    v39 = objc_alloc(MEMORY[0x277D80358]);
    if (*(v6 + 352))
    {
      v41 = objc_msgSend_initWithArchive_(v39, v40, *(v6 + 352));
    }

    else
    {
      v41 = objc_msgSend_initWithArchive_(v39, v40, MEMORY[0x277D804B8]);
    }

    v73 = v41;
    v24 = *(v6 + 16);
  }

  else
  {
    v73 = 0;
  }

  v42 = v32;
  if ((v24 & 0x4000) != 0)
  {
    v60 = objc_alloc_init(MEMORY[0x277D80AB8]);
    if (*(v6 + 376))
    {
      objc_msgSend_loadShapeStyleLayoutPropertiesIntoPropertyMap_fromArchive_unarchiver_(MEMORY[0x277D80F18], v59, v60, *(v6 + 376), v18);
    }

    else
    {
      objc_msgSend_loadShapeStyleLayoutPropertiesIntoPropertyMap_fromArchive_unarchiver_(MEMORY[0x277D80F18], v59, v60, MEMORY[0x277D81090], v18);
    }

    v24 = *(v6 + 16);
    v43 = v60;
    if ((v24 & 2) == 0)
    {
LABEL_33:
      if ((v24 & 4) == 0)
      {
        goto LABEL_34;
      }

LABEL_42:
      v65 = objc_alloc(MEMORY[0x277CCACA8]);
      v67 = objc_msgSend_tsp_initWithProtobufString_(v65, v66, *(v6 + 280) & 0xFFFFFFFFFFFFFFFELL);
      thumbnailTextForBodyPlaceholder = self->_thumbnailTextForBodyPlaceholder;
      self->_thumbnailTextForBodyPlaceholder = v67;

      if ((*(v6 + 16) & 0x8000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v43 = 0;
    if ((v24 & 2) == 0)
    {
      goto LABEL_33;
    }
  }

  v61 = objc_alloc(MEMORY[0x277CCACA8]);
  v63 = objc_msgSend_tsp_initWithProtobufString_(v61, v62, *(v6 + 272) & 0xFFFFFFFFFFFFFFFELL);
  thumbnailTextForTitlePlaceholder = self->_thumbnailTextForTitlePlaceholder;
  self->_thumbnailTextForTitlePlaceholder = v63;

  v24 = *(v6 + 16);
  if ((v24 & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  if ((v24 & 0x8000000) != 0)
  {
LABEL_35:
    self->_slideObjectsLayerWithTemplate = *(v6 + 456);
  }

LABEL_36:
  v44 = objc_msgSend_preUFFVersion(v18, v21, v22);
  v71 = objc_msgSend_fileFormatVersion(v18, v45, v46);
  v72 = v44;
  LOBYTE(v44) = objc_msgSend_hasPreUFFVersion(v18, v47, v48);
  v49 = v18;
  *&v50 = v23;
  *(&v50 + 1) = HIDWORD(v23);
  v51 = v50;
  *&v50 = v31;
  *(&v50 + 1) = HIDWORD(v31);
  v69 = v51;
  v70 = v50;
  *&v50 = v38;
  *(&v50 + 1) = HIDWORD(v38);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_275D64FDC;
  v76[3] = &unk_27A697FF0;
  v76[4] = self;
  v52 = v26;
  v77 = v52;
  v53 = v74;
  v78 = v53;
  v83 = v69;
  v54 = v75;
  v79 = v54;
  v55 = v42;
  v80 = v55;
  v84 = v70;
  v56 = v43;
  v81 = v56;
  v57 = v73;
  v82 = v57;
  v85 = v50;
  v88 = v44;
  v86 = v72;
  v87 = v71;
  objc_msgSend_addFinalizeHandler_(v49, v58, v76);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_275D55CF8, off_2812EA908[32]);

  v26.receiver = self;
  v26.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v26 saveToArchive:v6 archiver:v4];
  v9 = objc_msgSend_name(self, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  *(v6 + 16) |= 1u;
  sub_275D55B98(__p, v13);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  classicStylesheetRecord = self->_classicStylesheetRecord;
  if (classicStylesheetRecord)
  {
    *(v6 + 16) |= 0x10000u;
    v16 = *(v6 + 392);
    if (!v16)
    {
      v17 = *(v6 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C8F050](v17);
      *(v6 + 392) = v16;
    }

    objc_msgSend_setStrongReference_message_(v4, v14, classicStylesheetRecord, v16);
  }

  bodyParagraphStyles = self->_bodyParagraphStyles;
  if (bodyParagraphStyles)
  {
    objc_msgSend_setStrongReferenceArray_message_(v4, v14, bodyParagraphStyles, v6 + 144);
  }

  bodyListStyles = self->_bodyListStyles;
  if (bodyListStyles)
  {
    objc_msgSend_setStrongReferenceArray_message_(v4, v14, bodyListStyles, v6 + 168);
  }

  thumbnailTextForTitlePlaceholder = self->_thumbnailTextForTitlePlaceholder;
  if (thumbnailTextForTitlePlaceholder)
  {
    if (objc_msgSend_length(thumbnailTextForTitlePlaceholder, v14, bodyListStyles))
    {
      v21 = objc_msgSend_tsp_protobufString(self->_thumbnailTextForTitlePlaceholder, v14, bodyListStyles);
      *(v6 + 16) |= 2u;
      sub_275D55B98(__p, v21);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  thumbnailTextForBodyPlaceholder = self->_thumbnailTextForBodyPlaceholder;
  if (thumbnailTextForBodyPlaceholder)
  {
    if (objc_msgSend_length(thumbnailTextForBodyPlaceholder, v14, bodyListStyles))
    {
      v24 = objc_msgSend_tsp_protobufString(self->_thumbnailTextForBodyPlaceholder, v14, v23);
      *(v6 + 16) |= 4u;
      sub_275D55B98(__p, v24);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  slideObjectsLayerWithTemplate = self->_slideObjectsLayerWithTemplate;
  *(v6 + 16) |= 0x8000000u;
  *(v6 + 456) = slideObjectsLayerWithTemplate;
  if (slideObjectsLayerWithTemplate)
  {
    objc_msgSend_requiresDocumentVersion_(v4, v14, *MEMORY[0x277D80958]);
  }
}

@end