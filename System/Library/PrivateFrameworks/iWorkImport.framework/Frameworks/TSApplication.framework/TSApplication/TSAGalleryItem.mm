@interface TSAGalleryItem
- (BOOL)canCopyData;
- (BOOL)isThemeContent;
- (BOOL)needsDownload;
- (BOOL)p_canCopy:(id)a3;
- (CGPoint)offset;
- (CGSize)naturalSize;
- (NSArray)childInfos;
- (NSString)displayName;
- (TSAGalleryItem)initWithContext:(id)a3 imageData:(id)a4 thumbnailImageData:(id)a5;
- (TSDOwningAttachment)owningAttachment;
- (double)scale;
- (id)childEnumerator;
- (id)copyWithContext:(id)a3;
- (id)endCollectingChanges;
- (unint64_t)itemIndex;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)beginCollectingChanges;
- (void)clearBackPointerToParentInfoIfNeeded:(id)a3;
- (void)commonInit;
- (void)didInitFromSOS;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_willModifyImageData;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
- (void)setAccessibilityDescription:(id)a3;
- (void)setAdjustedImageData:(id)a3;
- (void)setCaptionStorage:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setImageAdjustments:(id)a3;
- (void)setImageData:(id)a3;
- (void)setOffset:(CGPoint)a3;
- (void)setOwningAttachment:(id)a3;
- (void)setScale:(double)a3;
- (void)setThumbnailAdjustedImageData:(id)a3;
- (void)setThumbnailImageData:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
- (void)willChangeProperty:(int)a3;
@end

@implementation TSAGalleryItem

- (void)setCaptionStorage:(id)a3
{
  v8 = a3;
  if (self->_captionStorage != v8)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_captionStorage, a3);
  }
}

- (TSAGalleryItem)initWithContext:(id)a3 imageData:(id)a4 thumbnailImageData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = TSAGalleryItem;
  v13 = [(TSAGalleryItem *)&v25 initWithContext:v8];
  if (v13)
  {
    v14 = objc_msgSend_i_newCaptionStorageWithContext_(TSAGalleryInfo, v11, v8, v12);
    captionStorage = v13->_captionStorage;
    v13->_captionStorage = v14;

    objc_msgSend_setParentInfo_(v13->_captionStorage, v16, v13, v17);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2760B8E98;
    v21[3] = &unk_27A6B03E0;
    v22 = v13;
    v23 = v9;
    v24 = v10;
    objc_msgSend_performBlockIgnoringModifications_(v22, v18, v21, v19);
  }

  return v13;
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = TSAGalleryItem;
  [(TSAGalleryItem *)&v5 commonInit];
  v3 = dispatch_queue_create("TSAGalleryItem naturalSize", 0);
  naturalSizeQueue = self->_naturalSizeQueue;
  self->_naturalSizeQueue = v3;
}

- (void)didInitFromSOS
{
  v25.receiver = self;
  v25.super_class = TSAGalleryItem;
  [(TSAGalleryItem *)&v25 didInitFromSOS];
  objc_msgSend_i_configureCaptionStorage_(TSAGalleryInfo, v3, self->_captionStorage, v4);
  objc_msgSend_setParentInfo_(self->_captionStorage, v5, self, v6);
  if (self->_imageData)
  {
    v9 = objc_alloc(MEMORY[0x277D802B0]);
    v12 = objc_msgSend_initWithImageData_(v9, v10, self->_imageData, v11);
    imageDataHelper = self->_imageDataHelper;
    self->_imageDataHelper = v12;

    objc_msgSend_didAddReferenceToData_(self, v14, self->_imageData, v15);
  }

  if (self->_adjustedImageData)
  {
    v16 = objc_alloc(MEMORY[0x277D802B0]);
    v19 = objc_msgSend_initWithImageData_(v16, v17, self->_adjustedImageData, v18);
    adjustedImageDataHelper = self->_adjustedImageDataHelper;
    self->_adjustedImageDataHelper = v19;

    objc_msgSend_didAddReferenceToData_(self, v21, self->_adjustedImageData, v22);
  }

  objc_msgSend_didAddReferenceToData_(self, v7, self->_thumbnailImageData, v8);
  objc_msgSend_didAddReferenceToData_(self, v23, self->_thumbnailAdjustedImageData, v24);
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = [TSAGalleryItem alloc];
  v9 = objc_msgSend_context(self, v6, v7, v8);
  v11 = objc_msgSend_initWithContext_imageData_thumbnailImageData_(v5, v10, v9, self->_imageData, self->_thumbnailImageData);

  *(v11 + 80) = self->_offset;
  *(v11 + 144) = self->_definedOffset;
  *(v11 + 96) = self->_scale;
  *(v11 + 145) = self->_definedScale;
  *(v11 + 146) = self->_definedThumbnailImageData;
  v14 = objc_msgSend_copyWithContext_(self->_captionStorage, v12, v4, v13);
  v15 = *(v11 + 72);
  *(v11 + 72) = v14;

  objc_msgSend_i_configureCaptionStorage_(TSAGalleryInfo, v16, *(v11 + 72), v17);
  objc_msgSend_setParentInfo_(*(v11 + 72), v18, v11, v19);
  v23 = objc_msgSend_copy(self->_imageAdjustments, v20, v21, v22);
  v24 = *(v11 + 112);
  *(v11 + 112) = v23;

  *(v11 + 147) = self->_definedImageAdjustments;
  objc_msgSend_willRemoveReferenceToData_(v11, v25, *(v11 + 120), v26);
  objc_storeStrong((v11 + 120), self->_adjustedImageData);
  objc_msgSend_didAddReferenceToData_(v11, v27, *(v11 + 120), v28);
  *(v11 + 148) = self->_definedAdjustedImageData;
  objc_msgSend_willRemoveReferenceToData_(v11, v29, *(v11 + 128), v30);
  objc_storeStrong((v11 + 128), self->_thumbnailAdjustedImageData);
  objc_msgSend_didAddReferenceToData_(v11, v31, *(v11 + 128), v32);
  *(v11 + 149) = self->_definedThumbnailAdjustedImageData;
  objc_storeStrong((v11 + 136), self->_accessibilityDescription);
  *(v11 + 150) = self->_definedAccessibilityDescription;
  if (self->_imageData)
  {
    v33 = objc_alloc(MEMORY[0x277D802B0]);
    v36 = objc_msgSend_initWithImageData_(v33, v34, self->_imageData, v35);
    v37 = *(v11 + 152);
    *(v11 + 152) = v36;
  }

  if (self->_adjustedImageData)
  {
    v38 = objc_alloc(MEMORY[0x277D802B0]);
    v41 = objc_msgSend_initWithImageData_(v38, v39, self->_adjustedImageData, v40);
    v42 = *(v11 + 160);
    *(v11 + 160) = v41;
  }

  return v11;
}

- (void)setOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_offset = &self->_offset;
  if (self->_offset.x != a3.x || self->_offset.y != a3.y)
  {
    objc_msgSend_willModify(self, a2, v3, v4);
    p_offset->x = x;
    p_offset->y = y;
    self->_definedOffset = 1;
  }
}

- (double)scale
{
  result = 1.0;
  if (self->_definedScale)
  {
    return self->_scale;
  }

  return result;
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4);
    self->_scale = a3;
    self->_definedScale = 1;
  }
}

- (CGSize)naturalSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4012000000;
  v11 = sub_2760B967C;
  v12 = nullsub_2;
  v13 = "";
  v14 = *MEMORY[0x277CBF3A8];
  naturalSizeQueue = self->_naturalSizeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2760B968C;
  v7[3] = &unk_27A6B0408;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(naturalSizeQueue, v7);
  v3 = v9[6];
  v4 = v9[7];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setImageData:(id)a3
{
  v26 = a3;
  if (self->_imageData != v26)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_p_willModifyImageData(self, v8, v9, v10);
    objc_msgSend_willRemoveReferenceToData_(self, v11, self->_imageData, v12);
    objc_storeStrong(&self->_imageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v13, self->_imageData, v14);
    v15 = objc_alloc(MEMORY[0x277D802B0]);
    v18 = objc_msgSend_initWithImageData_(v15, v16, v26, v17);
    imageDataHelper = self->_imageDataHelper;
    self->_imageDataHelper = v18;

    objc_msgSend_setImageAdjustments_(self, v20, 0, v21);
    objc_msgSend_setAdjustedImageData_(self, v22, 0, v23);
    objc_msgSend_setThumbnailAdjustedImageData_(self, v24, 0, v25);
  }
}

- (void)setThumbnailImageData:(id)a3
{
  v15 = a3;
  if (self->_thumbnailImageData != v15)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_p_willModifyImageData(self, v8, v9, v10);
    objc_msgSend_willRemoveReferenceToData_(self, v11, self->_thumbnailImageData, v12);
    objc_storeStrong(&self->_thumbnailImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v13, self->_thumbnailImageData, v14);
    self->_definedThumbnailImageData = self->_thumbnailImageData != 0;
  }
}

- (void)p_willModifyImageData
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v18 = TSUDynamicCast();

  if (v18)
  {
    v10 = objc_msgSend_items(v18, v7, v8, v9);
    v14 = objc_msgSend_firstObject(v10, v11, v12, v13);

    if (v14 == self)
    {
      objc_msgSend_willModify(v18, v15, v16, v17);
    }
  }
}

- (void)setImageAdjustments:(id)a3
{
  v12 = a3;
  if (self->_imageAdjustments != v12)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    v10 = objc_msgSend_copy(v12, v7, v8, v9);
    imageAdjustments = self->_imageAdjustments;
    self->_imageAdjustments = v10;

    self->_definedImageAdjustments = self->_imageAdjustments != 0;
  }
}

- (void)setAdjustedImageData:(id)a3
{
  v17 = a3;
  if (self->_adjustedImageData != v17)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->_adjustedImageData, v9);
    objc_storeStrong(&self->_adjustedImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v10, self->_adjustedImageData, v11);
    self->_definedAdjustedImageData = self->_adjustedImageData != 0;
    adjustedImageData = self->_adjustedImageData;
    if (adjustedImageData)
    {
      v13 = objc_alloc(MEMORY[0x277D802B0]);
      v16 = objc_msgSend_initWithImageData_(v13, v14, self->_adjustedImageData, v15);
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&self->_adjustedImageDataHelper, v16);
    if (adjustedImageData)
    {
    }
  }
}

- (void)setThumbnailAdjustedImageData:(id)a3
{
  v12 = a3;
  if (self->_thumbnailAdjustedImageData != v12)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->_thumbnailAdjustedImageData, v9);
    objc_storeStrong(&self->_thumbnailAdjustedImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v10, self->_thumbnailAdjustedImageData, v11);
    self->_definedThumbnailAdjustedImageData = self->_thumbnailAdjustedImageData != 0;
  }
}

- (void)setAccessibilityDescription:(id)a3
{
  v16 = a3;
  if ((objc_msgSend_isEqualToString_(v16, v4, self->_accessibilityDescription, v5) & 1) == 0)
  {
    objc_msgSend_willChangeProperty_(self, v6, 544, v7);
    objc_msgSend_willModify(self, v8, v9, v10);
    v14 = objc_msgSend_copy(v16, v11, v12, v13);
    accessibilityDescription = self->_accessibilityDescription;
    self->_accessibilityDescription = v14;

    self->_definedAccessibilityDescription = self->_accessibilityDescription != 0;
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v12 = a3;
  v6 = a4;
  v10 = objc_msgSend_captionStorage(self, v7, v8, v9);
  objc_msgSend_adoptStylesheet_withMapper_(v10, v11, v12, v6);
}

- (unint64_t)itemIndex
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v11 = objc_msgSend_items(v7, v8, v9, v10);
    v14 = objc_msgSend_indexOfObject_(v11, v12, self, v13);
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (void)setGeometry:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSAGalleryItem setGeometry:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 298, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, "Do not call method", "[TSAGalleryItem setGeometry:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (TSDOwningAttachment)owningAttachment
{
  v4 = objc_msgSend_parentInfo(self, a2, v2, v3);
  v8 = objc_msgSend_owningAttachment(v4, v5, v6, v7);

  return v8;
}

- (void)setOwningAttachment:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSAGalleryItem setOwningAttachment:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 310, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, "Do not call method", "[TSAGalleryItem setOwningAttachment:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)a3
{
  if (self->_parentInfo == a3)
  {
    self->_parentInfo = 0;
  }
}

- (BOOL)isThemeContent
{
  v4 = objc_msgSend_parentInfo(self, a2, v2, v3);
  isThemeContent = objc_msgSend_isThemeContent(v4, v5, v6, v7);

  return isThemeContent;
}

- (BOOL)needsDownload
{
  v5 = objc_msgSend_imageData(self, a2, v2, v3);
  if (objc_msgSend_needsDownload(v5, v6, v7, v8))
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_thumbnailImageData(self, v9, v10, v11);
    if (objc_msgSend_needsDownload(v13, v14, v15, v16))
    {
      v12 = 1;
    }

    else
    {
      v20 = objc_msgSend_adjustedImageData(self, v17, v18, v19);
      if (objc_msgSend_needsDownload(v20, v21, v22, v23))
      {
        v12 = 1;
      }

      else
      {
        v27 = objc_msgSend_thumbnailAdjustedImageData(self, v24, v25, v26);
        v12 = objc_msgSend_needsDownload(v27, v28, v29, v30);
      }
    }
  }

  return v12;
}

- (BOOL)canCopyData
{
  v5 = objc_msgSend_imageData(self, a2, v2, v3);
  if (objc_msgSend_p_canCopy_(self, v6, v5, v7))
  {
    v11 = objc_msgSend_thumbnailImageData(self, v8, v9, v10);
    if (objc_msgSend_p_canCopy_(self, v12, v11, v13))
    {
      v17 = objc_msgSend_adjustedImageData(self, v14, v15, v16);
      if (objc_msgSend_p_canCopy_(self, v18, v17, v19))
      {
        v23 = objc_msgSend_thumbnailAdjustedImageData(self, v20, v21, v22);
        canCopy = objc_msgSend_p_canCopy_(self, v24, v23, v25);
      }

      else
      {
        canCopy = 0;
      }
    }

    else
    {
      canCopy = 0;
    }
  }

  else
  {
    canCopy = 0;
  }

  return canCopy;
}

- (BOOL)p_canCopy:(id)a3
{
  v3 = a3;
  if (objc_msgSend_needsDownload(v3, v4, v5, v6))
  {
    isApplicationData = objc_msgSend_isApplicationData(v3, v7, v8, v9);
  }

  else
  {
    isApplicationData = 1;
  }

  return isApplicationData;
}

- (void)beginCollectingChanges
{
  if (!self->_changes || (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAGalleryItem beginCollectingChanges]", v2), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 374, 0, "Attempt to beginCollectingChanges when changes are already collecting."), v8, v5, objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11, v12), !self->_changes))
  {
    self->_changes = objc_alloc_init(MEMORY[0x277D80AC8]);

    MEMORY[0x2821F96F8]();
  }
}

- (void)willChangeProperty:(int)a3
{
  v4 = *&a3;
  objc_msgSend_willModify(self, a2, *&a3, v3);
  changes = self->_changes;

  MEMORY[0x2821F9670](changes, sel_addChangedProperty_, v4, v6);
}

- (id)endCollectingChanges
{
  changes = self->_changes;
  if (!changes)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAGalleryItem endCollectingChanges]", v2);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 388, 0, "Attempt to endCollectingChanges without calling -beginCollectingChanges first.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    changes = self->_changes;
  }

  v14 = changes;
  v15 = self->_changes;
  self->_changes = 0;

  return changes;
}

- (NSArray)childInfos
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_captionStorage(self, a2, v2, v3);
  v8[0] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v8, 1);

  return v6;
}

- (id)childEnumerator
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_captionStorage(self, a2, v2, v3);
  v12[0] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v12, 1);
  v10 = objc_msgSend_objectEnumerator(v6, v7, v8, v9);

  return v10;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v12 = a3;
  v6 = a4;
  v10 = objc_msgSend_captionStorage(self, v7, v8, v9);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v10, v11, v12, v6);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v18 = a3;
  v6 = a4;
  v10 = objc_msgSend_context(v18, v7, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10, v12);

  v16 = objc_msgSend_captionStorage(self, v13, v14, v15);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v16, v17, v18, v6);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v16 = a3;
  v7 = objc_msgSend_context(v16, v4, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v8, v7, v9);

  v13 = objc_msgSend_captionStorage(self, v10, v11, v12);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v13, v14, v16, v15);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v10 = a3;
  v7 = objc_msgSend_captionStorage(self, v4, v5, v6);
  objc_msgSend_wasRemovedFromDocumentRoot_(v7, v8, v10, v9);
}

- (void)loadFromUnarchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v8, v4, off_2812F3500[42], v5);

  objc_msgSend_loadFromMessage_unarchiver_(self, v7, v6, v8);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_2760BBA34, off_2812F3500[42]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v8 = a4;
  v9 = *(a3 + 4);
  if ((v9 & 2) != 0)
  {
    TSPCGPointFromMessage(*(a3 + 4));
    self->_offset.x = v10;
    self->_offset.y = v11;
    self->_definedOffset = 1;
    v9 = *(a3 + 4);
  }

  if ((v9 & 0x100) != 0)
  {
    self->_scale = *(a3 + 22);
    self->_definedScale = 1;
  }

  if ((v9 & 4) != 0)
  {
    v12 = objc_msgSend_readDataReferenceMessage_(v8, v6, *(a3 + 5), v7);
    imageData = self->_imageData;
    self->_imageData = v12;

    v14 = objc_alloc(MEMORY[0x277D802B0]);
    v17 = objc_msgSend_initWithImageData_(v14, v15, self->_imageData, v16);
    imageDataHelper = self->_imageDataHelper;
    self->_imageDataHelper = v17;

    v9 = *(a3 + 4);
  }

  if ((v9 & 8) != 0)
  {
    v19 = objc_msgSend_readDataReferenceMessage_(v8, v6, *(a3 + 6), v7);
    thumbnailImageData = self->_thumbnailImageData;
    self->_thumbnailImageData = v19;

    self->_definedThumbnailImageData = 1;
    v9 = *(a3 + 4);
  }

  if ((v9 & 0x10) != 0)
  {
    v21 = objc_alloc(MEMORY[0x277D802A0]);
    if (*(a3 + 7))
    {
      v23 = objc_msgSend_initWithArchive_unarchiver_(v21, v22, *(a3 + 7), v8);
    }

    else
    {
      v23 = objc_msgSend_initWithArchive_unarchiver_(v21, v22, MEMORY[0x277D804E0], v8);
    }

    imageAdjustments = self->_imageAdjustments;
    self->_imageAdjustments = v23;

    self->_definedImageAdjustments = 1;
    v9 = *(a3 + 4);
  }

  if ((v9 & 0x20) != 0)
  {
    v25 = objc_msgSend_readDataReferenceMessage_(v8, v6, *(a3 + 8), v7);
    adjustedImageData = self->_adjustedImageData;
    self->_adjustedImageData = v25;

    self->_definedAdjustedImageData = 1;
    v27 = objc_alloc(MEMORY[0x277D802B0]);
    v30 = objc_msgSend_initWithImageData_(v27, v28, self->_adjustedImageData, v29);
    adjustedImageDataHelper = self->_adjustedImageDataHelper;
    self->_adjustedImageDataHelper = v30;

    v9 = *(a3 + 4);
  }

  if ((v9 & 0x40) != 0)
  {
    if (*(a3 + 8))
    {
      objc_msgSend_readDataReferenceMessage_(v8, v6, *(a3 + 8), v7);
    }

    else
    {
      objc_msgSend_readDataReferenceMessage_(v8, v6, MEMORY[0x277D80A30], v7);
    }
    v32 = ;
    thumbnailAdjustedImageData = self->_thumbnailAdjustedImageData;
    self->_thumbnailAdjustedImageData = v32;

    self->_definedThumbnailAdjustedImageData = 1;
    v9 = *(a3 + 4);
  }

  if ((v9 & 0x80) != 0)
  {
    v34 = *(a3 + 10);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2760BB018;
    v68[3] = &unk_27A6B0430;
    v68[4] = self;
    v35 = v8;
    v36 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v35, v37, v34, v36, 0, v68);

    v9 = *(a3 + 4);
  }

  if (v9)
  {
    v38 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL, v7);
    v42 = objc_msgSend_copy(v38, v39, v40, v41);
    accessibilityDescription = self->_accessibilityDescription;
    self->_accessibilityDescription = v42;

    self->_definedAccessibilityDescription = 1;
  }

  if (!self->_imageData)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAGalleryItem loadFromMessage:unarchiver:]", v7);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 596, 0, "The message for gallery item %p did not contain valid data", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
    if (!self->_imageData)
    {
      v56 = objc_msgSend_null(MEMORY[0x277D80828], v53, v54, v55);
      v57 = self->_imageData;
      self->_imageData = v56;

      v58 = objc_alloc(MEMORY[0x277D802B0]);
      v61 = objc_msgSend_initWithImageData_(v58, v59, self->_imageData, v60);
      v62 = self->_imageDataHelper;
      self->_imageDataHelper = v61;
    }
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_2760BB0A4;
  v66[3] = &unk_27A6B0338;
  v66[4] = self;
  v63 = v8;
  v67 = v63;
  objc_msgSend_addFinalizeHandler_(v63, v64, v66, v65);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (self->_definedOffset)
  {
    x = self->_offset.x;
    y = self->_offset.y;
    *(a3 + 4) |= 2u;
    v11 = *(a3 + 4);
    if (!v11)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C95180](v12);
      *(a3 + 4) = v11;
    }

    v59.x = x;
    v59.y = y;
    TSPCGPointCopyToMessage(v59, v11);
  }

  if (self->_definedScale)
  {
    scale = self->_scale;
    *(a3 + 4) |= 0x100u;
    *(a3 + 22) = scale;
  }

  imageData = self->_imageData;
  if (!imageData)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAGalleryItem saveToMessage:archiver:]", v7);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 621, 0, "invalid nil value for '%{public}s'", "_imageData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    imageData = self->_imageData;
  }

  *(a3 + 4) |= 4u;
  v24 = *(a3 + 5);
  if (!v24)
  {
    v25 = *(a3 + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C95130](v25);
    *(a3 + 5) = v24;
  }

  objc_msgSend_setDataReference_message_(v8, v6, imageData, v24);
  thumbnailImageData = self->_thumbnailImageData;
  if (thumbnailImageData)
  {
    *(a3 + 4) |= 8u;
    v30 = *(a3 + 6);
    if (!v30)
    {
      v31 = *(a3 + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C95130](v31);
      *(a3 + 6) = v30;
    }

    objc_msgSend_setDataReference_message_(v8, v26, thumbnailImageData, v30);
  }

  imageAdjustments = self->_imageAdjustments;
  if (imageAdjustments)
  {
    *(a3 + 4) |= 0x10u;
    v33 = *(a3 + 7);
    if (!v33)
    {
      v34 = *(a3 + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C95090](v34);
      *(a3 + 7) = v33;
    }

    objc_msgSend_saveToArchive_archiver_(imageAdjustments, v26, v33, v8);
  }

  adjustedImageData = self->_adjustedImageData;
  if (adjustedImageData)
  {
    *(a3 + 4) |= 0x20u;
    v36 = *(a3 + 8);
    if (!v36)
    {
      v37 = *(a3 + 1);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = MEMORY[0x277C95130](v37);
      *(a3 + 8) = v36;
    }

    objc_msgSend_setDataReference_message_(v8, v26, adjustedImageData, v36);
  }

  thumbnailAdjustedImageData = self->_thumbnailAdjustedImageData;
  if (thumbnailAdjustedImageData)
  {
    *(a3 + 4) |= 0x40u;
    v39 = *(a3 + 9);
    if (!v39)
    {
      v40 = *(a3 + 1);
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = MEMORY[0x277C95130](v40);
      *(a3 + 9) = v39;
    }

    objc_msgSend_setDataReference_message_(v8, v26, thumbnailAdjustedImageData, v39);
  }

  accessibilityDescription = self->_accessibilityDescription;
  if (accessibilityDescription)
  {
    v42 = objc_msgSend_tsu_stringByFixingBrokenSurrogatePairs(accessibilityDescription, v26, v27, v28);
    sub_27609406C(v55, v42);

    sub_2760BB68C(a3, __s);
    if (v56)
    {
      free(v56);
    }
  }

  captionStorage = self->_captionStorage;
  if (!captionStorage)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSAGalleryItem saveToMessage:archiver:]", v28);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItem.mm", v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 645, 0, "invalid nil value for '%{public}s'", "_captionStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
    captionStorage = self->_captionStorage;
  }

  *(a3 + 4) |= 0x80u;
  v53 = *(a3 + 10);
  if (!v53)
  {
    v54 = *(a3 + 1);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    v53 = MEMORY[0x277C951B0](v54);
    *(a3 + 10) = v53;
  }

  objc_msgSend_setStrongReference_message_(v8, v26, captionStorage, v53);
}

- (NSString)displayName
{
  v4 = objc_msgSend_imageData(self, a2, v2, v3);
  v8 = objc_msgSend_filename(v4, v5, v6, v7);

  v12 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v9, v10, v11);
  v15 = objc_msgSend_componentsSeparatedByCharactersInSet_(v8, v13, v12, v14);
  v18 = objc_msgSend_componentsJoinedByString_(v15, v16, @" ", v17);

  v21 = objc_msgSend_stringByTrimmingCharactersInSet_(v18, v19, v12, v20);

  return v21;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end