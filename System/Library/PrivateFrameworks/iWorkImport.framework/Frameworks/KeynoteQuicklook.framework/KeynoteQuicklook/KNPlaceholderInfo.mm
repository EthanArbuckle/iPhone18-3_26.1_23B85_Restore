@interface KNPlaceholderInfo
+ (Class)classForUnarchiver:(id)unarchiver;
- (BOOL)isEmpty;
- (id)copyAsShapeInfoWithContext:(id)context;
- (id)defaultInstructionalText;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNPlaceholderInfo

- (id)copyAsShapeInfoWithContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_textStorage(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(v7, v8, contextCopy);

  v12 = objc_msgSend_pathSource(self, v10, v11);
  v15 = objc_msgSend_copy(v12, v13, v14);

  v18 = objc_msgSend_geometry(self, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);

  v22 = objc_alloc(MEMORY[0x277D80F00]);
  v25 = objc_msgSend_shapeStyle(self, v23, v24);
  v27 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(v22, v26, contextCopy, v21, v25, v15, v9);

  v30 = objc_msgSend_hyperlinkURL(self, v28, v29);
  objc_msgSend_setHyperlinkURL_(v27, v31, v30);

  v34 = objc_msgSend_accessibilityDescription(self, v32, v33);
  objc_msgSend_setAccessibilityDescription_(v27, v35, v34);

  v38 = objc_msgSend_comment(self, v36, v37);
  v41 = v38;
  if (v38)
  {
    v42 = objc_msgSend_storage(v38, v39, v40);
    v44 = objc_msgSend_copyWithContext_(v42, v43, contextCopy);

    v45 = objc_alloc(MEMORY[0x277D80218]);
    v47 = objc_msgSend_initWithParent_storage_(v45, v46, v27, v44);
    objc_msgSend_setComment_(v27, v48, v47);
  }

  v49 = objc_msgSend_titleInfoIgnoringVisibility(self, v39, v40);
  v52 = v49;
  if (v49)
  {
    v53 = objc_msgSend_replicateForReinsertion(v49, v50, v51);
    objc_msgSend_setTitle_(v27, v54, v53);
    v57 = objc_msgSend_titleHidden(self, v55, v56);
    objc_msgSend_setTitleHidden_(v27, v58, v57);
  }

  v59 = objc_msgSend_captionInfoIgnoringVisibility(self, v50, v51);
  v62 = v59;
  if (v59)
  {
    v63 = objc_msgSend_replicateForReinsertion(v59, v60, v61);
    objc_msgSend_setCaption_(v27, v64, v63);
    v67 = objc_msgSend_captionHidden(self, v65, v66);
    objc_msgSend_setCaptionHidden_(v27, v68, v67);
  }

  return v27;
}

- (id)defaultInstructionalText
{
  v3 = objc_msgSend_documentRoot(self, a2, v2);
  v6 = objc_msgSend_documentLocale(v3, v4, v5);

  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Double-tap to edit", &stru_2884D8E20, @"Keynote");

  return v8;
}

- (BOOL)isEmpty
{
  v3 = objc_msgSend_textStorage(self, a2, v2);
  v6 = objc_msgSend_length(v3, v4, v5) == 0;

  return v6;
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812EA908[18]);

  if (*(v6 + 32) == 1 || objc_msgSend_messageType(unarchiverCopy, v7, v8) == 12 || (*(v6 + 32) - 2) <= 2)
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
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[18]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D6DFBC, off_2812EA908[18]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D81070];
  }

  v22.receiver = self;
  v22.super_class = KNPlaceholderInfo;
  [(KNPlaceholderInfo *)&v22 loadFromArchive:v7 unarchiver:unarchiverCopy];
  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(unarchiverCopy, v8, v9);
  v13 = objc_msgSend_preUFFVersion(unarchiverCopy, v11, v12);
  v14 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v16 = objc_msgSend_messageWithDescriptor_(v14, v15, off_2812EA908[18]);

  v17 = *(v16 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_275D6DC90;
  v19[3] = &unk_27A698148;
  v21 = hasPreUFFVersion;
  v19[4] = self;
  v19[5] = v13;
  v20 = v17;
  objc_msgSend_addFinalizeHandler_(v14, v18, v19);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275D6DF2C;
  v12[3] = &unk_27A697C88;
  archiveCopy = archive;
  v7 = archiverCopy;
  v13 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v12);
  v11 = objc_msgSend_kind(self, v9, v10);
  *(archive + 4) |= 2u;
  *(archive + 8) = v11;
}

@end