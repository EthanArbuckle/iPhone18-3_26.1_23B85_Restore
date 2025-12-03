@interface TSACaptionInfo
- (BOOL)canAnchor;
- (BOOL)isAllowedInGroups;
- (BOOL)isHidden;
- (BOOL)isLockable;
- (BOOL)isLocked;
- (BOOL)preventsChangeTracking;
- (BOOL)shouldShowOnCanvas:(id)canvas;
- (BOOL)textStorageAllowsCommentsDisregardingParent;
- (TSACaptionInfo)initWithContext:(id)context geometry:(id)geometry;
- (id)copyDowngradedToShapeWithContext:(id)context;
- (id)exteriorTextWrap;
- (id)infoForAlignAndDistribute;
- (id)instructionalText;
- (id)objectForProperty:(int)property;
- (id)owningAttachment;
- (id)p_captionPlacementForAnchorLocation:(int64_t)location;
- (int64_t)nestedTextboxDepth;
- (int64_t)p_anchorLocationForCaptionPlacement;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setChildInfoKind:(int64_t)kind;
- (void)setLocked:(BOOL)locked;
- (void)setOwningAttachment:(id)attachment;
- (void)setPlacement:(id)placement;
@end

@implementation TSACaptionInfo

- (TSACaptionInfo)initWithContext:(id)context geometry:(id)geometry
{
  contextCopy = context;
  geometryCopy = geometry;
  objc_opt_class();
  v11 = objc_msgSend_documentObject(contextCopy, v8, v9, v10);
  v12 = TSUCheckedDynamicCast();

  v16 = objc_msgSend_theme(v12, v13, v14, v15);
  v19 = objc_msgSend_presetsOfKind_(v16, v17, *MEMORY[0x277D80BB8], v18);

  objc_opt_class();
  v23 = objc_msgSend_firstObject(v19, v20, v21, v22);
  v24 = TSUCheckedDynamicCast();

  v25 = objc_alloc(MEMORY[0x277D80F28]);
  v29 = objc_msgSend_stylesheet(v24, v26, v27, v28);
  v31 = objc_msgSend_initWithContext_string_stylesheet_kind_(v25, v30, contextCopy, &stru_288512028, v29, 3);

  v32 = MEMORY[0x277D80380];
  objc_msgSend_size(geometryCopy, v33, v34, v35);
  v38 = objc_msgSend_pathSourceForShapeType_naturalSize_(v32, v36, 0, v37);
  v41.receiver = self;
  v41.super_class = TSACaptionInfo;
  v39 = [(TSACaptionInfo *)&v41 initWithContext:contextCopy geometry:geometryCopy style:v24 pathSource:v38 wpStorage:v31];

  return v39;
}

- (id)copyDowngradedToShapeWithContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_textStorage(self, v5, v6, v7);
  v11 = objc_msgSend_copyWithContext_(v8, v9, contextCopy, v10);

  v12 = objc_alloc(MEMORY[0x277D80F00]);
  v16 = objc_msgSend_geometry(self, v13, v14, v15);
  v20 = objc_msgSend_shapeStyle(self, v17, v18, v19);
  v24 = objc_msgSend_pathSource(self, v21, v22, v23);
  v26 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(v12, v25, contextCopy, v16, v20, v24, v11);

  v30 = objc_msgSend_parentInfo(self, v27, v28, v29);
  v34 = objc_msgSend_exteriorTextWrap(v30, v31, v32, v33);
  objc_msgSend_setExteriorTextWrap_(v26, v35, v34, v36);

  return v26;
}

- (void)setChildInfoKind:(int64_t)kind
{
  if (self->_childInfoKind != kind)
  {
    objc_msgSend_willModify(self, a2, kind, v3);
    self->_childInfoKind = kind;
  }
}

- (void)setPlacement:(id)placement
{
  placementCopy = placement;
  v20 = placementCopy;
  if (placementCopy)
  {
    if (self->_placement != placementCopy)
    {
      objc_msgSend_willModify(self, v6, v7, v8);
      objc_msgSend_willChangeProperty_(self, v9, 548, v10);
      objc_storeStrong(&self->_placement, placement);
    }
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSACaptionInfo setPlacement:]", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionInfo.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 70, 0, "invalid nil value for '%{public}s'", "placement");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }
}

- (BOOL)isHidden
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  if (objc_msgSend_childInfoKind(self, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_captionHidden(v7, v11, v12, v13);
  }

  else
  {
    if (objc_msgSend_childInfoKind(self, v11, v12, v13) != 2)
    {
      v18 = 0;
      goto LABEL_7;
    }

    v14 = objc_msgSend_titleHidden(v7, v15, v16, v17);
  }

  v18 = v14;
LABEL_7:

  return v18;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F3500[64], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
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

  v15.receiver = self;
  v15.super_class = TSACaptionInfo;
  [(TSACaptionInfo *)&v15 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 4);
  if ((v8 & 2) != 0)
  {
    v9 = *(archive + 4);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2760D4150;
    v14[3] = &unk_27A6B0B68;
    v14[4] = self;
    v10 = unarchiverCopy;
    v11 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v14);

    v8 = *(archive + 4);
  }

  if ((v8 & 4) != 0)
  {
    v13 = *(archive + 10);
    if (v13 == 1)
    {
LABEL_10:
      self->_childInfoKind = v13;
      goto LABEL_11;
    }

    if (v13 == 2)
    {
      v13 = 2;
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2760D4F40, off_2812F3500[64]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
  v10 = objc_msgSend_childInfoKind(self, v7, v8, v9);
  *(v5 + 16) |= 4u;
  *(v5 + 40) = v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C951E0](v10);
    *(archive + 3) = v9;
  }

  v11 = *MEMORY[0x277D808D0];
  objc_msgSend_setMessageVersion_(archiverCopy, v6, *MEMORY[0x277D808D0], v7);
  objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v12, *MEMORY[0x277D80990], v11, @"TSACaptions");
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2760D43F4;
  v26[3] = &unk_27A6AF6C8;
  v29 = v9;
  v13 = archiverCopy;
  v27 = v13;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v13, v14, 1, archive, v26);
  v18 = objc_msgSend_placement(self, v15, v16, v17);

  if (v18)
  {
    v23 = objc_msgSend_placement(self, v19, v20, v21);
    *(archive + 4) |= 2u;
    v24 = *(archive + 4);
    if (!v24)
    {
      v25 = *(archive + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C951B0](v25);
      *(archive + 4) = v24;
    }

    objc_msgSend_setStrongReference_message_(v13, v22, v23, v24);
  }
}

- (id)owningAttachment
{
  v4 = objc_msgSend_parentInfo(self, a2, v2, v3);
  v8 = objc_msgSend_owningAttachment(v4, v5, v6, v7);

  return v8;
}

- (void)setOwningAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSACaptionInfo setOwningAttachment:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionInfo.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 172, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, "Do not call method", "[TSACaptionInfo setOwningAttachment:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (id)exteriorTextWrap
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  v11 = objc_msgSend_exteriorTextWrap(v7, v8, v9, v10);

  return v11;
}

- (BOOL)isAllowedInGroups
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSACaptionInfo isAllowedInGroups]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionInfo.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 189, 0, "There shouldn't be any reason to ask a caption/title if it can be grouped.");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (id)infoForAlignAndDistribute
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  v11 = objc_msgSend_infoForAlignAndDistribute(v7, v8, v9, v10);

  return v11;
}

- (BOOL)canAnchor
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSACaptionInfo canAnchor]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionInfo.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 222, 0, "It shouldn't have any meaning to ask a caption/title whether it can be anchored.");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (BOOL)isLockable
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  LOBYTE(v6) = objc_msgSend_isLockable(v7, v8, v9, v10);
  return v6;
}

- (BOOL)isLocked
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  LOBYTE(v6) = objc_msgSend_isLocked(v7, v8, v9, v10);
  return v6;
}

- (void)setLocked:(BOOL)locked
{
  if (locked)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSACaptionInfo setLocked:]", v3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionInfo.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 246, 0, "Titles and captions cannot be locked separately from their parent drawable.");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
  }
}

- (BOOL)shouldShowOnCanvas:(id)canvas
{
  v4.receiver = self;
  v4.super_class = TSACaptionInfo;
  return [(TSACaptionInfo *)&v4 shouldShowOnCanvas:canvas];
}

- (BOOL)textStorageAllowsCommentsDisregardingParent
{
  objc_opt_class();
  v6 = objc_msgSend_parentInfo(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    canCommentInCaptionOrTitle = objc_msgSend_canCommentInCaptionOrTitle(v7, v8, v9, v10);
  }

  else
  {
    canCommentInCaptionOrTitle = 1;
  }

  return canCommentInCaptionOrTitle;
}

- (id)instructionalText
{
  v4 = objc_msgSend_childInfoKind(self, a2, v2, v3);
  v8 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v5, v6, v7);
  v10 = v8;
  if (v4 == 1)
  {
    objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Caption", &stru_288512028, @"TSApplication");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Title", &stru_288512028, @"TSApplication");
  }
  v11 = ;

  return v11;
}

- (BOOL)preventsChangeTracking
{
  v4 = objc_msgSend_parentInfo(self, a2, v2, v3);
  v5 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_preventsChangeTracking(v5, v6, v7, v8, &unk_288534268);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)nestedTextboxDepth
{
  v4 = objc_msgSend_parentInfo(self, a2, v2, v3);
  v5 = TSUProtocolCast();

  if (v5)
  {
    v9 = objc_msgSend_nestedTextboxDepth(v5, v6, v7, v8, &unk_288538DC8);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)objectForProperty:(int)property
{
  if (property == 548)
  {
    v5 = objc_msgSend_placement(self, a2, *&property, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)p_anchorLocationForCaptionPlacement
{
  v4 = objc_msgSend_placement(self, a2, v2, v3);
  v8 = objc_msgSend_drawableAnchorLocation(v4, v5, v6, v7);

  return v8;
}

- (id)p_captionPlacementForAnchorLocation:(int64_t)location
{
  v5 = [TSACaptionPlacement alloc];
  v10 = objc_msgSend_context(self, v6, v7, v8);
  if (location == 7)
  {
    v11 = objc_msgSend_initWithContext_drawableAnchorLocation_captionAnchorLocation_(v5, v9, v10, 7, 1);
  }

  else if (location == 1)
  {
    v11 = objc_msgSend_initWithContext_drawableAnchorLocation_captionAnchorLocation_(v5, v9, v10, 1, 7);
  }

  else
  {
    v11 = objc_msgSend_initWithContext_drawableAnchorLocation_captionAnchorLocation_(v5, v9, v10, 4, 4);
  }

  v12 = v11;

  return v12;
}

@end