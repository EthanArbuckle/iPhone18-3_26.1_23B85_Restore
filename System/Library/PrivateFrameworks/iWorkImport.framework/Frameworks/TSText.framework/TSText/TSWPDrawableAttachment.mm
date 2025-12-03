@interface TSWPDrawableAttachment
- (BOOL)isAnchored;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHTMLWrap;
- (BOOL)isHorizontallyCentered;
- (BOOL)isPartitioned;
- (BOOL)isVerticallyCentered;
- (BOOL)needsUpdateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index;
- (BOOL)preserveAttributesOverSelectionWhenInserting;
- (BOOL)shouldInvalidateWhenTextPropertiesChange;
- (BOOL)specifiesEnabledKnobMask;
- (TSWPDrawableAttachment)initWithContext:(id)context drawable:(id)drawable;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)detachDrawable;
- (id)objectsForStyleMigrating;
- (id)p_descriptionForAssertion;
- (id)p_stringForNoOwningAttachmentAssertionForDrawable:(id)drawable;
- (unint64_t)hash;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)attachDrawable:(id)drawable;
- (void)clearParentStorageForDealloc;
- (void)dealloc;
- (void)didFinalizeUnarchivingFromWPStorage:(id)storage;
- (void)infoChanged;
- (void)invalidate;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadMessage:(const void *)message fromUnarchiver:(id)unarchiver;
- (void)saveMessage:(void *)message toArchiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOffsets:(_TSWPCharIndexAndPosition *)offsets;
- (void)setParentStorage:(id)storage;
- (void)updateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)willBeRemovedFromDocumentRoot:(id)root storage:(id)storage;
@end

@implementation TSWPDrawableAttachment

- (void)setOffsets:(_TSWPCharIndexAndPosition *)offsets
{
  objc_msgSend_willModify(self, a2, offsets);
  self->_vOffset = offsets->var4;
  self->_vOffsetType = offsets->var3;
  self->_hOffset = offsets->var2;
  self->_hOffsetType = offsets->var1;
}

- (void)dealloc
{
  objc_msgSend_setOwningAttachment_(self->_drawableInfo, a2, 0);
  v3.receiver = self;
  v3.super_class = TSWPDrawableAttachment;
  [(TSWPDrawableAttachment *)&v3 dealloc];
}

- (id)p_descriptionForAssertion
{
  v4 = objc_msgSend_parentStorage(self, a2, v2);
  isAnchored = objc_msgSend_isAnchored(self, v5, v6);
  v8 = @"attachment";
  if (isAnchored)
  {
    v8 = @"anchor";
  }

  v9 = v8;
  v11 = v9;
  v12 = MEMORY[0x277CCACA8];
  if (v4)
  {
    CharIndexForAttachment = objc_msgSend_findCharIndexForAttachment_(v4, v10, self);
    v16 = objc_msgSend_wpKind(v4, v14, v15);
    v17 = sub_276D3B98C(v16);
    v19 = objc_msgSend_stringWithFormat_(v12, v18, @"%@ at %ld in storage %@ %p", v11, CharIndexForAttachment, v17, v4);
  }

  else
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@ not in a storage", v9);
  }

  return v19;
}

- (id)p_stringForNoOwningAttachmentAssertionForDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  v7 = objc_msgSend_owningAttachmentNoRecurse(drawableCopy, v5, v6);
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v11 = NSStringFromClass(v21);
    v14 = objc_msgSend_owningAttachmentNoRecurse(drawableCopy, v22, v23);
    v24 = objc_opt_class();
    v17 = NSStringFromClass(v24);
    v19 = objc_msgSend_stringWithFormat_(v20, v25, @"attaching %@ already attached to %@", v11, v17);
    goto LABEL_5;
  }

  v9 = MEMORY[0x277CCACA8];
  if (v8 != self)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_p_descriptionForAssertion(v8, v12, v13);
    v17 = objc_msgSend_p_descriptionForAssertion(self, v15, v16);
    v19 = objc_msgSend_stringWithFormat_(v9, v18, @"attaching %@ with %@ to %@", v11, v14, v17);
LABEL_5:
    v26 = v19;

    goto LABEL_7;
  }

  v27 = objc_opt_class();
  v11 = NSStringFromClass(v27);
  v14 = objc_msgSend_p_descriptionForAssertion(self, v28, v29);
  v26 = objc_msgSend_stringWithFormat_(v9, v30, @"re-attaching %@ to same %@", v11, v14);
LABEL_7:

  return v26;
}

- (TSWPDrawableAttachment)initWithContext:(id)context drawable:(id)drawable
{
  contextCopy = context;
  drawableCopy = drawable;
  if (!drawableCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPDrawableAttachment initWithContext:drawable:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v12, 146, 0, "creating %{public}@ with nil drawable", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v41.receiver = self;
  v41.super_class = TSWPDrawableAttachment;
  v18 = [(TSWPAttachment *)&v41 initWithContext:contextCopy];
  v19 = v18;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_drawableInfo, drawable);
    v23 = objc_msgSend_objectUUID(drawableCopy, v21, v22);
    v24 = *(v20 + 80);
    *(v20 + 80) = v23;

    v27 = objc_msgSend_owningAttachmentNoRecurse(v19->_drawableInfo, v25, v26);

    if (v27)
    {
      v30 = objc_msgSend_owningAttachmentNoRecurse(v19->_drawableInfo, v28, v29);

      if (v30)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSWPDrawableAttachment initWithContext:drawable:]");
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
        v36 = objc_msgSend_p_stringForNoOwningAttachmentAssertionForDrawable_(v20, v35, drawableCopy);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v34, 153, 0, "For new attachment: %{public}@", v36);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
      }
    }

    objc_msgSend_setOwningAttachment_(v19->_drawableInfo, v28, v20);
    *(v20 + 88) = 0;
    *(v20 + 96) = 0;
    *(v20 + 104) = 0;
    *(v20 + 112) = 0;
    *(v20 + 120) = 0;
  }

  return v20;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[128]);

  objc_msgSend_loadMessage_fromUnarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadMessage:(const void *)message fromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = unarchiverCopy;
  v10 = *(message + 4);
  if (v10)
  {
    v11 = *(message + 3);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_276DCD53C;
    v19[3] = &unk_27A6F45E0;
    v19[4] = self;
    v12 = unarchiverCopy;
    v13 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, v19);

    v10 = *(message + 4);
  }

  if ((v10 & 2) != 0)
  {
    self->_hOffsetType = *(message + 8);
    if ((v10 & 4) == 0)
    {
LABEL_5:
      if ((v10 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      self->_vOffsetType = *(message + 10);
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_hOffset = *(message + 9);
  if ((v10 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v10 & 0x10) != 0)
  {
LABEL_7:
    self->_vOffset = *(message + 11);
  }

LABEL_8:
  v15 = objc_msgSend_preUFFVersion(v9, v7, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276DCD694;
  v17[3] = &unk_27A6F4608;
  v18 = v15 < 0x2CBDAFFE8;
  v17[4] = self;
  objc_msgSend_addFinalizeHandler_(v9, v16, v17);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276DCF80C, off_2812DC408[128]);

  objc_msgSend_saveMessage_toArchiver_(self, v6, v5, archiverCopy);
}

- (void)didFinalizeUnarchivingFromWPStorage:(id)storage
{
  storageCopy = storage;
  objc_opt_class();
  v3 = TSUDynamicCast();
  objc_msgSend_didFinalizeUnarchivingFromWPStorage_(v3, v4, storageCopy);
}

- (void)saveMessage:(void *)message toArchiver:(id)archiver
{
  archiverCopy = archiver;
  drawableInfo = self->_drawableInfo;
  if (drawableInfo)
  {
    *(message + 4) |= 1u;
    v8 = *(message + 3);
    if (!v8)
    {
      v9 = *(message + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277CA3250](v9);
      *(message + 3) = v8;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, drawableInfo, v8);
  }

  hOffsetType = self->_hOffsetType;
  *(message + 4) |= 2u;
  *(message + 8) = hOffsetType;
  hOffset = self->_hOffset;
  if ((*&hOffset & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (hOffset > 0.0 && hOffset > 3.40282347e38)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPDrawableAttachment saveMessage:toArchiver:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 254, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v24 = 2139095039;
  }

  else
  {
    if (hOffset >= 0.0 || hOffset >= -3.40282347e38)
    {
LABEL_12:
      v12 = hOffset;
      goto LABEL_13;
    }

    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPDrawableAttachment saveMessage:toArchiver:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 254, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    v24 = -8388609;
  }

  v12 = *&v24;
LABEL_13:
  v13 = *(message + 4);
  vOffsetType = self->_vOffsetType;
  *(message + 9) = v12;
  *(message + 4) = v13 | 0xC;
  *(message + 10) = vOffsetType;
  vOffset = self->_vOffset;
  if ((*&vOffset & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    v16 = vOffset;
    goto LABEL_19;
  }

  if (vOffset > 0.0 && vOffset > 3.40282347e38)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPDrawableAttachment saveMessage:toArchiver:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 256, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    v32 = 2139095039;
  }

  else
  {
    if (vOffset >= 0.0 || vOffset >= -3.40282347e38)
    {
      goto LABEL_18;
    }

    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPDrawableAttachment saveMessage:toArchiver:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 256, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
    v32 = -8388609;
  }

  v16 = *&v32;
LABEL_19:
  *(message + 4) |= 0x10u;
  *(message + 11) = v16;
}

- (id)copyWithContext:(id)context
{
  v25.receiver = self;
  v25.super_class = TSWPDrawableAttachment;
  v6 = [(TSWPAttachment *)&v25 copyWithContext:context];
  if (v6)
  {
    v7 = objc_msgSend_replicateForReinsertion(self->_drawableInfo, v4, v5);
    v8 = *(v6 + 9);
    *(v6 + 9) = v7;

    v11 = objc_msgSend_owningAttachmentNoRecurse(*(v6 + 9), v9, v10);

    if (v11)
    {
      v14 = objc_msgSend_owningAttachmentNoRecurse(*(v6 + 9), v12, v13);

      if (v14)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPDrawableAttachment copyWithContext:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
        v20 = objc_msgSend_p_stringForNoOwningAttachmentAssertionForDrawable_(self, v19, *(v6 + 9));
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v18, 264, 0, "For copied attachment: %{public}@", v20);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      }
    }

    objc_msgSend_setOwningAttachment_(*(v6 + 9), v12, v6);
    *(v6 + 22) = self->_hOffsetType;
    *(v6 + 12) = *&self->_hOffset;
    *(v6 + 26) = self->_vOffsetType;
    *(v6 + 14) = *&self->_vOffset;
    *(v6 + 120) = self->_wasGenmoji;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = TSWPDrawableAttachment;
  if ([(TSWPAttachment *)&v18 isEqual:equalCopy])
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      isAnchored = objc_msgSend_isAnchored(self, v5, v6);
      if (isAnchored == objc_msgSend_isAnchored(v7, v9, v10))
      {
        drawableInfo = self->_drawableInfo;
        v15 = objc_msgSend_drawable(v7, v11, v12);
        isEqual = objc_msgSend_isEqual_(drawableInfo, v16, v15);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addObject_(v3, v4, self->_drawableInfo);
  isAnchored = objc_msgSend_isAnchored(self, v5, v6);
  objc_msgSend_addBool_(v3, v8, isAnchored);
  v11 = objc_msgSend_hashValue(v3, v9, v10);

  return v11;
}

- (void)invalidate
{
  v8 = objc_msgSend_parentStorage(self, a2, v2);
  CharIndex = objc_msgSend_findCharIndex(self, v4, v5);
  objc_msgSend_didChangeRange_delta_broadcastKind_(v8, v7, CharIndex, 1, 0, 2);
}

- (id)detachDrawable
{
  objc_msgSend_willModify(self, a2, v2);
  v4 = self->_drawableInfo;
  objc_msgSend_setOwningAttachment_(self->_drawableInfo, v5, 0);
  drawableInfo = self->_drawableInfo;
  self->_drawableInfo = 0;

  drawableUUID = self->_drawableUUID;
  self->_drawableUUID = 0;

  objc_msgSend_setParentInfo_(v4, v8, 0);

  return v4;
}

- (void)attachDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (!drawableCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPDrawableAttachment attachDrawable:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 320, 0, "%{public}@ attaching nil drawable", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (self->_drawableUUID)
  {
    v16 = objc_msgSend_objectUUID(drawableCopy, v5, v6);
    isEqual = objc_msgSend_isEqual_(v16, v17, self->_drawableUUID);

    if ((isEqual & 1) == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPDrawableAttachment attachDrawable:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
      drawableUUID = self->_drawableUUID;
      v26 = objc_msgSend_objectUUID(drawableCopy, v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v20, v22, 321, 0, "UUID mismatch for attached drawable: %{public}@ vs %{public}@", drawableUUID, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }
  }

  objc_msgSend_willModify(self, v5, v6);
  objc_storeStrong(&self->_drawableInfo, drawable);
  v32 = objc_msgSend_objectUUID(drawableCopy, v30, v31);
  v33 = self->_drawableUUID;
  self->_drawableUUID = v32;

  v36 = objc_msgSend_owningAttachmentNoRecurse(self->_drawableInfo, v34, v35);

  if (v36)
  {
    v39 = objc_msgSend_owningAttachmentNoRecurse(self->_drawableInfo, v37, v38);

    if (v39)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSWPDrawableAttachment attachDrawable:]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
      v45 = objc_msgSend_p_stringForNoOwningAttachmentAssertionForDrawable_(self, v44, drawableCopy);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v43, 333, 0, "Attachment: %{public}@", v45);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    }
  }

  objc_msgSend_setOwningAttachment_(self->_drawableInfo, v37, self);
}

- (void)setParentStorage:(id)storage
{
  storageCopy = storage;
  v6.receiver = self;
  v6.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v6 setParentStorage:storageCopy];
  objc_msgSend_setParentInfo_(self->_drawableInfo, v5, storageCopy);
}

- (void)clearParentStorageForDealloc
{
  drawableInfo = self->_drawableInfo;
  v5 = objc_msgSend_parentStorage(self, a2, v2);
  objc_msgSend_clearBackPointerToParentInfoIfNeeded_(drawableInfo, v6, v5);

  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v7 setParentStorage:0];
}

- (BOOL)isHorizontallyCentered
{
  v6 = objc_msgSend_parentStorage(self, a2, v2);
  if (v6)
  {
    if (objc_msgSend_isAnchored(self, v4, v5) && objc_msgSend_isHTMLWrap(self, v7, v8))
    {
      v9 = objc_msgSend_exteriorTextWrap(self->_drawableInfo, v7, v8);
      v12 = objc_msgSend_direction(v9, v10, v11) == 2;
      goto LABEL_12;
    }

    if (objc_msgSend_isInlineWithText(self->_drawableInfo, v7, v8))
    {
      CharIndex = objc_msgSend_findCharIndex(self, v13, v14);
      if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v6, v15, CharIndex, 0);
        v9 = v18;
        if (!v18)
        {
          v17 = 0;
LABEL_15:

          goto LABEL_16;
        }

        v21 = objc_msgSend_intValueForProperty_(v18, v19, 86);
        if (v21 >= 5)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPDrawableAttachment isHorizontallyCentered]");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 362, 0, "Invalid paragraph alignment value (%d).", v21);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
        }

        v12 = v21 == 2;
LABEL_12:
        v17 = v12;
        goto LABEL_15;
      }
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (BOOL)isVerticallyCentered
{
  v6 = objc_msgSend_parentStorage(self, a2, v2);
  if (v6 && objc_msgSend_isInlineWithText(self->_drawableInfo, v4, v5))
  {
    v9 = objc_msgSend_documentRoot(self, v7, v8);
    v11 = objc_msgSend_verticalAlignmentForTextStorage_(v9, v10, v6) == 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isHTMLWrap
{
  v3 = objc_msgSend_exteriorTextWrap(self->_drawableInfo, a2, v2);
  isHTMLWrap = objc_msgSend_isHTMLWrap(v3, v4, v5);

  return isHTMLWrap;
}

- (BOOL)isPartitioned
{
  if (objc_msgSend_isAnchored(self, a2, v2))
  {
    return 0;
  }

  v4 = objc_opt_class();

  return objc_msgSend_canPartitionInline(v4, v5, v6);
}

- (BOOL)isAnchored
{
  v3 = objc_msgSend_exteriorTextWrap(self->_drawableInfo, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_type(v3, v4, v5) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)specifiesEnabledKnobMask
{
  if (objc_msgSend_isInlineWithText(self->_drawableInfo, a2, v2))
  {
    return 1;
  }

  if (!objc_msgSend_isAnchoredToText(self->_drawableInfo, v4, v5))
  {
    return 0;
  }

  v9 = objc_msgSend_exteriorTextWrap(self->_drawableInfo, v7, v8);
  isHTMLWrap = objc_msgSend_isHTMLWrap(v9, v10, v11);

  return isHTMLWrap;
}

- (void)infoChanged
{
  v4 = objc_msgSend_parentStorage(self, a2, v2);

  if (v4)
  {
    CharIndex = objc_msgSend_findCharIndex(self, v5, v6);
    if (CharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPDrawableAttachment infoChanged]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v13, v19, v12, 525, 0, "Cannot find attachment char index.");

      v16 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v16, v14, v15);
    }

    else
    {
      v17 = CharIndex;
      v20 = objc_msgSend_parentStorage(self, v8, v9);
      objc_msgSend_didChangeRange_delta_broadcastKind_(v20, v18, v17, 1, 0, 2);
    }
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_pushMappingContext_(mapperCopy, v8, self);
  v11.receiver = self;
  v11.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v11 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  objc_msgSend_adoptStylesheet_withMapper_(self->_drawableInfo, v9, stylesheetCopy, mapperCopy);
  objc_msgSend_popMappingContext_(mapperCopy, v10, self);
}

- (id)objectsForStyleMigrating
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_drawable(self, a2, v2);
  if (v6 && (objc_msgSend_drawable(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend_tsp_isInDocument(v7, v8, v9), v7, v6, (v10 & 1) == 0))
  {
    v14 = objc_msgSend_drawable(self, v11, v12);
    v17[0] = v14;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v17, 1);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_drawable(self, v8, v9);
    objc_msgSend_performSelector_withObject_(rootCopy, v11, sel_willAddDrawable_, v10);
  }

  v13.receiver = self;
  v13.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v13 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_drawableInfo, v12, rootCopy, contextCopy);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v13 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_drawableInfo, v8, rootCopy, contextCopy);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_msgSend_drawable(self, v9, v10);
    objc_msgSend_performSelector_withObject_(rootCopy, v12, sel_didAddDrawable_, v11);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root storage:(id)storage
{
  rootCopy = root;
  storageCopy = storage;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_drawable(self, v8, v9);
    objc_msgSend_performSelector_withObject_withObject_(rootCopy, v11, sel_willRemoveDrawable_storage_, v10, storageCopy);
LABEL_5:

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_drawable(self, v12, v13);
    objc_msgSend_performSelector_withObject_(rootCopy, v14, sel_willRemoveDrawable_, v10);
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_willBeRemovedFromDocumentRoot_(self->_drawableInfo, v12, rootCopy);
  v15.receiver = self;
  v15.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v15 willBeRemovedFromDocumentRoot:rootCopy];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPDrawableAttachment willBeRemovedFromDocumentRoot:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 592, 0, "Should no longer be called since we now implement willBeRemovedFromDocumentRoot:storage:");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_msgSend_wasRemovedFromDocumentRoot_(self->_drawableInfo, v5, rootCopy);
  v10.receiver = self;
  v10.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v10 wasRemovedFromDocumentRoot:rootCopy];
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_drawable(self, v6, v7);
    objc_msgSend_performSelector_withObject_(rootCopy, v9, sel_didRemoveDrawable_, v8);
  }
}

- (id)childEnumerator
{
  v16[1] = *MEMORY[0x277D85DE8];
  drawableInfo = self->_drawableInfo;
  if (drawableInfo || (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPDrawableAttachment childEnumerator]"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDrawableAttachment.mm"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 607, 0, "_drawableInfo should not be nil here"), v7, v5, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10), (drawableInfo = self->_drawableInfo) != 0))
  {
    v16[0] = drawableInfo;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v16, 1);
    v14 = objc_msgSend_objectEnumerator(v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)shouldInvalidateWhenTextPropertiesChange
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = objc_msgSend_isAnchored(self, v3, v4) ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)needsUpdateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index
{
  storageCopy = storage;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (objc_opt_respondsToSelector())
  {
    isAnchored = objc_msgSend_isAnchored(self, v8, v9);
    v12 = objc_msgSend_needsUpdateForStyleChangeToStorage_charIndex_isAnchoredOrFloating_(v7, v11, storageCopy, index, isAnchored);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index
{
  storageCopy = storage;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (objc_opt_respondsToSelector())
  {
    isAnchored = objc_msgSend_isAnchored(self, v7, v8);
    objc_msgSend_updateForStyleChangeToStorage_charIndex_isAnchoredOrFloating_(v6, v10, storageCopy, index, isAnchored);
  }
}

- (BOOL)preserveAttributesOverSelectionWhenInserting
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = v2 != 0;

  return v3;
}

@end