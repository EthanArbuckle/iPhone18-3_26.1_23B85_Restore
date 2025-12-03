@interface TSWPShapeInfo
+ (id)defaultPlaceholderTextForLocale:(id)locale;
+ (id)p_newEmptyStorageWithContext:(id)context paragraphStyle:(id)style;
- (BOOL)allowsCaption;
- (BOOL)allowsTitle;
- (BOOL)displaysInstructionalText;
- (BOOL)hasVisibleContents;
- (BOOL)isAutoresizingTextBox;
- (BOOL)isCaptionOrContainedByCaption;
- (BOOL)isLinkable;
- (BOOL)isLinked;
- (BOOL)isLocked;
- (BOOL)isRotatedOrFlipped;
- (BOOL)p_growsAutomatically;
- (BOOL)p_isEmptyList;
- (BOOL)p_isEmptyParagraphWithFillOrBorders;
- (BOOL)p_isNonTopicParagraphBreakAtParagraphIndex:(unint64_t)index;
- (BOOL)shouldDisplayTextAsTypeName;
- (BOOL)shouldIgnoreWPContent;
- (BOOL)shrinkTextToFit;
- (BOOL)supportsParentRotation;
- (BOOL)textIsVertical;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry size:(id)size;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry dynamicallyDraggedLayout:(id)layout;
- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry size:(CGSize)size;
- (CGPoint)transformableObjectAnchorPoint;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)childInfos;
- (NSString)defaultInstructionalText;
- (TSWPColumns)columns;
- (TSWPFlowInfo)textFlow;
- (TSWPPadding)padding;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source wpStorage:(id)storage;
- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style wpStorage:(id)storage;
- (TSWPShapeStyle)tswpShapeStyle;
- (TSWPStorage)textStorage;
- (double)pOffsetForParagraphAlignment:(CGSize)alignment;
- (double)pOffsetForVerticalAlignment:(CGSize)alignment;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)copyAcceptingTrackedChangesWithContext:(id)context;
- (id)defaultDescriptiveName;
- (id)displayableContainedText;
- (id)presetKind;
- (id)propertyMapForNewPreset;
- (id)replicateForReinsertion;
- (id)stylesForCopyStyle;
- (id)textStorageForHeadOfTextFlow;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (id)typeName;
- (int)columnDirection;
- (int)verticalAlignment;
- (int64_t)contentWritingDirection;
- (int64_t)nestedTextboxDepth;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style byGlyphStyle:(int)glyphStyle animationFilter:(id)filter;
- (unint64_t)maxInlineNestingDepth;
- (unint64_t)p_chunkCountForByBullet;
- (unint64_t)p_chunkCountForByBulletGroup;
- (unint64_t)p_nonTopicParagraphBreakCount;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)fixPositionOfImportedAutosizedShape;
- (void)i_setOwnedTextStorage:(id)storage;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_setOwnedTextStorage:(id)storage;
- (void)processSelectedStoragesWithStatisticsController:(id)controller;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAutogrowsForLocalization:(BOOL)localization;
- (void)setContentWritingDirection:(int64_t)direction;
- (void)setShrinkTextToFit:(BOOL)fit;
- (void)setTextFlow:(id)flow;
- (void)setTextIsVertical:(BOOL)vertical;
- (void)setVerticalAlignment:(int)alignment;
- (void)upgradeOwnedStorageWithFileFormatVersion:(unint64_t)version;
- (void)upgradeWithNewOwnedStorage;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPShapeInfo

+ (id)defaultPlaceholderTextForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Type to enter text", &stru_28860A0F0, @"TSText");

  return v3;
}

- (TSWPStorage)textStorage
{
  v4 = objc_msgSend_textFlow(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_textStorage(v4, v5, v6);
  }

  else
  {
    v8 = self->_containedStorage;
  }

  v9 = v8;

  return v9;
}

- (id)textStorageForHeadOfTextFlow
{
  if ((objc_msgSend_isLinked(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPShapeInfo textStorageForHeadOfTextFlow]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 204, 0, "Do not call this method unless linked.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_textFlow);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_textFlow);
    v17 = objc_msgSend_textboxes(v14, v15, v16);
    v20 = objc_msgSend_firstObject(v17, v18, v19);

    if (v20 == self)
    {
      WeakRetained = objc_msgSend_textStorage(self, v21, v22);
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)p_setOwnedTextStorage:(id)storage
{
  storageCopy = storage;
  objc_storeStrong(&self->_containedStorage, storage);
  v7 = objc_msgSend_parentInfo(self->_containedStorage, v5, v6);

  if (v7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPShapeInfo p_setOwnedTextStorage:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 215, 0, "expected nil value for '%{public}s'", "_containedStorage.parentInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_setParentInfo_(self->_containedStorage, v8, self);
}

- (void)i_setOwnedTextStorage:(id)storage
{
  storageCopy = storage;
  v6 = objc_msgSend_textFlow(self, v4, v5);

  if (v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPShapeInfo i_setOwnedTextStorage:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 220, 0, "expected nil value for '%{public}s'", "self.textFlow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (self->_containedStorage != storageCopy)
  {
    objc_msgSend_willModify(self, v7, v8);
    v17 = storageCopy;
    if (!v17)
    {
      v18 = objc_opt_class();
      v21 = objc_msgSend_context(self, v19, v20);
      v17 = objc_msgSend_p_newEmptyStorageWithContext_paragraphStyle_(v18, v22, v21, 0);

      v27 = objc_msgSend_documentRoot(self, v23, v24);
      if (v27)
      {
        v28 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v25, v26);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v17, v29, v27, v28);

        v32 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v30, v31);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v17, v33, v27, v32);
      }
    }

    objc_msgSend_clearBackPointerToParentInfoIfNeeded_(self->_containedStorage, v16, self);
    objc_msgSend_p_setOwnedTextStorage_(self, v34, v17);
  }
}

- (void)setTextFlow:(id)flow
{
  obj = flow;
  WeakRetained = objc_loadWeakRetained(&self->_textFlow);

  v7 = obj;
  if (WeakRetained != obj)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeWeak(&self->_textFlow, obj);
    v7 = obj;
  }
}

- (BOOL)isLinked
{
  WeakRetained = objc_loadWeakRetained(&self->_textFlow);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)isLinkable
{
  objc_opt_class();
  v5 = objc_msgSend_documentRoot(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  if (objc_msgSend_isTextBox(self, v7, v8) && objc_msgSend_isFloatingAboveText(self, v9, v10))
  {
    v13 = objc_msgSend_containingGroup(self, v11, v12);
    if (v13)
    {
      isDrawableOnSectionTemplatePage = 0;
    }

    else if (objc_opt_respondsToSelector())
    {
      isDrawableOnSectionTemplatePage = objc_msgSend_isDrawableOnSectionTemplatePage_(v6, v15, self);
    }

    else
    {
      isDrawableOnSectionTemplatePage = 1;
    }
  }

  else
  {
    isDrawableOnSectionTemplatePage = 0;
  }

  return isDrawableOnSectionTemplatePage;
}

- (BOOL)supportsParentRotation
{
  v10.receiver = self;
  v10.super_class = TSWPShapeInfo;
  if (![(TSWPShapeInfo *)&v10 supportsParentRotation])
  {
    return 0;
  }

  v5 = objc_msgSend_textStorage(self, v3, v4);
  v8 = objc_msgSend_supportsParentRotation(v5, v6, v7);

  return v8;
}

- (BOOL)isRotatedOrFlipped
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  v6 = v3;
  v12 = 0;
  if (v3)
  {
    objc_msgSend_angle(v3, v4, v5);
    if (v9 != 0.0 || (objc_msgSend_horizontalFlip(v6, v7, v8) & 1) != 0 || objc_msgSend_verticalFlip(v6, v10, v11))
    {
      v12 = 1;
    }
  }

  return v12;
}

- (int64_t)nestedTextboxDepth
{
  selfCopy = self;
  objc_msgSend_parentInfo(selfCopy, v3, v4);
  while (1)
    v5 = {;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    v9 = objc_msgSend_parentInfo(selfCopy, v7, v8);

    selfCopy = v9;
    objc_msgSend_parentInfo(v9, v10, v11);
  }

  objc_opt_class();
  v14 = objc_msgSend_owningAttachmentNoRecurse(selfCopy, v12, v13);
  v15 = TSUDynamicCast();

  if (v15 && (objc_msgSend_isAnchored(v15, v16, v17) & 1) == 0)
  {
    v21 = objc_msgSend_parentStorage(v15, v18, v19);
    v20 = objc_msgSend_nestedTextboxDepth(v21, v22, v23) + 1;
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (BOOL)shouldIgnoreWPContent
{
  v6 = objc_msgSend_parentInfo(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_parentInfo(self, v4, v5);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isLocked
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TSWPShapeInfo;
  LOBYTE(v3) = [(TSWPShapeInfo *)&v20 isLocked];
  if (!(v3 & 1 | ((objc_msgSend_isLinked(self, v4, v5) & 1) == 0)))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_textFlow);
    v9 = objc_msgSend_textboxes(WeakRetained, v7, v8, 0);

    v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v16, v21, 16);
    if (v3)
    {
      v12 = *v17;
      v13 = MEMORY[0x277D80438];
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (*(*(*(&v16 + 1) + 8 * i) + *v13))
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }

        v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v16, v21, 16);
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v3;
}

- (BOOL)shrinkTextToFit
{
  v3 = objc_msgSend_style(self, a2, v2);
  v5 = objc_msgSend_intValueForProperty_(v3, v4, 152) != 0;

  return v5;
}

- (void)setShrinkTextToFit:(BOOL)fit
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, fit);
  objc_msgSend_setBoxedValue_forProperty_(self, v4, v5, 152);
}

- (BOOL)textIsVertical
{
  v3 = objc_msgSend_style(self, a2, v2);
  v5 = objc_msgSend_intValueForProperty_(v3, v4, 153) != 0;

  return v5;
}

- (void)setTextIsVertical:(BOOL)vertical
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, vertical);
  objc_msgSend_setBoxedValue_forProperty_(self, v4, v5, 153);
}

- (void)setAutogrowsForLocalization:(BOOL)localization
{
  if (self->_autogrowsForLocalization != localization)
  {
    objc_msgSend_willModify(self, a2, localization);
    self->_autogrowsForLocalization = localization;
  }
}

- (int)verticalAlignment
{
  v3 = objc_msgSend_style(self, a2, v2);
  v5 = objc_msgSend_intValueForProperty_(v3, v4, 149);

  return v5;
}

- (void)setVerticalAlignment:(int)alignment
{
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *&alignment);
  objc_msgSend_setBoxedValue_forProperty_(self, v4, v5, 149);
}

- (int)columnDirection
{
  v3 = objc_msgSend_contentWritingDirection(self, a2, v2);

  return NStoTSWPWritingDirection(v3);
}

- (TSWPColumns)columns
{
  v3 = objc_msgSend_style(self, a2, v2);
  v5 = objc_msgSend_valueForProperty_(v3, v4, 148);

  return v5;
}

- (TSWPPadding)padding
{
  objc_opt_class();
  v5 = objc_msgSend_style(self, v3, v4);
  v7 = objc_msgSend_valueForProperty_(v5, v6, 146);
  v8 = TSUCheckedDynamicCast();

  return v8;
}

- (TSWPShapeStyle)tswpShapeStyle
{
  objc_opt_class();
  v5 = objc_msgSend_style(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (BOOL)isCaptionOrContainedByCaption
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    while (1)
    {
      objc_opt_class();
      v4 = TSUDynamicCast();
      v5 = objc_opt_class();
      if (objc_msgSend_isCaption(v5, v6, v7))
      {
        break;
      }

      v10 = objc_msgSend_parentInfo(v3, v8, v9);

      v3 = v10;
      if (!v10)
      {
        LOBYTE(selfCopy) = 0;
        return selfCopy;
      }
    }

    LOBYTE(selfCopy) = 1;
  }

  return selfCopy;
}

- (BOOL)hasVisibleContents
{
  v4 = objc_msgSend_textStorage(self, a2, v2);
  if (objc_msgSend_length(v4, v5, v6) || (objc_msgSend_p_isEmptyList(self, v7, v8) & 1) != 0)
  {
    isEmptyParagraphWithFillOrBorders = 1;
  }

  else
  {
    isEmptyParagraphWithFillOrBorders = objc_msgSend_p_isEmptyParagraphWithFillOrBorders(self, v9, v10);
  }

  return isEmptyParagraphWithFillOrBorders;
}

- (BOOL)p_isEmptyList
{
  v3 = objc_msgSend_textStorage(self, a2, v2);
  if (objc_msgSend_length(v3, v4, v5))
  {
    hasEmptyListAtCharIndex = 0;
  }

  else
  {
    hasEmptyListAtCharIndex = objc_msgSend_hasEmptyListAtCharIndex_(v3, v6, 0);
  }

  return hasEmptyListAtCharIndex;
}

- (BOOL)p_isEmptyParagraphWithFillOrBorders
{
  v3 = objc_msgSend_textStorage(self, a2, v2);
  if (objc_msgSend_length(v3, v4, v5))
  {
    hasEmptyParagraphFillOrBordersAtCharIndex = 0;
  }

  else
  {
    hasEmptyParagraphFillOrBordersAtCharIndex = objc_msgSend_hasEmptyParagraphFillOrBordersAtCharIndex_(v3, v6, 0);
  }

  return hasEmptyParagraphFillOrBordersAtCharIndex;
}

- (void)setContentWritingDirection:(int64_t)direction
{
  v13 = objc_msgSend_textStorage(self, a2, direction);
  v5 = NStoTSWPWritingDirection(direction);
  v8 = objc_msgSend_textStorage(self, v6, v7);
  v11 = objc_msgSend_range(v8, v9, v10);
  objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v13, v12, v5, v11, v12, 0);
}

- (int64_t)contentWritingDirection
{
  v3 = objc_msgSend_textStorage(self, a2, v2);
  v5 = objc_msgSend_writingDirectionForParagraphAtParIndex_(v3, v4, 0);
  v6 = sub_276D3A094(v5);

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_parentInfo(self->_containedStorage, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_parentInfo(self->_containedStorage, v5, v6);

    if (v7 != self)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPShapeInfo dealloc]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 555, 0, "Shape's storage has wrong parent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    v17 = objc_msgSend_parentInfo(self->_containedStorage, v8, v9);

    if (v17 == self)
    {
      objc_msgSend_setParentInfo_(self->_containedStorage, v18, 0);
    }
  }

  v19.receiver = self;
  v19.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v19 dealloc];
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source wpStorage:(id)storage
{
  contextCopy = context;
  geometryCopy = geometry;
  styleCopy = style;
  sourceCopy = source;
  storageCopy = storage;
  v25.receiver = self;
  v25.super_class = TSWPShapeInfo;
  v17 = [(TSWPShapeInfo *)&v25 initWithContext:contextCopy geometry:geometryCopy style:styleCopy pathSource:sourceCopy];
  v19 = v17;
  if (v17)
  {
    objc_msgSend_i_setOwnedTextStorage_(v17, v18, storageCopy);
    v22 = objc_msgSend_presetKind(v19, v20, v21);
    v19->_isTextBox = objc_msgSend_isEqual_(v22, v23, *MEMORY[0x277D80BB8]);
  }

  return v19;
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style wpStorage:(id)storage
{
  contextCopy = context;
  geometryCopy = geometry;
  styleCopy = style;
  storageCopy = storage;
  v14 = MEMORY[0x277D803A0];
  objc_msgSend_size(geometryCopy, v15, v16);
  v20 = objc_msgSend_roundedRectangleWithScalar_naturalSize_continuousCurve_(v14, v17, 0, 0.0, v18, v19);
  v22 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(self, v21, contextCopy, geometryCopy, styleCopy, v20, storageCopy);

  return v22;
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source
{
  contextCopy = context;
  geometryCopy = geometry;
  styleCopy = style;
  sourceCopy = source;
  objc_opt_class();
  v14 = TSUDynamicCast();
  v17 = objc_msgSend_defaultParagraphStyle(v14, v15, v16);
  v18 = objc_opt_class();
  v20 = objc_msgSend_p_newEmptyStorageWithContext_paragraphStyle_(v18, v19, contextCopy, v17);
  v22 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(self, v21, contextCopy, geometryCopy, styleCopy, sourceCopy, v20);

  return v22;
}

- (TSWPShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  contextCopy = context;
  geometryCopy = geometry;
  styleCopy = style;
  v11 = MEMORY[0x277D803A0];
  objc_msgSend_size(geometryCopy, v12, v13);
  v17 = objc_msgSend_roundedRectangleWithScalar_naturalSize_continuousCurve_(v11, v14, 0, 0.0, v15, v16);
  v19 = objc_msgSend_initWithContext_geometry_style_pathSource_(self, v18, contextCopy, geometryCopy, styleCopy, v17);

  return v19;
}

+ (id)p_newEmptyStorageWithContext:(id)context paragraphStyle:(id)style
{
  contextCopy = context;
  styleCopy = style;
  v11 = objc_msgSend_documentRoot(contextCopy, v7, v8);
  if (!styleCopy)
  {
    v12 = objc_msgSend_documentRoot(contextCopy, v9, v10);
    v15 = objc_msgSend_theme(v12, v13, v14);

    objc_opt_class();
    v17 = objc_msgSend_presetOfKind_index_(v15, v16, *MEMORY[0x277D80BB8], 0);
    v18 = TSUDynamicCast();

    styleCopy = objc_msgSend_defaultParagraphStyle(v18, v19, v20);
  }

  v21 = [TSWPStorage alloc];
  v24 = objc_msgSend_stylesheet(v11, v22, v23);
  v27 = objc_msgSend_initialListStyle(styleCopy, v25, v26);
  v29 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v21, v28, contextCopy, 0, 3, v24, styleCopy, v27, 0, 0);

  return v29;
}

- (id)presetKind
{
  v3 = *MEMORY[0x277D80B78];
  objc_opt_class();
  v6 = objc_msgSend_style(self, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v10 = objc_msgSend_presetKind(v7, v8, v9);

    v3 = v10;
  }

  return v3;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v10 = objc_msgSend_presetKind(self, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277D80B40]);

  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_pushMappingContext_(mapperCopy, v13, self);
    v16.receiver = self;
    v16.super_class = TSWPShapeInfo;
    [(TSWPShapeInfo *)&v16 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
    objc_msgSend_adoptStylesheet_withMapper_(self->_containedStorage, v14, stylesheetCopy, mapperCopy);
    objc_msgSend_popMappingContext_(mapperCopy, v15, self);
  }
}

- (BOOL)displaysInstructionalText
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  if (objc_msgSend_isTextBox(self, v5, v6) && (objc_msgSend_isLinked(self, v7, v8) & 1) == 0)
  {
    if (objc_msgSend_widthValid(v4, v9, v10))
    {
      v11 = objc_msgSend_heightValid(v4, v13, v14) ^ 1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (NSString)defaultInstructionalText
{
  if (!objc_msgSend_displaysInstructionalText(self, a2, v2))
  {
    goto LABEL_6;
  }

  if (qword_280A58310)
  {
    v6 = qword_280A58310;
    goto LABEL_9;
  }

  v7 = objc_msgSend_geometry(self, v4, v5);
  if (objc_msgSend_widthValid(v7, v8, v9))
  {
    v12 = objc_msgSend_geometry(self, v10, v11);
    v15 = objc_msgSend_heightValid(v12, v13, v14);

    if (v15)
    {
LABEL_6:
      v6 = &stru_28860A0F0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v19 = sub_276E32640(v16, v17, v18);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"Text", &stru_28860A0F0, @"TSText");

LABEL_9:

  return v6;
}

- (double)pOffsetForParagraphAlignment:(CGSize)alignment
{
  height = alignment.height;
  width = alignment.width;
  v7 = objc_msgSend_textStorage(self, a2, v3);
  IsVertical = objc_msgSend_textIsVertical(self, v8, v9);
  v14 = 0.0;
  if (objc_msgSend_paragraphCount(v7, v11, v12))
  {
    v15 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v7, v13, 0, 0);
    v17 = v15;
    if (v15)
    {
      v18 = objc_msgSend_intValueForProperty_(v15, v16, 86);

      switch(v18)
      {
        case 1:
          if (IsVertical)
          {
            v14 = height;
          }

          else
          {
            v14 = width;
          }

          break;
        case 2:
          if (IsVertical)
          {
            v22 = height;
          }

          else
          {
            v22 = width;
          }

          v14 = v22 * 0.5;
          break;
        case 4:
          isWritingDirectionRightToLeftForParagraphAtParIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtParIndex_(v7, v19, 0);
          if (IsVertical)
          {
            v21 = height;
          }

          else
          {
            v21 = width;
          }

          if (isWritingDirectionRightToLeftForParagraphAtParIndex)
          {
            v14 = v21;
          }

          else
          {
            v14 = 0.0;
          }

          break;
      }
    }
  }

  return v14;
}

- (double)pOffsetForVerticalAlignment:(CGSize)alignment
{
  height = alignment.height;
  width = alignment.width;
  IsVertical = objc_msgSend_textIsVertical(self, a2, v3);
  objc_opt_class();
  v10 = objc_msgSend_style(self, v8, v9);
  v11 = TSUDynamicCast();

  if (!v11)
  {
    goto LABEL_7;
  }

  v13 = objc_msgSend_intValueForProperty_(v11, v12, 149);
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      if (IsVertical)
      {
        height = 0.0;
      }

      goto LABEL_14;
    }

LABEL_7:
    if (IsVertical)
    {
      height = width;
    }

    else
    {
      height = 0.0;
    }

    goto LABEL_14;
  }

  if (IsVertical)
  {
    v14 = width;
  }

  else
  {
    v14 = height;
  }

  height = v14 * 0.5;
LABEL_14:

  return height;
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry dynamicallyDraggedLayout:(id)layout
{
  geometryCopy = geometry;
  layoutCopy = layout;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  objc_msgSend_pathBoundsWithoutStroke(v8, v9, v10);
  objc_msgSend_autosizePositionOffsetForGeometry_size_(self, v11, geometryCopy, v12, v13);
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry size:(CGSize)size
{
  height = size.height;
  width = size.width;
  geometryCopy = geometry;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  IsVertical = objc_msgSend_textIsVertical(self, v10, v11);
  if ((objc_msgSend_widthValid(geometryCopy, v13, v14) & 1) == 0)
  {
    if (IsVertical)
    {
      objc_msgSend_pOffsetForVerticalAlignment_(self, v15, v16, width, height);
    }

    else
    {
      objc_msgSend_pOffsetForParagraphAlignment_(self, v15, v16, width, height);
    }

    v8 = v17;
  }

  if ((objc_msgSend_heightValid(geometryCopy, v15, v16) & 1) == 0)
  {
    if (IsVertical)
    {
      objc_msgSend_pOffsetForParagraphAlignment_(self, v18, v19, width, height);
    }

    else
    {
      objc_msgSend_pOffsetForVerticalAlignment_(self, v18, v19, width, height);
    }

    v9 = v20;
  }

  v21 = v8;
  v22 = v9;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry size:(id)size
{
  height = a5.height;
  width = a5.width;
  sizeCopy = size;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  if (objc_msgSend_widthValid(sizeCopy, v12, v13))
  {
    v16 = width;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = objc_msgSend_heightValid(sizeCopy, v14, v15);
  memset(&v23[1], 0, sizeof(CGAffineTransform));
  if (sizeCopy)
  {
    if (v17)
    {
      objc_msgSend_transformBasedOnRect_(sizeCopy, v18, v19, v10, v11, v16, height);
    }

    else
    {
      objc_msgSend_transformBasedOnRect_(sizeCopy, v18, v19, v10, v11, v16, 0.0);
    }
  }

  objc_msgSend_autosizePositionOffsetForGeometry_size_(self, v18, sizeCopy, width, height);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v23[0] = v23[1];
  CGAffineTransformTranslate(retstr, v23, -v20, -v21);

  return result;
}

- (CGPoint)autosizePositionOffset
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  objc_msgSend_autosizedTransformForInfoGeometry_size_(self, v7, v4);
  v10 = objc_msgSend_mutableCopy(v4, v8, v9);
  objc_msgSend_setWidthValid_(v10, v11, 1);
  objc_msgSend_setHeightValid_(v10, v12, 1);
  objc_msgSend_size(v10, v13, v14, 0, 0, 0, 0, 0, 0);
  objc_msgSend_autosizedTransformForInfoGeometry_size_(self, v15, v10);
  TSUSubtractPoints();
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)fixPositionOfImportedAutosizedShape
{
  v16 = objc_msgSend_geometry(self, a2, v2);
  if (!objc_msgSend_widthValid(v16, v4, v5) || (objc_msgSend_heightValid(v16, v6, v7) & 1) == 0)
  {
    objc_msgSend_autosizePositionOffset(self, v6, v7);
    v10 = objc_msgSend_mutableCopy(v16, v8, v9);
    objc_msgSend_position(v10, v11, v12);
    TSUAddPoints();
    objc_msgSend_setPosition_(v10, v13, v14);
    objc_msgSend_setGeometry_(self, v15, v10);
  }
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v9 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_containedStorage, v8, rootCopy, contextCopy);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v13 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_containedStorage, v8, rootCopy, contextCopy);
  v11 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v9, v10);
  objc_msgSend_registerChange_details_forChangeSource_(v11, v12, 50005, self, rootCopy);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v6.receiver = self;
  v6.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v6 willBeRemovedFromDocumentRoot:rootCopy];
  objc_msgSend_willBeRemovedFromDocumentRoot_(self->_containedStorage, v5, rootCopy);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v10.receiver = self;
  v10.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v10 wasRemovedFromDocumentRoot:rootCopy];
  objc_msgSend_wasRemovedFromDocumentRoot_(self->_containedStorage, v5, rootCopy);
  v8 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v6, v7);
  objc_msgSend_registerChange_details_forChangeSource_(v8, v9, 50006, self, rootCopy);
}

- (id)childEnumeratorForUserSearch
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TSWPShapeInfo;
  childEnumeratorForUserSearch = [(TSWPShapeInfo *)&v24 childEnumeratorForUserSearch];
  if (!childEnumeratorForUserSearch)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSWPShapeInfo childEnumeratorForUserSearch]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 897, 0, "invalid nil value for '%{public}s'", "childEnumeratorForUserSearch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (self->_containedStorage)
  {
    v12 = MEMORY[0x277D81148];
    v25[0] = self->_containedStorage;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v25, 1);
    v16 = objc_msgSend_objectEnumerator(v13, v14, v15);
    v18 = objc_msgSend_aggregateEnumeratorWithObjects_(v12, v17, childEnumeratorForUserSearch, v16, 0);

    if (objc_opt_respondsToSelector())
    {
      v21 = objc_msgSend_childEnumeratorForUserSearch(self->_containedStorage, v19, v20);
      objc_msgSend_addObject_(v18, v22, v21);
    }
  }

  else
  {
    v18 = childEnumeratorForUserSearch;
  }

  return v18;
}

- (id)childEnumerator
{
  v24.receiver = self;
  v24.super_class = TSWPShapeInfo;
  childEnumerator = [(TSWPShapeInfo *)&v24 childEnumerator];
  v6 = objc_msgSend_childInfos(self, v4, v5);
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  if (!childEnumerator)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPShapeInfo childEnumerator]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 913, 0, "invalid nil value for '%{public}s'", "childEnumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = MEMORY[0x277D81148];
  v20 = objc_msgSend_objectEnumerator(v9, v10, v11);
  v22 = objc_msgSend_aggregateEnumeratorWithObjects_(v19, v21, childEnumerator, v20, 0);

  return v22;
}

- (Class)layoutClass
{
  WeakRetained = objc_loadWeakRetained(&self->_textFlow);

  if (WeakRetained || self->_containedStorage && (objc_msgSend_shouldIgnoreWPContent(self, v4, v5) & 1) == 0)
  {
    layoutClass = objc_opt_class();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSWPShapeInfo;
    layoutClass = [(TSWPShapeInfo *)&v8 layoutClass];
  }

  return layoutClass;
}

- (Class)repClass
{
  WeakRetained = objc_loadWeakRetained(&self->_textFlow);
  if (WeakRetained)
  {

LABEL_3:
    repClass = objc_opt_class();
    goto LABEL_7;
  }

  if (self->_containedStorage && (objc_msgSend_shouldIgnoreWPContent(self, v4, v5) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8.receiver = self;
  v8.super_class = TSWPShapeInfo;
  repClass = [(TSWPShapeInfo *)&v8 repClass];
LABEL_7:

  return repClass;
}

- (id)replicateForReinsertion
{
  v4.receiver = self;
  v4.super_class = TSWPShapeInfo;
  replicateForReinsertion = [(TSWPShapeInfo *)&v4 replicateForReinsertion];
  objc_storeWeak(replicateForReinsertion + 30, 0);
  return replicateForReinsertion;
}

- (id)copyAcceptingTrackedChangesWithContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_replicateForReinsertion(self, v5, v6);
  if (objc_msgSend_hasTrackedChanges(self->_containedStorage, v8, v9))
  {
    containedStorage = self->_containedStorage;
    v13 = objc_msgSend_range(containedStorage, v10, v11);
    v15 = objc_msgSend_newSubstorageWithRange_context_flags_(containedStorage, v14, v13, v14, contextCopy, 7);
    v16 = MEMORY[0x277D81490];
    v24 = *MEMORY[0x277D81490];
    v25 = v24;
    v19 = objc_msgSend_range(v15, v17, v18);
    LOBYTE(v23) = 1;
    objc_msgSend_applyChanges_inRange_inSelectionRange_outChangedRange_outSelectionRange_undoTransaction_forceAll_kind_(v15, v20, 1, v19, v20, *v16, v16[1], &v25, &v24, 0, v23);
    objc_msgSend_i_setOwnedTextStorage_(v7, v21, v15);
  }

  return v7;
}

- (BOOL)isAutoresizingTextBox
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  if (objc_msgSend_heightValid(v4, v5, v6))
  {
    v9 = objc_msgSend_geometry(self, v7, v8);
    v12 = objc_msgSend_widthValid(v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)shouldDisplayTextAsTypeName
{
  if (objc_msgSend_isAutoresizingTextBox(self, a2, v2))
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_msgSend_displayableContainedText(self, v4, v5);
    v10 = objc_msgSend_length(v7, v8, v9);

    v13 = objc_msgSend_shapeStyle(self, v11, v12);
    v16 = objc_msgSend_fill(self, v14, v15);

    objc_opt_class();
    v18 = objc_msgSend_valueForProperty_(v13, v17, 520);
    v19 = TSUDynamicCast();

    if (v19)
    {
      isEnabled = objc_msgSend_isEnabled(v19, v20, v21);
    }

    else
    {
      isEnabled = 0;
    }

    v23 = objc_msgSend_valueForProperty_(v13, v20, 519);
    if (v23)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }

    objc_opt_class();
    v26 = objc_msgSend_valueForProperty_(v13, v25, 517);
    v27 = TSUDynamicCast();

    if (v27)
    {
      isNullStroke = objc_msgSend_isNullStroke(v27, v28, v29);
    }

    else
    {
      isNullStroke = 1;
    }

    objc_msgSend_floatValueForProperty_(v13, v28, 518);
    v33 = fabs(v31 + -1.0) >= 0.00999999978 && v31 != 1.0;
    if (v10)
    {
      v34 = v16 == 0;
    }

    else
    {
      v34 = 0;
    }

    v35 = !v34;
    v6 = ((v35 | isEnabled | v33) ^ 1) & isKindOfClass & isNullStroke;
  }

  return v6 & 1;
}

- (id)displayableContainedText
{
  objc_opt_class();
  v5 = objc_msgSend_textStorage(self, v3, v4);
  v6 = TSUDynamicCast();

  v9 = objc_msgSend_prettyDisplayStringOneLine(v6, v7, v8);
  v12 = v9;
  if (!v9 || !objc_msgSend_length(v9, v10, v11))
  {
    v13 = objc_msgSend_instructionalText(self, v10, v11);

    v12 = v13;
  }

  return v12;
}

- (id)defaultDescriptiveName
{
  v4 = objc_msgSend_displayableContainedText(self, a2, v2);
  v7 = v4;
  if (!v4 || !objc_msgSend_length(v4, v5, v6))
  {
    v10.receiver = self;
    v10.super_class = TSWPShapeInfo;
    defaultDescriptiveName = [(TSWPShapeInfo *)&v10 defaultDescriptiveName];

    v7 = defaultDescriptiveName;
  }

  return v7;
}

- (id)typeName
{
  shouldDisplayTextAsTypeName = objc_msgSend_shouldDisplayTextAsTypeName(self, a2, v2);
  if (shouldDisplayTextAsTypeName)
  {
    v7 = sub_276E32640(shouldDisplayTextAsTypeName, v5, v6);
    typeName = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Text", &stru_28860A0F0, @"TSText");
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSWPShapeInfo;
    typeName = [(TSWPShapeInfo *)&v11 typeName];
  }

  return typeName;
}

- (NSArray)childInfos
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_containedStorage)
  {
    v4[0] = self->_containedStorage;
    v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)allowsCaption
{
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  allowsCaption = [(TSWPShapeInfo *)&v7 allowsCaption];
  if (allowsCaption)
  {
    LOBYTE(allowsCaption) = objc_msgSend_isLinked(self, v4, v5) ^ 1;
  }

  return allowsCaption;
}

- (BOOL)allowsTitle
{
  v7.receiver = self;
  v7.super_class = TSWPShapeInfo;
  allowsTitle = [(TSWPShapeInfo *)&v7 allowsTitle];
  if (allowsTitle)
  {
    LOBYTE(allowsTitle) = objc_msgSend_isLinked(self, v4, v5) ^ 1;
  }

  return allowsTitle;
}

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  localizedCopy = localized;
  v6 = MEMORY[0x277CBEB18];
  v67.receiver = self;
  v67.super_class = TSWPShapeInfo;
  v7 = [(TSWPShapeInfo *)&v67 textureDeliveryStylesLocalized:localized animationFilter:filter];
  v9 = objc_msgSend_arrayWithArray_(v6, v8, v7);

  if (localizedCopy)
  {
    if (objc_msgSend_isLinked(self, v10, v11))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPShapeInfo textureDeliveryStylesLocalized:animationFilter:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1144, 0, "BOGUS for linked text boxes.  Need to revisit if we support linked textboxes in keynote (i.e., this should be an API on the layout not the info.)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    v21 = objc_msgSend_textStorage(self, v12, v13);
    v23 = v21;
    v66 = xmmword_276F995A0;
    if (v21)
    {
      v24 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(v21, v22, 0, &v66);
    }

    else
    {
      v24 = 0;
    }

    v27 = objc_msgSend_paragraphLevelAtParIndex_(v23, v22, 0, v66);
    v29 = objc_msgSend_effectiveTypeForLevel_(v24, v28, v27);
    if (v29)
    {
      v32 = sub_276E32640(v29, v30, v31);
      v34 = objc_msgSend_localizedStringForKey_value_table_(v32, v33, @"By Bullet", &stru_28860A0F0, @"TSText");
      objc_msgSend_addObject_(v9, v35, v34);

      v39 = sub_276E32640(v36, v37, v38);
      v41 = objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"By Bullet Group", &stru_28860A0F0, @"TSText");
      objc_msgSend_addObject_(v9, v42, v41);

      v46 = sub_276E32640(v43, v44, v45);
      objc_msgSend_localizedStringForKey_value_table_(v46, v47, @"By Highlighted Bullet", &stru_28860A0F0, @"TSText");
    }

    else
    {
      v50 = sub_276E32640(0, v30, v31);
      v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v51, @"By Paragraph", &stru_28860A0F0, @"TSText");
      objc_msgSend_addObject_(v9, v53, v52);

      v57 = sub_276E32640(v54, v55, v56);
      v59 = objc_msgSend_localizedStringForKey_value_table_(v57, v58, @"By Paragraph Group", &stru_28860A0F0, @"TSText");
      objc_msgSend_addObject_(v9, v60, v59);

      v46 = sub_276E32640(v61, v62, v63);
      objc_msgSend_localizedStringForKey_value_table_(v46, v64, @"By Highlighted Paragraph", &stru_28860A0F0, @"TSText");
    }
    v48 = ;
    objc_msgSend_addObject_(v9, v49, v48);
  }

  else
  {
    objc_msgSend_addObject_(v9, v10, *MEMORY[0x277D80130]);
    objc_msgSend_addObject_(v9, v25, *MEMORY[0x277D80120]);
    objc_msgSend_addObject_(v9, v26, *MEMORY[0x277D80128]);
  }

  return v9;
}

- (CGPoint)transformableObjectAnchorPoint
{
  v20.receiver = self;
  v20.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v20 transformableObjectAnchorPoint];
  v4 = v3;
  v6 = v5;
  v9 = objc_msgSend_geometry(self, v7, v8);
  if ((objc_msgSend_widthValid(v9, v10, v11) & 1) == 0)
  {
    objc_msgSend_position(v9, v12, v13);
    v4 = v14;
  }

  if ((objc_msgSend_heightValid(v9, v12, v13) & 1) == 0)
  {
    objc_msgSend_position(v9, v15, v16);
    v6 = v17;
  }

  v18 = v4;
  v19 = v6;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)propertyMapForNewPreset
{
  v4 = objc_msgSend_style(self, a2, v2);
  v7 = objc_msgSend_fullPropertyMap(v4, v5, v6);

  v10 = objc_msgSend_context(self, v8, v9);
  v13 = objc_msgSend_documentRoot(v10, v11, v12);
  v16 = objc_msgSend_stylesheet(v13, v14, v15);

  v19 = objc_msgSend_textStorage(self, v17, v18);
  v21 = objc_msgSend_listStyleAtParIndex_effectiveRange_(v19, v20, 0, 0);

  v24 = objc_msgSend_textStorage(self, v22, v23);
  v26 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v24, v25, 0, 0);

  v29 = objc_msgSend_fullPropertyMap(v26, v27, v28);
  objc_msgSend_setObject_forProperty_(v29, v30, v21, 103);
  v33 = objc_msgSend_baseStyleForVariation(v26, v31, v32);
  v35 = objc_msgSend_variationOfStyle_propertyMap_(v16, v34, v33, v29);

  objc_msgSend_setObject_forProperty_(v7, v36, v35, 189);

  return v7;
}

- (id)stylesForCopyStyle
{
  v3 = MEMORY[0x277CBEB18];
  v25.receiver = self;
  v25.super_class = TSWPShapeInfo;
  stylesForCopyStyle = [(TSWPShapeInfo *)&v25 stylesForCopyStyle];
  v6 = objc_msgSend_arrayWithArray_(v3, v5, stylesForCopyStyle);

  v9 = objc_msgSend_textStorage(self, v7, v8);
  v11 = objc_msgSend_listStyleAtParIndex_effectiveRange_(v9, v10, 0, 0);

  v14 = objc_msgSend_textStorage(self, v12, v13);
  v16 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v14, v15, 0, 0);

  objc_msgSend_tsu_addObjects_(v6, v17, v16, v11, 0);
  v20 = objc_msgSend_textStorage(self, v18, v19);
  v22 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v20, v21, 0, 0);

  if (v22)
  {
    objc_msgSend_addObject_(v6, v23, v22);
  }

  return v6;
}

- (unint64_t)p_chunkCountForByBullet
{
  v4 = objc_msgSend_textStorage(self, a2, v2);
  v7 = objc_msgSend_paragraphCount(v4, v5, v6);
  v10 = v7 - objc_msgSend_p_nonTopicParagraphBreakCount(self, v8, v9);

  return v10;
}

- (unint64_t)p_chunkCountForByBulletGroup
{
  v6 = objc_msgSend_textStorage(self, a2, v2);
  v7 = 0;
  v8 = 0;
  while (v7 < objc_msgSend_paragraphCount(v6, v4, v5))
  {
    if (!objc_msgSend_paragraphLevelAtParIndex_(v6, v9, v7) || !v7)
    {
      v8 += objc_msgSend_p_isNonTopicParagraphBreakAtParagraphIndex_(self, v4, v7) ^ 1;
    }

    ++v7;
  }

  return v8;
}

- (unint64_t)p_nonTopicParagraphBreakCount
{
  v4 = objc_msgSend_textStorage(self, a2, v2);
  v7 = objc_msgSend_paragraphCount(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v10 += objc_msgSend_p_isNonTopicParagraphBreakAtParagraphIndex_(self, v8, v9++);
  }

  while (v7 != v9);
  return v10;
}

- (BOOL)p_isNonTopicParagraphBreakAtParagraphIndex:(unint64_t)index
{
  v4 = objc_msgSend_textStorage(self, a2, index);
  v6 = objc_msgSend_textRangeForParagraphAtIndex_(v4, v5, index);
  if (v7)
  {
    v8 = objc_msgSend_characterAtIndex_(v4, v7, &v7[v6 - 1]) == 11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style byGlyphStyle:(int)glyphStyle animationFilter:(id)filter
{
  v8 = objc_msgSend_textStorage(self, a2, style, *&glyphStyle, filter);
  v11 = v8;
  if (glyphStyle == 2)
  {
    v13 = objc_msgSend_wordCount(v8, v9, v10);
  }

  else if (glyphStyle == 1)
  {
    objc_msgSend_range(v8, v9, v10);
    v13 = v12;
  }

  else if (style == 2)
  {
    v13 = objc_msgSend_p_chunkCountForByBulletGroup(self, v9, v10);
  }

  else if ((style & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v13 = objc_msgSend_p_chunkCountForByBullet(self, v9, v10);
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

- (BOOL)p_growsAutomatically
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  if (objc_msgSend_widthValid(v4, v5, v6))
  {
    v9 = objc_msgSend_geometry(self, v7, v8);
    v12 = objc_msgSend_heightValid(v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)processSelectedStoragesWithStatisticsController:(id)controller
{
  controllerCopy = controller;
  if ((objc_msgSend_isLinked(self, v4, v5) & 1) == 0)
  {
    v8 = objc_msgSend_textStorage(self, v6, v7);
    objc_msgSend_processStorageForStatistics_processSelection_(controllerCopy, v9, v8, 0);
  }
}

- (TSWPFlowInfo)textFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_textFlow);

  return WeakRetained;
}

- (void)upgradeWithNewOwnedStorage
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2);
  v6 = objc_msgSend_context(self, v4, v5);
  v9 = objc_msgSend_documentRoot(v6, v7, v8);

  v12 = objc_msgSend_theme(v9, v10, v11);
  objc_opt_class();
  v14 = objc_msgSend_presetOfKind_index_(v12, v13, *MEMORY[0x277D80BB8], 0);
  v15 = TSUDynamicCast();

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_276DD5750;
  v55 = sub_276DD5760;
  v56 = objc_msgSend_defaultParagraphStyle(v15, v16, v17);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_276DD5750;
  v49 = sub_276DD5760;
  v50 = objc_msgSend_initialListStyle(v52[5], v18, v19);
  if (!v52[5])
  {
    if (objc_msgSend_containsProperty_(v15, v20, 188))
    {
      v22 = objc_msgSend_intValueForProperty_(v15, v21, 188);
      v24 = objc_msgSend_presetOfKind_index_(v12, v23, *MEMORY[0x277D80BB0], v22);
      v27 = objc_msgSend_paragraphStyle(v24, v25, v26);
      v28 = v52[5];
      v52[5] = v27;

      v31 = objc_msgSend_listStyle(v24, v29, v30);
      v32 = v46[5];
      v46[5] = v31;
    }

    else
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_276DD5768;
      v44[3] = &unk_27A6F4670;
      v44[4] = &v51;
      v44[5] = &v45;
      objc_msgSend_upgradeStylesWithBlock_(v12, v21, v44);
    }
  }

  v33 = [TSWPStorage alloc];
  v36 = objc_msgSend_context(self, v34, v35);
  v39 = objc_msgSend_stylesheet(v9, v37, v38);
  v43 = -1;
  v41 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v33, v40, v36, 0, 3, v39, v52[5], v46[5], 0, 0, v43);

  objc_msgSend_p_setOwnedTextStorage_(self, v42, v41);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
}

- (void)upgradeOwnedStorageWithFileFormatVersion:(unint64_t)version
{
  v43 = objc_msgSend_i_ownedTextStorage(self, a2, version);
  objc_msgSend_range(v43, v5, v6);
  if (v8)
  {
    goto LABEL_11;
  }

  v9 = objc_msgSend_presetKind(self, 0, v7);
  isEqual = objc_msgSend_isEqual_(v9, v10, *MEMORY[0x277D80BB8]);

  v14 = *MEMORY[0x277D80958] > version ? isEqual : 0;
  if (v14 != 1)
  {
    goto LABEL_11;
  }

  v15 = objc_msgSend_geometry(self, v12, v13);
  if (!objc_msgSend_widthValid(v15, v16, v17))
  {
    goto LABEL_10;
  }

  v20 = objc_msgSend_geometry(self, v18, v19);
  v23 = objc_msgSend_heightValid(v20, v21, v22);

  if (v23)
  {
    v26 = objc_msgSend_instructionalText(self, v24, v25);
    v29 = objc_msgSend_length(v26, v27, v28);

    if (!v29)
    {
      objc_msgSend_willModifyForUpgrade(self, v30, v31);
      v34 = objc_msgSend_context(self, v32, v33);
      v15 = objc_msgSend_documentRoot(v34, v35, v36);

      v39 = objc_msgSend_documentLocale(v15, v37, v38);
      v41 = objc_msgSend_defaultPlaceholderTextForLocale_(TSWPShapeInfo, v40, v39);

      objc_msgSend_insertPlaceholderText_atCharIndex_undoTransaction_(v43, v42, v41, 0, 0);
LABEL_10:
    }
  }

LABEL_11:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[112]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
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
    v7 = MEMORY[0x277D80490];
  }

  v54.receiver = self;
  v54.super_class = TSWPShapeInfo;
  [(TSWPShapeInfo *)&v54 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 4);
  if ((v10 & 4) == 0)
  {
    if ((v10 & 8) == 0)
    {
      if ((v10 & 2) != 0)
      {
        v40 = objc_msgSend_fileFormatVersion(unarchiverCopy, v8, v9);
        v41 = *(archive + 4);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = sub_276DD60E8;
        v49[3] = &unk_27A6F46C0;
        v49[4] = self;
        v42 = unarchiverCopy;
        v44 = objc_opt_class();
        if (v41)
        {
          objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v43, v41, v44, 0, v49);
        }

        else
        {
          objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v43, MEMORY[0x277D80A18], v44, 0, v49);
        }

        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = sub_276DD60F4;
        v48[3] = &unk_27A6F4710;
        v48[4] = self;
        v48[5] = v40;
        objc_msgSend_addFinalizeHandler_(v42, v45, v48);
      }

      else
      {
        if (objc_msgSend_fileFormatVersion(unarchiverCopy, v8, v9) >= *MEMORY[0x277D80978])
        {
          v12 = MEMORY[0x277D81150];
          v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPShapeInfo(PersistenceAdditions) loadFromArchive:unarchiver:]");
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfoPersistenceAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 141, 0, "Missing storage archive in shape");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
        }

        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = sub_276DD6100;
        v47[3] = &unk_27A6F46E8;
        v47[4] = self;
        objc_msgSend_addFinalizeHandler_(unarchiverCopy, v11, v47);
      }

      goto LABEL_17;
    }

    v32 = *(archive + 6);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_276DD60DC;
    v50[3] = &unk_27A6F46C0;
    v50[4] = self;
    v33 = unarchiverCopy;
    v34 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v33, v35, v32, v34, 0, v50);
LABEL_16:

    goto LABEL_17;
  }

  v21 = *(archive + 5);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_276DD60BC;
  v53[3] = &unk_27A6F4698;
  v53[4] = self;
  sub_276DD6010(unarchiverCopy, v21, &unk_28864DE38, v53);
  if ((*(archive + 16) & 8) != 0)
  {
    v36 = *(archive + 6);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_276DD60C8;
    v52[3] = &unk_27A6F46C0;
    v52[4] = self;
    v33 = unarchiverCopy;
    v37 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v33, v38, v36, v37, 0, v52);
    goto LABEL_16;
  }

  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v22, v23) >= *MEMORY[0x277D80980])
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSWPShapeInfo(PersistenceAdditions) loadFromArchive:unarchiver:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 116, 0, "Missing owned storage in lnked text box");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_276DD60D4;
  v51[3] = &unk_27A6F46E8;
  v51[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v24, v51);
LABEL_17:
  if ((*(archive + 16) & 0x10) == 0)
  {
LABEL_18:
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_276DD6108;
    v46[3] = &unk_27A6F46E8;
    v46[4] = self;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v19, v46);
    goto LABEL_23;
  }

  if (*(archive + 56))
  {
    objc_msgSend_setIsTextBoxForPersistence_(self, v19, 1);
  }

  else
  {
    if (objc_msgSend_fileFormatVersion(unarchiverCopy, v19, v20) < 0x2000400000001)
    {
      goto LABEL_18;
    }

    objc_msgSend_setIsTextBoxForPersistence_(self, v19, *(archive + 56) & 1);
  }

LABEL_23:
  if ((*(archive + 16) & 0x20) != 0)
  {
    objc_msgSend_setAutogrowsForLocalizationForPersistence_(self, v39, *(archive + 57));
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276DD65A4, off_2812DC408[112]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_276DD651C;
  v45[3] = &unk_27A6F3E30;
  archiveCopy = archive;
  v7 = archiverCopy;
  v46 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v45);
  v11 = objc_msgSend_i_ownedTextStorage(self, v9, v10);
  v16 = objc_msgSend_textFlow(self, v12, v13);
  if (v16)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v14, 3, archive);
    *(archive + 4) |= 4u;
    v18 = *(archive + 5);
    if (!v18)
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277CA3250](v19);
      *(archive + 5) = v18;
    }

    objc_msgSend_setWeakReference_message_(v7, v17, v16, v18);
    v22 = objc_msgSend_textboxes(v16, v20, v21);
    v25 = objc_msgSend_firstObject(v22, v23, v24);

    if (v25 == self)
    {
      v26 = objc_msgSend_textStorage(v16, v14, v15);

      v11 = v26;
    }
  }

  v28 = objc_msgSend_i_ownedTextStorage(self, v14, v15);
  *(archive + 4) |= 8u;
  v29 = *(archive + 6);
  if (!v29)
  {
    v30 = *(archive + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = MEMORY[0x277CA3250](v30);
    *(archive + 6) = v29;
  }

  objc_msgSend_setStrongReference_message_(v7, v27, v28, v29);

  *(archive + 4) |= 2u;
  v32 = *(archive + 4);
  if (!v32)
  {
    v33 = *(archive + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x277CA3250](v33);
    *(archive + 4) = v32;
  }

  objc_msgSend_setStrongReference_message_(v7, v31, v11, v32);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v34, 6, archive);
  isTextBox = objc_msgSend_isTextBox(self, v35, v36);
  *(archive + 4) |= 0x10u;
  *(archive + 56) = isTextBox;
  if (objc_msgSend_textIsVertical(self, v38, v39))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v40, *MEMORY[0x277D80968], *MEMORY[0x277D809A8], @"TSWPVerticalText");
  }

  if (objc_msgSend_autogrowsForLocalization(self, v40, v41))
  {
    v44 = objc_msgSend_autogrowsForLocalization(self, v42, v43);
    *(archive + 4) |= 0x20u;
    *(archive + 57) = v44;
  }
}

- (unint64_t)maxInlineNestingDepth
{
  v34 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = TSWPShapeInfo;
  maxInlineNestingDepth = [(TSDDrawableInfo *)&v32 maxInlineNestingDepth];
  v6 = objc_msgSend_textStorage(self, v4, v5);
  v27 = maxInlineNestingDepth;
  v11 = objc_msgSend_length(v6, v7, v8) || objc_msgSend_isTextBox(self, v9, v10);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = objc_msgSend_attachments(v6, v9, v10);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v33, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        objc_opt_class();
        v18 = TSUDynamicCast();
        v21 = objc_msgSend_drawable(v18, v19, v20);
        v24 = objc_msgSend_maxInlineNestingDepth(v21, v22, v23);

        if (v24 > v11)
        {
          v11 = v24;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v25, &v28, v33, 16);
    }

    while (v15);
  }

  return v27 + v11;
}

@end