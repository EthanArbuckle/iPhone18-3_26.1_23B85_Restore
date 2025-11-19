@interface KNSlideBackgroundInfo
+ (id)backgroundWithSlide:(id)a3 andGeometry:(id)a4;
- (BOOL)isThemeContent;
- (CGSize)minimumSize;
- (KNAbstractSlide)slide;
- (KNMotionBackground)motionBackground;
- (KNSlideBackgroundInfo)initWithSlide:(id)a3 andGeometry:(id)a4;
- (TSDFill)fill;
- (id)endCollectingChanges;
- (void)beginCollectingChanges;
- (void)clearBackPointerToParentInfoIfNeeded:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
@end

@implementation KNSlideBackgroundInfo

+ (id)backgroundWithSlide:(id)a3 andGeometry:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [KNSlideBackgroundInfo alloc];
  v9 = objc_msgSend_initWithSlide_andGeometry_(v7, v8, v6, v5);

  return v9;
}

- (KNSlideBackgroundInfo)initWithSlide:(id)a3 andGeometry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = KNSlideBackgroundInfo;
  v8 = [(KNSlideBackgroundInfo *)&v19 init];
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_geometry, a4);
    objc_storeWeak(&v10->_slide, v6);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNSlideBackgroundInfo initWithSlide:andGeometry:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 62, 0, "should never return nil. This failure is related to rdar://problem/23050389");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17);
  }

  return v10;
}

- (BOOL)isThemeContent
{
  v3 = objc_msgSend_parentInfo(self, a2, v2);
  isThemeContent = objc_msgSend_isThemeContent(v3, v4, v5);

  return isThemeContent;
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)a3
{
  if (self->_parentInfo == a3)
  {
    self->_parentInfo = 0;
  }
}

- (TSDFill)fill
{
  v3 = objc_msgSend_slide(self, a2, v2);
  v6 = objc_msgSend_backgroundFill(v3, v4, v5);

  return v6;
}

- (KNMotionBackground)motionBackground
{
  v3 = objc_msgSend_slide(self, a2, v2);
  v6 = objc_msgSend_motionBackground(v3, v4, v5);

  return v6;
}

- (void)beginCollectingChanges
{
  if (!self->_changes || (v3 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNSlideBackgroundInfo beginCollectingChanges]"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundInfo.m"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 134, 0, "don't try to beginCollectingChanges when we are already collecting"), v6, v4, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9), !self->_changes))
  {
    v10 = objc_alloc_init(MEMORY[0x277D80AC8]);
    changes = self->_changes;
    self->_changes = v10;
  }
}

- (id)endCollectingChanges
{
  changes = self->_changes;
  if (!changes)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNSlideBackgroundInfo endCollectingChanges]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 148, 0, "don't try to endCollectingChanges without calling -beginCollectingChanges first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    changes = self->_changes;
  }

  v11 = changes;
  v12 = self->_changes;
  self->_changes = 0;

  return changes;
}

- (CGSize)minimumSize
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v34 = a3;
  v7 = objc_msgSend_show(v34, v5, v6);
  objc_msgSend_size(v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_geometry(self, v14, v15);
  objc_msgSend_size(v16, v17, v18);
  v20 = v19;
  v22 = v21;

  if (v11 != v20 || v13 != v22)
  {
    v24 = objc_alloc(MEMORY[0x277D802E8]);
    v27 = objc_msgSend_show(v34, v25, v26);
    objc_msgSend_size(v27, v28, v29);
    v32 = objc_msgSend_initWithSize_(v24, v30, v31);

    objc_msgSend_setGeometry_(self, v33, v32);
  }
}

- (KNAbstractSlide)slide
{
  WeakRetained = objc_loadWeakRetained(&self->_slide);

  return WeakRetained;
}

@end