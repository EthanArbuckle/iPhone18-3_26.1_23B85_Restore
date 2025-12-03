@interface KNShow
+ (KNShow)showWithSize:(CGSize)size context:(id)context;
+ (unint64_t)maximumHeight;
+ (unint64_t)maximumWidth;
- (BOOL)hasInSyncRecording;
- (BOOL)isPlayable;
- (BOOL)slideNumbersVisible;
- (CGPoint)center;
- (CGSize)size;
- (KNShow)initWithSize:(CGSize)size context:(id)context;
- (id)slideNodeAtIndex:(unint64_t)index;
- (id)slideNodesAtIndexes:(id)indexes;
- (unint64_t)indexOfSlideNode:(id)node;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAutomaticallyPlaysUponOpen:(BOOL)open;
- (void)setAutoplayBuildDelay:(double)delay;
- (void)setAutoplayTransitionDelay:(double)delay;
- (void)setIdleTimerActive:(BOOL)active;
- (void)setIdleTimerDelay:(double)delay;
- (void)setLoopPresentation:(BOOL)presentation;
- (void)setMode:(int64_t)mode;
- (void)setRecording:(id)recording;
- (void)setSize:(CGSize)size;
- (void)setSlideTree:(id)tree;
- (void)setSoundtrack:(id)soundtrack;
- (void)setStylesheetForThemePreview:(id)preview;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)willModify;
@end

@implementation KNShow

- (void)setSlideTree:(id)tree
{
  treeCopy = tree;
  if (self->_slideTree != treeCopy)
  {
    v8 = treeCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_slideTree, tree);
    treeCopy = v8;
  }
}

- (void)setAutoplayTransitionDelay:(double)delay
{
  if (self->_autoplayTransitionDelay != delay)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_autoplayTransitionDelay = delay;
  }
}

- (void)setAutoplayBuildDelay:(double)delay
{
  if (self->_autoplayBuildDelay != delay)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_autoplayBuildDelay = delay;
  }
}

- (void)setIdleTimerDelay:(double)delay
{
  if (self->_idleTimerDelay != delay)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_idleTimerDelay = delay;
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    objc_msgSend_willModify(self, a2, mode);
    self->_mode = mode;
  }
}

- (void)setLoopPresentation:(BOOL)presentation
{
  if (self->_loopPresentation != presentation)
  {
    objc_msgSend_willModify(self, a2, presentation);
    self->_loopPresentation = presentation;
  }
}

- (void)setIdleTimerActive:(BOOL)active
{
  if (self->_idleTimerActive != active)
  {
    objc_msgSend_willModify(self, a2, active);
    self->_idleTimerActive = active;
  }
}

- (void)setAutomaticallyPlaysUponOpen:(BOOL)open
{
  if (self->_automaticallyPlaysUponOpen != open)
  {
    objc_msgSend_willModify(self, a2, open);
    self->_automaticallyPlaysUponOpen = open;
  }
}

- (void)setSoundtrack:(id)soundtrack
{
  soundtrackCopy = soundtrack;
  if (self->_soundtrack != soundtrackCopy)
  {
    v8 = soundtrackCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_soundtrack, soundtrack);
    soundtrackCopy = v8;
  }
}

- (void)setRecording:(id)recording
{
  recordingCopy = recording;
  if (self->_recording != recordingCopy)
  {
    v8 = recordingCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_recording, recording);
    recordingCopy = v8;
  }
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  if (self->_stylesheet != stylesheetCopy)
  {
    v8 = stylesheetCopy;
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    objc_storeStrong(&self->_stylesheet, stylesheet);
    stylesheetCopy = v8;
  }
}

- (void)setStylesheetForThemePreview:(id)preview
{
  previewCopy = preview;
  if (self->_stylesheet != previewCopy)
  {
    v8 = previewCopy;
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    objc_storeStrong(&self->_stylesheet, preview);
    previewCopy = v8;
  }
}

- (BOOL)slideNumbersVisible
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D6E848;
  aBlock[3] = &unk_27A698188;
  aBlock[4] = &v21;
  v3 = _Block_copy(aBlock);
  v6 = objc_msgSend_theme(self, v4, v5);
  v9 = objc_msgSend_templateSlides(v6, v7, v8);
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v3);

  if (*(v22 + 24) == 1)
  {
    v13 = objc_msgSend_slideTree(self, v11, v12);
    v16 = objc_msgSend_slideNodes(v13, v14, v15);
    objc_msgSend_enumerateObjectsUsingBlock_(v16, v17, v3);

    v18 = *(v22 + 24);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v18 & 1;
}

+ (KNShow)showWithSize:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v7 = [KNShow alloc];
  v9 = objc_msgSend_initWithSize_context_(v7, v8, contextCopy, width, height);

  return v9;
}

- (KNShow)initWithSize:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = KNShow;
  v8 = [(KNShow *)&v29 initWithContext:contextCopy];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AE0]);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v9, v10, contextCopy, 1);
    stylesheet = v8->_stylesheet;
    v8->_stylesheet = canCullStyles;

    v13 = [KNTheme alloc];
    v15 = objc_msgSend_initWithContext_documentStylesheet_(v13, v14, contextCopy, v8->_stylesheet);
    theme = v8->_theme;
    v8->_theme = v15;

    v17 = objc_alloc_init(KNUIState);
    uiState = v8->_uiState;
    v8->_uiState = v17;

    v19 = [KNSlideTree alloc];
    v21 = objc_msgSend_initWithOwner_(v19, v20, v8);
    slideTree = v8->_slideTree;
    v8->_slideTree = v21;

    v8->_size.width = width;
    v8->_size.height = height;
    v8->_autoplayTransitionDelay = 5.0;
    v8->_autoplayBuildDelay = 2.0;
    v8->_idleTimerDelay = 900.0;
    v8->_mode = 0;
    v8->_loopPresentation = 0;
    v8->_idleTimerActive = 0;
    v23 = [KNSoundtrack alloc];
    v25 = objc_msgSend_initWithSoundtrackMedia_context_(v23, v24, MEMORY[0x277CBEBF8], contextCopy);
    soundtrack = v8->_soundtrack;
    v8->_soundtrack = v25;

    objc_msgSend_wasAddedToDocumentWithContext_(v8->_soundtrack, v27, contextCopy);
  }

  return v8;
}

- (CGPoint)center
{
  TSUMultiplyPointScalar();
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (self->_theme != themeCopy)
  {
    v16 = themeCopy;
    objc_msgSend_willModify(self, v6, v7);
    v10 = objc_msgSend_owningDocument(self, v8, v9);
    v11 = self->_theme;
    objc_msgSend_willBeRemovedFromDocumentRoot_(v11, v12, v10);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v16, v13, v10, 0);
    objc_storeStrong(&self->_theme, theme);
    self->_localizeDocument = 1;
    objc_msgSend_wasRemovedFromDocumentRoot_(v11, v14, v10);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v16, v15, v10, 0);

    themeCopy = v16;
  }
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v51 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v3);
  self->_size.width = width;
  self->_size.height = height;
  v7 = objc_alloc(MEMORY[0x277D802E8]);
  v10 = objc_msgSend_initWithSize_(v7, v8, v9, width, height);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = objc_msgSend_slideNodes(self->_slideTree, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v45, v50, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v46;
    do
    {
      v20 = 0;
      do
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_slide(*(*(&v45 + 1) + 8 * v20), v16, v17);
        v24 = objc_msgSend_background(v21, v22, v23);
        objc_msgSend_setGeometry_(v24, v25, v10);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v45, v50, 16);
    }

    while (v18);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = objc_msgSend_templateSlides(self->_theme, v26, v27, 0);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v41, v49, 16);
  if (v30)
  {
    v33 = v30;
    v34 = *v42;
    do
    {
      v35 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v28);
        }

        v36 = objc_msgSend_slide(*(*(&v41 + 1) + 8 * v35), v31, v32);
        v39 = objc_msgSend_background(v36, v37, v38);
        objc_msgSend_setGeometry_(v39, v40, v10);

        ++v35;
      }

      while (v33 != v35);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v41, v49, 16);
    }

    while (v33);
  }
}

+ (unint64_t)maximumWidth
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"KNShowUseExtendedMaxSize");

  if (v5)
  {
    return 50000;
  }

  else
  {
    return 0x2000;
  }
}

+ (unint64_t)maximumHeight
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"KNShowUseExtendedMaxSize");

  if (v5)
  {
    return 50000;
  }

  else
  {
    return 0x2000;
  }
}

- (void)willModify
{
  v2.receiver = self;
  v2.super_class = KNShow;
  [(KNShow *)&v2 willModify];
}

- (unint64_t)indexOfSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_slideTree(self, v5, v6);
  v9 = objc_msgSend_indexOfSlideNode_(v7, v8, nodeCopy);

  return v9;
}

- (id)slideNodeAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_slideTree(self, a2, index);
  v6 = objc_msgSend_slideNodeAtIndex_ignoreHiddenNodes_(v4, v5, index, 0);

  return v6;
}

- (id)slideNodesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v7 = objc_msgSend_slideTree(self, v5, v6);
  v10 = objc_msgSend_slideNodes(v7, v8, v9);

  if (objc_msgSend_lastIndex(indexesCopy, v11, v12) != 0x7FFFFFFFFFFFFFFFLL)
  {
    Index = objc_msgSend_lastIndex(indexesCopy, v13, v14);
    if (Index >= objc_msgSend_count(v10, v16, v17))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNShow slideNodesAtIndexes:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNShow.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 231, 0, "indexes for slideNodeAtIndexes:includingSkipped: must be valid array indices.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }
  }

  v25 = objc_msgSend_objectsAtIndexes_(v10, v13, indexesCopy);

  return v25;
}

- (BOOL)isPlayable
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_slideTree(self, a2, v2, 0);
  v6 = objc_msgSend_slideNodes(v3, v4, v5);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v6);
        }

        if (!objc_msgSend_isSkipped(*(*(&v14 + 1) + 8 * i), v8, v9))
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v14, v18, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (BOOL)hasInSyncRecording
{
  v3 = objc_msgSend_recording(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_isInSyncWithShow(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = [KNSlideTree alloc];
  if (*(archive + 5))
  {
    v9 = objc_msgSend_initWithArchive_unarchiver_owner_(v7, v8, *(archive + 5), unarchiverCopy, self);
  }

  else
  {
    v9 = objc_msgSend_initWithArchive_unarchiver_owner_(v7, v8, &unk_2812EB558, unarchiverCopy, self);
  }

  slideTree = self->_slideTree;
  self->_slideTree = v9;

  v11 = *(archive + 4);
  self->_loopPresentation = *(archive + 93) & ((v11 & 0x400) >> 10);
  self->_mode = *(archive + 22) & (v11 << 23 >> 31);
  v12 = *(archive + 12);
  if ((v11 & 0x2000) == 0)
  {
    v12 = 5.0;
  }

  self->_autoplayTransitionDelay = v12;
  v13 = *(archive + 13);
  if ((v11 & 0x4000) == 0)
  {
    v13 = 2.0;
  }

  self->_autoplayBuildDelay = v13;
  v14 = *(archive + 6);
  if (!v14)
  {
    v14 = MEMORY[0x277D809D8];
  }

  self->_size = vcvtq_f64_f32(v14[3]);
  v15 = *(archive + 4);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_275D6F79C;
  v53[3] = &unk_27A6981B0;
  v53[4] = self;
  v16 = unarchiverCopy;
  v18 = objc_opt_class();
  v19 = MEMORY[0x277D80A18];
  if (v15)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v17, v15, v18, 0, v53);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v17, MEMORY[0x277D80A18], v18, 0, v53);
  }

  v20 = *(archive + 7);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_275D6F7B4;
  v52[3] = &unk_27A6981D8;
  v52[4] = self;
  v21 = v16;
  v23 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v20, v23, 0, v52);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v19, v23, 0, v52);
  }

  v26 = *(archive + 4);
  if ((v26 & 0x20) != 0)
  {
    v27 = *(archive + 8);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_275D6F7CC;
    v51[3] = &unk_27A698200;
    v51[4] = self;
    v28 = v21;
    v29 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v30, v27, v29, 0, v51);

    v26 = *(archive + 4);
  }

  if ((v26 & 0x800) != 0)
  {
    objc_msgSend_setIdleTimerActive_(self, v24, *(archive + 94));
    v26 = *(archive + 4);
  }

  v31 = *(archive + 14);
  if ((v26 & 0x8000) == 0)
  {
    v31 = 900.0;
  }

  objc_msgSend_setIdleTimerDelay_(self, v24, v25, v31);
  self->_automaticallyPlaysUponOpen = *(archive + 95);
  if ((*(archive + 16) & 0x40) != 0)
  {
    v46 = *(archive + 9);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_275D6F7D8;
    v50[3] = &unk_27A698228;
    v50[4] = self;
    v47 = v21;
    v48 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v49, v46, v48, 0, v50);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v32, v33);
    v34 = [KNSoundtrack alloc];
    v37 = objc_msgSend_context(self, v35, v36);
    v39 = objc_msgSend_initWithSoundtrackMedia_context_(v34, v38, MEMORY[0x277CBEBF8], v37);
    soundtrack = self->_soundtrack;
    self->_soundtrack = v39;

    v41 = self->_soundtrack;
    v44 = objc_msgSend_context(self, v42, v43);
    objc_msgSend_wasAddedToDocumentDuringUnarchiveWithContext_(v41, v45, v44);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_slideTree(self, v6, v7);
  *(archive + 4) |= 4u;
  v10 = *(archive + 5);
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = sub_275E2060C(v11);
    *(archive + 5) = v10;
  }

  objc_msgSend_saveToArchive_archiver_(v9, v8, v10, archiverCopy);

  *(archive + 4) |= 8u;
  v14 = *(archive + 6);
  if (!v14)
  {
    v15 = *(archive + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x277C8EFF0](v15);
    *(archive + 6) = v14;
  }

  objc_msgSend_size(self, v12, v13);
  *&v16 = v16;
  *(v14 + 16) |= 1u;
  *(v14 + 24) = LODWORD(v16);
  objc_msgSend_size(self, v17, v18);
  v20 = v19;
  *(v14 + 16) |= 2u;
  *(v14 + 28) = v20;
  v24 = objc_msgSend_theme(self, v21, v22);
  *(archive + 4) |= 2u;
  v25 = *(archive + 4);
  if (!v25)
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277C8F050](v26);
    *(archive + 4) = v25;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v23, v24, v25);

  v30 = objc_msgSend_stylesheet(self, v27, v28);
  *(archive + 4) |= 0x10u;
  v31 = *(archive + 7);
  if (!v31)
  {
    v32 = *(archive + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x277C8F050](v32);
    *(archive + 7) = v31;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v29, v30, v31);

  v37 = objc_msgSend_recording(self, v33, v34);
  if (v37)
  {
    *(archive + 4) |= 0x20u;
    v38 = *(archive + 8);
    if (!v38)
    {
      v39 = *(archive + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C8F050](v39);
      *(archive + 8) = v38;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v35, v37, v38);
  }

  v40 = objc_msgSend_loopPresentation(self, v35, v36);
  *(archive + 4) |= 0x400u;
  *(archive + 93) = v40;
  v43 = objc_msgSend_mode(self, v41, v42);
  *(archive + 4) |= 0x100u;
  *(archive + 22) = v43;
  objc_msgSend_autoplayTransitionDelay(self, v44, v45);
  *(archive + 4) |= 0x2000u;
  *(archive + 12) = v46;
  objc_msgSend_autoplayBuildDelay(self, v47, v48);
  *(archive + 4) |= 0x4000u;
  *(archive + 13) = v49;
  v52 = objc_msgSend_idleTimerActive(self, v50, v51);
  *(archive + 4) |= 0x800u;
  *(archive + 94) = v52;
  objc_msgSend_idleTimerDelay(self, v53, v54);
  *(archive + 4) |= 0x8000u;
  *(archive + 14) = v55;
  v58 = objc_msgSend_automaticallyPlaysUponOpen(self, v56, v57);
  *(archive + 4) |= 0x1000u;
  *(archive + 95) = v58;
  v62 = objc_msgSend_soundtrack(self, v59, v60);
  if (v62)
  {
    *(archive + 4) |= 0x40u;
    v63 = *(archive + 9);
    if (!v63)
    {
      v64 = *(archive + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = MEMORY[0x277C8F050](v64);
      *(archive + 9) = v63;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v61, v62, v63);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[56]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
  if (objc_msgSend_preUFFVersion(unarchiverCopy, v7, v8) >= 0x51FF6C2CELL)
  {
    if (objc_msgSend_fileFormatVersion(unarchiverCopy, v9, v10) >= *MEMORY[0x277D809A8])
    {
      v11 = 0;
    }

    else
    {
      objc_msgSend_size(self, v9, v10);
      v13 = v12;
      objc_msgSend_size(self, v14, v15);
      v11 = v13 / v16 > 1.875;
    }
  }

  else
  {
    v11 = 1;
  }

  self->_needsToUpdateThumbnails = v11;
  self->_wasImportedAsPreUFF = objc_msgSend_hasPreUFFVersion(unarchiverCopy, v9, v10);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D6FD5C, off_2812EA908[56]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end