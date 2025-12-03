@interface TSDDrawableInfo
+ (Class)classForUnarchiver:(id)unarchiver;
+ (Class)i_drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver;
+ (void)registerClassForUnarchiving:(Class)unarchiving;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAddCaption;
- (BOOL)canAddTitle;
- (BOOL)canRemoveCaption;
- (BOOL)canRemoveTitle;
- (BOOL)isAnchoredToText;
- (BOOL)isAttachedToBodyText;
- (BOOL)isChildOfPossibleParentInfo:(id)info;
- (BOOL)isFloatingAboveText;
- (BOOL)isInlineWithText;
- (BOOL)isInlineWithTextWithWrap;
- (BOOL)isLockable;
- (BOOL)isThemeContent;
- (BOOL)p_allAncestorsAreUnrotatedAndUnflipped;
- (BOOL)shouldBeIgnoredWhenCopying;
- (BOOL)supportsAttachedComments;
- (BOOL)supportsHyperlinks;
- (BOOL)supportsParentRotation;
- (CGAffineTransform)computeFullTransform;
- (CGAffineTransform)computeLayoutFullTransform;
- (CGAffineTransform)fullTransformInRoot;
- (CGAffineTransform)transformInRoot;
- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry dynamicallyDraggedLayout:(id)layout;
- (CGPoint)transformableObjectAnchorPoint;
- (NSString)displayableDescriptiveName;
- (NSString)typeName;
- (NSString)userDescription;
- (NSUUID)captionUUID;
- (NSUUID)titleUUID;
- (TSDDrawableInfo)caption;
- (TSDDrawableInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSDGroupInfo)containingGroup;
- (TSDInfo)parentInfo;
- (TSDOwningAttachment)owningAttachment;
- (TSDTitlePlacementProviding)title;
- (double)transformGeometryRatioForTransform:(CGAffineTransform *)transform;
- (id)annotationWithUUID:(id)d;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)descriptionForPasteboard;
- (id)endCollectingChanges;
- (id)exteriorTextWrapForMovingToFloating;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)partitioner;
- (id)replicateForReinsertion;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (id)titleAndCaptionInfos;
- (id)titleAndCaptionInfosForUserSearch;
- (id)transformedGeometryWithTransform:(CGAffineTransform *)transform inBounds:(CGRect)bounds;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)beginCollectingChanges;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)i_removeCaptionStandin;
- (void)i_removeTitleStandin;
- (void)i_setCaption:(id)caption withUUID:(id)d;
- (void)i_setTitle:(id)title withUUID:(id)d;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)performBlockWithTemporaryLayout:(id)layout;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setAccessibilityDescription:(id)description;
- (void)setAspectRatioLocked:(BOOL)locked;
- (void)setCaption:(id)caption;
- (void)setCaptionHidden:(BOOL)hidden;
- (void)setCaptionStandin:(id)standin;
- (void)setCaptionUUID:(id)d;
- (void)setComment:(id)comment;
- (void)setExteriorTextWrap:(id)wrap;
- (void)setGeometry:(id)geometry;
- (void)setHyperlinkURL:(id)l;
- (void)setInsertionCenterPosition:(CGPoint)position;
- (void)setLocked:(BOOL)locked;
- (void)setParentInfo:(id)info;
- (void)setParentInfoDuringUnarchiving:(id)unarchiving inDocument:(BOOL)document;
- (void)setPencilAnnotations:(id)annotations;
- (void)setTitle:(id)title;
- (void)setTitleHidden:(BOOL)hidden;
- (void)setTitleStandin:(id)standin;
- (void)setTitleUUID:(id)d;
- (void)takePropertiesFromReplacedDrawableInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)willChangeProperties:(id)properties;
- (void)willChangeProperty:(int)property;
@end

@implementation TSDDrawableInfo

+ (Class)classForUnarchiver:(id)unarchiver
{
  v3 = objc_msgSend_i_drawableInfoSubclassForClass_unarchiver_(TSDDrawableInfo, a2, self, unarchiver);

  return v3;
}

- (void)setParentInfoDuringUnarchiving:(id)unarchiving inDocument:(BOOL)document
{
  documentCopy = document;
  v20 = self->mParentInfoReference;
  objc_msgSend_setParentInfo_(self, v8, unarchiving);
  if (documentCopy && v20)
  {
    v9 = self->mParentInfoReference;
    if ((objc_msgSend_isEqualToLazyReference_(v9, v10, v20) & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDDrawableInfo(PersistenceAdditions) setParentInfoDuringUnarchiving:inDocument:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
      v16 = NSStringFromSelector(a2);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v15, 83, 0, "Expected equality between the parent info that we archived and the parent info assigned by %@. They were not, and this is a /bad/ thing.", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = [TSDMutableInfoGeometry alloc];
  if (*(archive + 8))
  {
    v9 = objc_msgSend_initWithArchive_(v7, v8, *(archive + 8));
  }

  else
  {
    v9 = objc_msgSend_initWithArchive_(v7, v8, &TSD::_GeometryArchive_default_instance_);
  }

  v11 = v9;
  if (self->mGeometry)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDDrawableInfo(PersistenceAdditions) loadFromArchive:unarchiver:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 91, 0, "Calling -loadFromArchive on a drawable of class %{public}@ twice!", v17);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v19, v20);
  }

  objc_storeStrong(&self->mGeometry, v11);
  v21 = *(archive + 4);
  self->mLocked = *(archive + 112) & ((v21 & 0x100) >> 8);
  if ((v21 & 0x10) != 0)
  {
    v23 = [TSDExteriorTextWrap alloc];
    if (*(archive + 10))
    {
      v22 = objc_msgSend_initWithArchive_(v23, v24, *(archive + 10));
    }

    else
    {
      v22 = objc_msgSend_initWithArchive_(v23, v24, &TSD::_ExteriorTextWrapArchive_default_instance_);
    }
  }

  else
  {
    v22 = objc_alloc_init(TSDExteriorTextWrap);
  }

  v25 = v22;
  objc_storeStrong(&self->mExteriorTextWrap, v22);

  v27 = *(archive + 4);
  if (v27)
  {
    v29 = MEMORY[0x277CBEBC0];
    v25 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v26, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    v28 = objc_msgSend_URLWithString_(v29, v30, v25);
  }

  else
  {
    v28 = 0;
  }

  objc_storeStrong(&self->mHyperlinkURL, v28);
  if (v27)
  {
  }

  v35 = objc_msgSend_fileFormatVersion(unarchiverCopy, v31, v32);
  v36 = *(archive + 4);
  if ((v36 & 0x80) != 0)
  {
    v37 = *(archive + 13);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_276656F84;
    v77[3] = &unk_27A6CC548;
    v77[4] = self;
    v38 = MEMORY[0x277C9C8B0](v77);
    v39 = *MEMORY[0x277D80990];
    v40 = unarchiverCopy;
    v41 = v38;
    v42 = objc_opt_class();
    if (v35 >= v39)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v40, v43, v37, v42, 0, v41);
    }

    else
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v40, v43, v37, v42, 0, v41);
    }

    v36 = *(archive + 4);
  }

  self->mCaptionHidden = *(archive + 115) & ((v36 & 0x800) >> 11);
  if ((v36 & 0x40) != 0)
  {
    v44 = *(archive + 12);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_276657070;
    v76[3] = &unk_27A6CC548;
    v76[4] = self;
    v45 = MEMORY[0x277C9C8B0](v76);
    v46 = *MEMORY[0x277D80990];
    v47 = unarchiverCopy;
    v48 = v45;
    v49 = objc_opt_class();
    if (v35 >= v46)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v50, v44, v49, 0, v48);
    }

    else
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v47, v50, v44, v49, 0, v48);
    }

    v36 = *(archive + 4);
  }

  self->mTitleHidden = *(archive + 114) & ((v36 & 0x400) >> 10);
  if ((v36 & 0x20) != 0)
  {
    v51 = *(archive + 11);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_276657170;
    v75[3] = &unk_27A6CC570;
    v75[4] = self;
    v52 = unarchiverCopy;
    v53 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v52, v54, v51, v53, 0, v75);
  }

  if (*(archive + 8) >= 1)
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_2766571FC;
    v74[3] = &unk_27A6CC598;
    v74[4] = self;
    v55 = unarchiverCopy;
    v56 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v55, v57, archive + 24, v56, 0, v74);
  }

  v58 = *(archive + 4);
  self->mAspectRatioLocked = *(archive + 113) & ((v58 & 0x200) >> 9);
  if ((v58 & 2) != 0)
  {
    v59 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v33, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    v62 = objc_msgSend_copy(v59, v60, v61);
    mAccessibilityDescription = self->mAccessibilityDescription;
    self->mAccessibilityDescription = v62;

    v58 = *(archive + 4);
  }

  if ((v58 & 8) != 0)
  {
    v64 = *(archive + 9);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2766572B4;
    v73[3] = &unk_27A6CC5C0;
    v73[4] = self;
    sub_276657208(unarchiverCopy, v64, &unk_2885A16B8, v73);
  }

  v65 = objc_msgSend_isFromCopy(unarchiverCopy, v33, v34);
  v68 = objc_msgSend_sourceType(unarchiverCopy, v66, v67);
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_2766572CC;
  v70[3] = &unk_27A6CC5E8;
  v70[4] = self;
  v71 = v65;
  v72 = v68 == 1;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v69, v70);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v119 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  mGeometry = self->mGeometry;
  *(archive + 4) |= 4u;
  v9 = *(archive + 8);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v10);
    *(archive + 8) = v9;
  }

  objc_msgSend_saveToArchive_archiver_(mGeometry, v6, v9, archiverCopy);
  v12 = *(archive + 4);
  *(archive + 112) = self->mLocked;
  mAspectRatioLocked = self->mAspectRatioLocked;
  *(archive + 4) = v12 | 0x300;
  *(archive + 113) = mAspectRatioLocked;
  mExteriorTextWrap = self->mExteriorTextWrap;
  *(archive + 4) = v12 | 0x310;
  v15 = *(archive + 10);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::ExteriorTextWrapArchive>(v16);
    *(archive + 10) = v15;
  }

  objc_msgSend_saveToArchive_archiver_(mExteriorTextWrap, v11, v15, archiverCopy);
  mHyperlinkURL = self->mHyperlinkURL;
  if (mHyperlinkURL)
  {
    v20 = objc_msgSend_absoluteString(mHyperlinkURL, v17, v18);
    v23 = objc_msgSend_length(v20, v21, v22);

    if (v23)
    {
      v24 = objc_msgSend_absoluteString(self->mHyperlinkURL, v17, v18);
      if (v24)
      {
        sub_2766581E0(v116, v24);
        v25 = __s;
        *(archive + 4) |= 1u;
        sub_276658080(__p, v25);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v115 < 0)
        {
          operator delete(__p[0]);
        }

        if (v117)
        {
          free(v117);
        }
      }

      v28 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v26, v27);
      WarningForObjectHyperlinks = objc_msgSend_requiresElevenOneDocumentReadWarningForObjectHyperlinks(v28, v29, v30);

      if (WarningForObjectHyperlinks)
      {
        objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v17, *MEMORY[0x277D80970], *MEMORY[0x277D808E8], @"TSDObjectLinks");
      }
    }
  }

  mComment = self->mComment;
  if (mComment)
  {
    v34 = objc_msgSend_storage(mComment, v17, v18);
    *(archive + 4) |= 0x20u;
    v35 = *(archive + 11);
    if (!v35)
    {
      v36 = *(archive + 1);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C9BB20](v36);
      *(archive + 11) = v35;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v33, v34, v35);

    v39 = objc_msgSend_storage(self->mComment, v37, v38);
    v42 = objc_msgSend_replies(v39, v40, v41);
    v45 = objc_msgSend_count(v42, v43, v44) == 0;

    if (!v45)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v17, *MEMORY[0x277D80980], @"TSDThreadedComments");
    }
  }

  v46 = objc_msgSend_pencilAnnotations(self, v17, v18);
  if (objc_msgSend_count(v46, v47, v48))
  {
    v51 = objc_msgSend_targetType(archiverCopy, v49, v50) == 1;

    if (v51)
    {
      goto LABEL_29;
    }

    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v52, *MEMORY[0x277D80980], *MEMORY[0x277D80990], @"TSKPencilAnnotations");
    v46 = objc_msgSend_pencilAnnotations(self, v54, v55);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v56, v46, archive + 24);
  }

LABEL_29:
  mAccessibilityDescription = self->mAccessibilityDescription;
  if (mAccessibilityDescription)
  {
    sub_2766581E0(v116, mAccessibilityDescription);
    v58 = __s;
    *(archive + 4) |= 2u;
    sub_276658080(__p, v58);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v115 < 0)
    {
      operator delete(__p[0]);
    }

    if (v117)
    {
      free(v117);
    }
  }

  if (self->mParentInfoReference && (objc_msgSend_isForCopy(archiverCopy, mAccessibilityDescription, v53) & 1) == 0)
  {
    mParentInfoReference = self->mParentInfoReference;
    *(archive + 4) |= 8u;
    v60 = *(archive + 9);
    if (!v60)
    {
      v61 = *(archive + 1);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      v60 = MEMORY[0x277C9BB20](v61);
      *(archive + 9) = v60;
    }

    objc_msgSend_setWeakLazyReference_message_(archiverCopy, mAccessibilityDescription, mParentInfoReference, v60);
  }

  mCaption = self->mCaption;
  v63 = MEMORY[0x277D808D0];
  if (mCaption)
  {
    if (self->mCaptionStandin)
    {
      TSUSetCrashReporterInfo();
      v90 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm", 254);
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v95, v92, v94, 254, 1, "There should not be a caption stand-in when there is a caption.");

      TSUCrashBreakpoint();
      goto LABEL_74;
    }

    *(archive + 4) |= 0x80u;
    v64 = *(archive + 13);
    if (!v64)
    {
      v65 = *(archive + 1);
      if (v65)
      {
        v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
      }

      v64 = MEMORY[0x277C9BB20](v65);
      *(archive + 13) = v64;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, mAccessibilityDescription, mCaption, v64);
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v66, *MEMORY[0x277D80990], *v63, @"TSACaptions");
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v67, 11, archive);
  }

  else
  {
    v69 = objc_opt_class();
    if (objc_msgSend_wantsTitleAndCaptionUUIDs(v69, v70, v71))
    {
      mCaptionStandin = self->mCaptionStandin;
      if (!mCaptionStandin)
      {
        TSUSetCrashReporterInfo();
        v102 = MEMORY[0x277D81150];
        v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm", 265);
        v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v107, v104, v106, 265, 1, "There should be a caption stand-in when there is not a caption.");

        TSUCrashBreakpoint();
        goto LABEL_74;
      }

      *(archive + 4) |= 0x80u;
      v73 = *(archive + 13);
      if (!v73)
      {
        v74 = *(archive + 1);
        if (v74)
        {
          v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
        }

        v73 = MEMORY[0x277C9BB20](v74);
        *(archive + 13) = v73;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v68, mCaptionStandin, v73);
    }
  }

  mCaptionHidden = self->mCaptionHidden;
  *(archive + 4) |= 0x800u;
  *(archive + 115) = mCaptionHidden;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v68, 13, archive);
  mTitle = self->mTitle;
  if (mTitle)
  {
    if (!self->mTitleStandin)
    {
      *(archive + 4) |= 0x40u;
      v78 = *(archive + 12);
      if (!v78)
      {
        v79 = *(archive + 1);
        if (v79)
        {
          v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
        }

        v78 = MEMORY[0x277C9BB20](v79);
        *(archive + 12) = v78;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v76, mTitle, v78);
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v80, *MEMORY[0x277D80990], *v63, @"TSACaptions");
      objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v81, 10, archive);
      goto LABEL_69;
    }

    TSUSetCrashReporterInfo();
    v96 = MEMORY[0x277D81150];
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm", 273);
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v101, v98, v100, 273, 1, "There should not be a title stand-in when there is a title.");

    TSUCrashBreakpoint();
LABEL_74:
    abort();
  }

  v83 = objc_opt_class();
  if (!objc_msgSend_wantsTitleAndCaptionUUIDs(v83, v84, v85))
  {
    goto LABEL_69;
  }

  mTitleStandin = self->mTitleStandin;
  if (!mTitleStandin)
  {
    TSUSetCrashReporterInfo();
    v108 = MEMORY[0x277D81150];
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "[TSDDrawableInfo(PersistenceAdditions) saveToArchive:archiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm", 284);
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v113, v110, v112, 284, 1, "There should be a title stand-in when there is not a title.");

    TSUCrashBreakpoint();
    goto LABEL_74;
  }

  *(archive + 4) |= 0x40u;
  v87 = *(archive + 12);
  if (!v87)
  {
    v88 = *(archive + 1);
    if (v88)
    {
      v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    }

    v87 = MEMORY[0x277C9BB20](v88);
    *(archive + 12) = v87;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v82, mTitleStandin, v87);
LABEL_69:
  mTitleHidden = self->mTitleHidden;
  *(archive + 4) |= 0x400u;
  *(archive + 114) = mTitleHidden;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v82, 12, archive);
}

- (void)setInsertionCenterPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v7 = objc_msgSend_geometry(self, a2, v3);
  v13 = objc_msgSend_mutableCopy(v7, v8, v9);

  objc_msgSend_setCenter_(v13, v10, v11, x, y);
  objc_msgSend_setGeometry_(self, v12, v13);
}

- (TSDDrawableInfo)initWithContext:(id)context geometry:(id)geometry
{
  contextCopy = context;
  geometryCopy = geometry;
  v30.receiver = self;
  v30.super_class = TSDDrawableInfo;
  v10 = [(TSDDrawableInfo *)&v30 initWithContext:contextCopy];
  if (v10)
  {
    if (geometryCopy && (objc_msgSend_allValuesValidNumbers(geometryCopy, v8, v9) & 1) == 0)
    {
      v13 = objc_msgSend_geometryWithValidNumbers(geometryCopy, v11, v12);

      geometryCopy = v13;
    }

    objc_storeStrong(&v10->mGeometry, geometryCopy);
    v16 = objc_msgSend_defaultExteriorTextWrap(TSDExteriorTextWrap, v14, v15);
    mExteriorTextWrap = v10->mExteriorTextWrap;
    v10->mExteriorTextWrap = v16;

    v10->mAspectRatioLocked = 0;
    v18 = objc_opt_class();
    if (objc_msgSend_wantsTitleAndCaptionUUIDs(v18, v19, v20))
    {
      v21 = [TSDStandinCaptionInfo alloc];
      v23 = objc_msgSend_initWithContext_(v21, v22, contextCopy);
      mCaptionStandin = v10->mCaptionStandin;
      v10->mCaptionStandin = v23;

      v25 = [TSDStandinCaptionInfo alloc];
      v27 = objc_msgSend_initWithContext_(v25, v26, contextCopy);
      mTitleStandin = v10->mTitleStandin;
      v10->mTitleStandin = v27;
    }
  }

  return v10;
}

- (TSDInfo)parentInfo
{
  if (self->mParentInfoReference)
  {
    WeakRetained = objc_msgSend_objectAndReturnError_(self->mParentInfoReference, a2, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mParentInfo);
  }

  return WeakRetained;
}

- (BOOL)isChildOfPossibleParentInfo:(id)info
{
  mParentInfoReference = self->mParentInfoReference;
  if (mParentInfoReference)
  {
    infoCopy = info;
    WeakRetained = objc_msgSend_objectIfLoaded(mParentInfoReference, v6, v7);
  }

  else
  {
    infoCopy2 = info;
    WeakRetained = objc_loadWeakRetained(&self->mParentInfo);
  }

  v11 = WeakRetained;
  v12 = WeakRetained == info;

  return v12;
}

- (void)setParentInfo:(id)info
{
  obj = info;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D80868]);
    inited = objc_msgSend_initWeakReferenceWithObject_(v6, v7, v5);
    isEqualToLazyReference = objc_msgSend_isEqualToLazyReference_(inited, v9, self->mParentInfoReference);
  }

  else
  {
    inited = 0;
    isEqualToLazyReference = objc_msgSend_isEqualToLazyReference_(0, v4, self->mParentInfoReference);
  }

  if (!inited || (isEqualToLazyReference & 1) == 0)
  {
    objc_msgSend_willModify(self, v11, v12);
    objc_storeStrong(&self->mParentInfoReference, inited);
  }

  objc_storeWeak(&self->mParentInfo, obj);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->mParentInfo);

  if (WeakRetained == neededCopy)
  {
    objc_storeWeak(&self->mParentInfo, 0);
    objc_msgSend_willModify(self, v6, v7);
    mParentInfoReference = self->mParentInfoReference;
    self->mParentInfoReference = 0;
  }
}

- (void)setCaptionStandin:(id)standin
{
  standinCopy = standin;
  if (self->mCaptionStandin != standinCopy)
  {
    v8 = standinCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->mCaptionStandin, standin);
    standinCopy = v8;
  }
}

- (void)setTitleStandin:(id)standin
{
  standinCopy = standin;
  if (self->mTitleStandin != standinCopy)
  {
    v8 = standinCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->mTitleStandin, standin);
    standinCopy = v8;
  }
}

- (NSUUID)captionUUID
{
  v3 = objc_opt_class();
  if (objc_msgSend_wantsTitleAndCaptionUUIDs(v3, v4, v5))
  {
    mCaption = self->mCaption;
    mCaptionStandin = self->mCaptionStandin;
    if (mCaption)
    {
      if (mCaptionStandin)
      {
        sub_27680E5B8();
      }
    }

    else
    {
      mCaption = self->mCaptionStandin;
      if (!mCaptionStandin)
      {
        sub_27680E65C();
      }
    }

    v10 = objc_msgSend_objectUUID(mCaption, v6, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setCaptionUUID:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  if ((objc_msgSend_wantsTitleAndCaptionUUIDs(v4, v5, v6) & 1) == 0)
  {
    sub_27680E700();
  }

  mCaptionStandin = self->mCaptionStandin;
  if (self->mCaption)
  {
    if (mCaptionStandin)
    {
      sub_27680E7A4();
    }

    objc_msgSend_setObjectUUID_(self->mCaption, dCopy, dCopy);
  }

  else
  {
    v9 = dCopy;
    if (!mCaptionStandin)
    {
      v10 = objc_msgSend_context(self, dCopy, v7);
      objc_msgSend_willModify(self, v11, v12);
      v13 = [TSDStandinCaptionInfo alloc];
      v15 = objc_msgSend_initWithContext_(v13, v14, v10);
      v16 = self->mCaptionStandin;
      self->mCaptionStandin = v15;

      if (objc_msgSend_tsp_isInDocument(self, v17, v18))
      {
        objc_msgSend_wasAddedToDocumentWithContext_(self->mCaptionStandin, v19, v10);
      }

      mCaptionStandin = self->mCaptionStandin;
      v9 = dCopy;
    }

    objc_msgSend_setObjectUUID_(mCaptionStandin, v9, v9);
  }
}

- (NSUUID)titleUUID
{
  v3 = objc_opt_class();
  if (objc_msgSend_wantsTitleAndCaptionUUIDs(v3, v4, v5))
  {
    mTitle = self->mTitle;
    mTitleStandin = self->mTitleStandin;
    if (mTitle)
    {
      if (mTitleStandin)
      {
        sub_27680E848();
      }
    }

    else
    {
      mTitle = self->mTitleStandin;
      if (!mTitleStandin)
      {
        sub_27680E8EC();
      }
    }

    v10 = objc_msgSend_objectUUID(mTitle, v6, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setTitleUUID:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  if ((objc_msgSend_wantsTitleAndCaptionUUIDs(v4, v5, v6) & 1) == 0)
  {
    sub_27680E990();
  }

  mTitleStandin = self->mTitleStandin;
  if (self->mTitle)
  {
    if (mTitleStandin)
    {
      sub_27680EA34();
    }

    objc_msgSend_setObjectUUID_(self->mTitle, dCopy, dCopy);
  }

  else
  {
    v9 = dCopy;
    if (!mTitleStandin)
    {
      v10 = objc_msgSend_context(self, dCopy, v7);
      objc_msgSend_willModify(self, v11, v12);
      v13 = [TSDStandinCaptionInfo alloc];
      v15 = objc_msgSend_initWithContext_(v13, v14, v10);
      v16 = self->mTitleStandin;
      self->mTitleStandin = v15;

      if (objc_msgSend_tsp_isInDocument(self, v17, v18))
      {
        objc_msgSend_wasAddedToDocumentWithContext_(self->mTitleStandin, v19, v10);
      }

      mTitleStandin = self->mTitleStandin;
      v9 = dCopy;
    }

    objc_msgSend_setObjectUUID_(mTitleStandin, v9, v9);
  }
}

- (TSDOwningAttachment)owningAttachment
{
  v3 = self->mOwningAttachment;
  v6 = objc_msgSend_parentInfo(self, v4, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = objc_msgSend_parentInfo(self, v8, v9);
    v13 = objc_msgSend_owningAttachment(v10, v11, v12);

    v3 = v13;
  }

  return v3;
}

- (void)setGeometry:(id)geometry
{
  obj = geometry;
  objc_msgSend_willModify(self, v4, v5);
  v8 = obj;
  if (!obj)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDDrawableInfo setGeometry:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 277, 0, "invalid nil value for '%{public}s'", "newGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = 0;
  }

  if (objc_msgSend_allValuesValidNumbers(v8, v6, v7))
  {
    v18 = obj;
  }

  else
  {
    v19 = objc_msgSend_geometryWithValidNumbers(obj, v16, v17);

    v18 = v19;
  }

  obja = v18;
  if ((objc_msgSend_isEqual_(v18, v16, self->mGeometry) & 1) == 0)
  {
    if (objc_msgSend_isEqualExceptForPosition_(obja, v20, self->mGeometry))
    {
      objc_msgSend_willChangeProperty_(self, v21, 513);
    }

    else
    {
      objc_msgSend_willChangeProperty_(self, v21, 512);
    }

    objc_storeStrong(&self->mGeometry, obja);
    objc_msgSend_setMatchesObjectPlaceholderGeometry_(self, v22, 0);
  }
}

- (void)setHyperlinkURL:(id)l
{
  lCopy = l;
  v6 = objc_msgSend_supportsHyperlinks(self, v4, v5);
  v7 = lCopy;
  if (lCopy && (v6 & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], lCopy, "[TSDDrawableInfo setHyperlinkURL:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 321, 0, "Setting hyperlink on info that does not support hyperlinks");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v7 = lCopy;
  }

  if ((objc_msgSend_isEqual_(v7, v7, self->mHyperlinkURL) & 1) == 0)
  {
    objc_msgSend_willModify(self, v15, v16);
    objc_msgSend_willChangeProperty_(self, v17, 524);
    v20 = objc_msgSend_copy(lCopy, v18, v19);
    mHyperlinkURL = self->mHyperlinkURL;
    self->mHyperlinkURL = v20;
  }
}

- (void)setAccessibilityDescription:(id)description
{
  descriptionCopy = description;
  if ((objc_msgSend_isEqualToString_(descriptionCopy, v4, self->mAccessibilityDescription) & 1) == 0)
  {
    objc_msgSend_willChangeProperty_(self, v5, 544);
    objc_msgSend_willModify(self, v6, v7);
    v10 = objc_msgSend_copy(descriptionCopy, v8, v9);
    mAccessibilityDescription = self->mAccessibilityDescription;
    self->mAccessibilityDescription = v10;
  }
}

- (void)setLocked:(BOOL)locked
{
  if (self->mLocked != locked && (!locked || objc_msgSend_isLockable(self, a2, locked)))
  {
    objc_msgSend_willModify(self, a2, locked);
    self->mLocked = locked;
  }
}

- (void)setAspectRatioLocked:(BOOL)locked
{
  if (self->mAspectRatioLocked != locked)
  {
    objc_msgSend_willChangeProperty_(self, a2, 525);
    objc_msgSend_willModify(self, v5, v6);
    self->mAspectRatioLocked = locked;
  }
}

- (BOOL)supportsParentRotation
{
  v6 = objc_msgSend_title(self, a2, v2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_msgSend_caption(self, v4, v5);
    v7 = v8 == 0;
  }

  return v7;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_transform(v4, v5, v6);
  }

  if (TSUIsTransformAxisAlignedWithThreshold())
  {
    if (objc_msgSend_aspectRatioLocked(self, v8, v9))
    {
      canAspectRatioLockBeChangedByUser = objc_msgSend_canAspectRatioLockBeChangedByUser(self, v10, v11);
    }

    else
    {
      canAspectRatioLockBeChangedByUser = 1;
    }
  }

  else
  {
    canAspectRatioLockBeChangedByUser = 0;
  }

  return canAspectRatioLockBeChangedByUser;
}

- (BOOL)canAddCaption
{
  v4 = objc_msgSend_parentInfo(self, a2, v2);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = objc_msgSend_parentInfo(self, v6, v7);
    isAllowedToAddCaptionToChildInfo = objc_msgSend_isAllowedToAddCaptionToChildInfo_(v8, v9, self);

    v11 = isAllowedToAddCaptionToChildInfo ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (!objc_msgSend_allowsCaption(self, v6, v7))
  {
    return 0;
  }

  v16 = objc_msgSend_caption(self, v12, v13);
  if (v16 != 0) | v11 & 1 || (objc_msgSend_isLocked(self, v14, v15))
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_p_allAncestorsAreUnrotatedAndUnflipped(self, v17, v18);
  }

  return v19;
}

- (BOOL)canAddTitle
{
  v4 = objc_msgSend_parentInfo(self, a2, v2);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = objc_msgSend_parentInfo(self, v6, v7);
    isAllowedToAddCaptionToChildInfo = objc_msgSend_isAllowedToAddCaptionToChildInfo_(v8, v9, self);

    v11 = isAllowedToAddCaptionToChildInfo ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (!objc_msgSend_allowsTitle(self, v6, v7))
  {
    return 0;
  }

  v16 = objc_msgSend_title(self, v12, v13);
  if (v16 != 0) | v11 & 1 || (objc_msgSend_isLocked(self, v14, v15))
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_p_allAncestorsAreUnrotatedAndUnflipped(self, v17, v18);
  }

  return v19;
}

- (BOOL)canRemoveCaption
{
  v6 = objc_msgSend_caption(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_isLocked(self, v4, v5) ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)canRemoveTitle
{
  v6 = objc_msgSend_title(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_isLocked(self, v4, v5) ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)p_allAncestorsAreUnrotatedAndUnflipped
{
  objc_opt_class();
  v5 = objc_msgSend_parentInfo(self, v3, v4);
  v6 = TSUDynamicCast();

  if (!v6)
  {
    return 1;
  }

  while (1)
  {
    v9 = objc_msgSend_geometry(v6, v7, v8);
    objc_msgSend_angle(v9, v10, v11);
    if (v14 != 0.0 && fabs(v14) >= 0.00999999978)
    {
      break;
    }

    if ((objc_msgSend_verticalFlip(v9, v12, v13) & 1) != 0 || objc_msgSend_horizontalFlip(v9, v15, v16))
    {
      break;
    }

    objc_opt_class();
    v19 = objc_msgSend_parentInfo(v6, v17, v18);
    v20 = TSUDynamicCast();

    v6 = v20;
    if (!v20)
    {
      return 1;
    }
  }

  return 0;
}

- (void)performBlockWithTemporaryLayout:(id)layout
{
  v11[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v11[0] = self;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v11, 1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2767AE760;
  v9[3] = &unk_27A6CD5C8;
  v9[4] = self;
  v10 = layoutCopy;
  v7 = layoutCopy;
  objc_msgSend_temporaryLayoutControllerForInfos_useInBlock_(TSDLayoutController, v8, v6, v9);
}

- (CGAffineTransform)computeLayoutFullTransform
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5010000000;
  v12 = "";
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *MEMORY[0x277CBF2C0];
  v14 = v4;
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2767AE8A8;
  v8[3] = &unk_27A6CC718;
  v8[4] = &v9;
  objc_msgSend_performBlockWithTemporaryLayout_(self, a3, v8);
  v5 = v10;
  v6 = *(v10 + 3);
  *&retstr->a = *(v10 + 2);
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 4);
  _Block_object_dispose(&v9, 8);
  return result;
}

- (CGAffineTransform)computeFullTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = objc_msgSend_geometry(self, a3, v3);
  if (objc_msgSend_widthValid(v6, v7, v8))
  {
    v11 = objc_msgSend_geometry(self, v9, v10);
    v14 = objc_msgSend_heightValid(v11, v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_geometry(self, v15, v16);
      v20 = v17;
      if (v17)
      {
        objc_msgSend_fullTransform(v17, v18, v19);
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
      }

      *&retstr->a = v22;
      *&retstr->c = v23;
      *&retstr->tx = v24;

      return result;
    }
  }

  else
  {
  }

  return MEMORY[0x2821F9670](self, sel_computeLayoutFullTransform, v16);
}

- (CGAffineTransform)fullTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = objc_msgSend_geometry(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_fullTransform(v6, v7, v8);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  objc_opt_class();
  v12 = objc_msgSend_parentInfo(self, v10, v11);
  v13 = TSUDynamicCast();

  if (v13)
  {
    objc_msgSend_transformInRoot(v13, v14, v15);
    v16 = *&retstr->c;
    *&v19.a = *&retstr->a;
    *&v19.c = v16;
    *&v19.tx = *&retstr->tx;
    CGAffineTransformConcat(&v21, &v19, &t2);
    v17 = *&v21.c;
    *&retstr->a = *&v21.a;
    *&retstr->c = v17;
    *&retstr->tx = *&v21.tx;
  }

  return result;
}

- (CGAffineTransform)transformInRoot
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  result = self;
  if (result)
  {
    v9 = result;
    do
    {
      v10 = objc_msgSend_geometry(v9, v7, v8);
      v13 = v10;
      if (v10)
      {
        objc_msgSend_transform(v10, v11, v12);
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v14 = *&retstr->c;
      *&v19.a = *&retstr->a;
      *&v19.c = v14;
      *&v19.tx = *&retstr->tx;
      CGAffineTransformConcat(retstr, &v19, &t2);

      objc_opt_class();
      v17 = objc_msgSend_parentInfo(v9, v15, v16);
      v18 = TSUDynamicCast();

      v9 = v18;
    }

    while (v18);
  }

  return result;
}

- (BOOL)isFloatingAboveText
{
  v3 = objc_msgSend_owningAttachmentNoRecurse(self, a2, v2);
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isAnchoredToText
{
  v3 = objc_msgSend_owningAttachmentNoRecurse(self, a2, v2);
  isAnchored = objc_msgSend_isAnchored(v3, v4, v5);

  return isAnchored;
}

- (BOOL)isInlineWithText
{
  if (objc_msgSend_isFloatingAboveText(self, a2, v2))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isAnchoredToText(self, v4, v5) ^ 1;
  }
}

- (BOOL)isInlineWithTextWithWrap
{
  isAnchoredToText = objc_msgSend_isAnchoredToText(self, a2, v2);
  if (isAnchoredToText)
  {
    v7 = objc_msgSend_exteriorTextWrap(self, v5, v6);
    isHTMLWrap = objc_msgSend_isHTMLWrap(v7, v8, v9);

    LOBYTE(isAnchoredToText) = isHTMLWrap;
  }

  return isAnchoredToText;
}

- (BOOL)isAttachedToBodyText
{
  v3 = objc_msgSend_owningAttachmentNoRecurse(self, a2, v2);
  isAttachedToBodyText = objc_msgSend_isAttachedToBodyText(v3, v4, v5);

  return isAttachedToBodyText;
}

- (void)setExteriorTextWrap:(id)wrap
{
  wrapCopy = wrap;
  objc_msgSend_willModify(self, v4, v5);
  v7 = wrapCopy;
  if (!wrapCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDDrawableInfo setExteriorTextWrap:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 553, 0, "invalid nil value for '%{public}s'", "exteriorTextWrap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v7 = 0;
  }

  if ((objc_msgSend_isEqual_(v7, v6, self->mExteriorTextWrap) & 1) == 0)
  {
    objc_msgSend_willChangeProperty_(self, v15, 521);
    v18 = objc_msgSend_copy(wrapCopy, v16, v17);
    mExteriorTextWrap = self->mExteriorTextWrap;
    self->mExteriorTextWrap = v18;
  }
}

- (id)exteriorTextWrapForMovingToFloating
{
  v4 = objc_msgSend_exteriorTextWrap(self, a2, v2);
  v7 = objc_msgSend_type(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_exteriorTextWrap(self, v8, v9);
    isHTMLWrap = objc_msgSend_isHTMLWrap(v10, v11, v12);

    v16 = objc_msgSend_exteriorTextWrap(self, v14, v15);
    v19 = v16;
    if (!isHTMLWrap)
    {
      goto LABEL_8;
    }

    v20 = objc_msgSend_mutableCopy(v16, v17, v18);

    objc_msgSend_setIsHTMLWrap_(v20, v21, 0);
  }

  else
  {
    v20 = objc_msgSend_exteriorTextWrap(TSDMutableExteriorTextWrap, v8, v9);
    v26 = objc_msgSend_exteriorTextWrap(self, v24, v25);
    v29 = objc_msgSend_fitType(v26, v27, v28);
    objc_msgSend_setFitType_(v20, v30, v29);

    v31 = objc_opt_class();
    if (objc_msgSend_canPartitionInline(v31, v32, v33))
    {
      objc_msgSend_setType_(v20, v34, 2);
    }

    objc_msgSend_setMargin_(v20, v34, v35, 0.0);
  }

  v19 = objc_msgSend_copy(v20, v22, v23);

LABEL_8:

  return v19;
}

- (BOOL)isThemeContent
{
  v3 = objc_msgSend_parentInfo(self, a2, v2);
  isThemeContent = objc_msgSend_isThemeContent(v3, v4, v5);

  return isThemeContent;
}

- (id)partitioner
{
  v3 = objc_opt_class();
  if ((objc_msgSend_canPartitionInline(v3, v4, v5) & 1) != 0 || (v6 = objc_opt_class(), objc_msgSend_canPartitionForPrinting(v6, v7, v8)))
  {
    mDefaultPartitioner = self->mDefaultPartitioner;
    if (!mDefaultPartitioner)
    {
      v10 = [TSDDefaultPartitioner alloc];
      v12 = objc_msgSend_initWithInfo_(v10, v11, self);
      v13 = self->mDefaultPartitioner;
      self->mDefaultPartitioner = v12;

      mDefaultPartitioner = self->mDefaultPartitioner;
    }

    v14 = mDefaultPartitioner;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)supportsHyperlinks
{
  if (objc_msgSend_isInlineWithText(self, a2, v2))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isInlineWithTextWithWrap(self, v4, v5) ^ 1;
  }
}

- (BOOL)isLockable
{
  if (!objc_msgSend_isFloatingAboveText(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_containingGroup(self, v4, v5);
  v7 = v6 == 0;

  return v7;
}

- (id)replicateForReinsertion
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_context(self, a2, v2);
  v10[0] = *MEMORY[0x277D808A8];
  v10[1] = @"TSDDeepCopyUseOldStyles";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = MEMORY[0x277CBEC38];
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v11, v10, 2);
  v8 = objc_msgSend_tsd_deepCopyStyledObjectInContext_options_error_(self, v7, v4, v6, 0);

  return v8;
}

- (BOOL)shouldBeIgnoredWhenCopying
{
  if (objc_msgSend_isLocked(self, a2, v2))
  {
    return 1;
  }

  else
  {
    return objc_msgSend_canCopyData(self, v4, v5) ^ 1;
  }
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)geometry dynamicallyDraggedLayout:(id)layout
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (TSDDrawableInfo)caption
{
  if (!self->mCaption || self->mCaptionHidden)
  {
    return 0;
  }

  else
  {
    return self->mCaption;
  }
}

- (void)i_removeCaptionStandin
{
  if (self->mCaptionStandin)
  {
    objc_msgSend_willModify(self, a2, v2);
    if (objc_msgSend_tsp_isInDocument(self, v4, v5))
    {
      mCaptionStandin = self->mCaptionStandin;
      v9 = objc_msgSend_context(self, v6, v7);
      objc_msgSend_willBeRemovedFromDocumentWithContext_(mCaptionStandin, v10, v9);
    }

    v11 = self->mCaptionStandin;
    self->mCaptionStandin = 0;
  }
}

- (void)i_setCaption:(id)caption withUUID:(id)d
{
  captionCopy = caption;
  dCopy = d;
  v10 = objc_msgSend_allowsCaption(self, v8, v9);
  if (captionCopy && (v10 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], captionCopy, "[TSDDrawableInfo i_setCaption:withUUID:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 794, 0, "Trying to assign a caption to a %{public}@, %@", v15, self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  mCaption = self->mCaption;
  if (mCaption != captionCopy)
  {
    v20 = mCaption;
    objc_msgSend_willChangeProperty_(self, v21, 545);
    v26 = objc_msgSend_tsp_isInDocument(self, v22, v23);
    if (v26)
    {
      if (v20)
      {
        v27 = objc_msgSend_documentRoot(self, v24, v25);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v20, v28, v27);

        objc_msgSend_setParentInfo_(v20, v29, 0);
      }

      if (captionCopy)
      {
        v30 = objc_msgSend_documentRoot(self, v24, v25);
        v33 = objc_msgSend_insertingPrototypeContext(MEMORY[0x277D805F0], v31, v32);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(captionCopy, v34, v30, v33);
      }
    }

    if (!self->mCaption)
    {
      objc_msgSend_i_removeCaptionStandin(self, v24, v25);
    }

    objc_storeStrong(&self->mCaption, caption);
    objc_msgSend_setObjectUUID_(self->mCaption, v35, dCopy);
    objc_msgSend_setParentInfo_(self->mCaption, v36, self);
    if (!self->mCaption)
    {
      v39 = objc_opt_class();
      if (objc_msgSend_wantsTitleAndCaptionUUIDs(v39, v40, v41))
      {
        v42 = objc_msgSend_context(self, v37, v38);
        v43 = [TSDStandinCaptionInfo alloc];
        v45 = objc_msgSend_initWithContext_(v43, v44, v42);
        mCaptionStandin = self->mCaptionStandin;
        self->mCaptionStandin = v45;

        objc_msgSend_setObjectUUID_(self->mCaptionStandin, v47, dCopy);
        if (v26)
        {
          objc_msgSend_wasAddedToDocumentWithContext_(self->mCaptionStandin, v48, v42);
        }
      }
    }

    if (v26)
    {
      if (v20)
      {
        v49 = objc_msgSend_documentRoot(self, v37, v38);
        objc_msgSend_wasRemovedFromDocumentRoot_(v20, v50, v49);
      }

      v51 = self->mCaption;
      if (v51)
      {
        v52 = objc_msgSend_documentRoot(self, v37, v38);
        v55 = objc_msgSend_insertingPrototypeContext(MEMORY[0x277D805F0], v53, v54);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v51, v56, v52, v55);
      }
    }
  }
}

- (void)setCaption:(id)caption
{
  captionCopy = caption;
  v8 = objc_msgSend_captionUUID(self, v5, v6);
  objc_msgSend_i_setCaption_withUUID_(self, v7, captionCopy, v8);
}

- (void)setCaptionHidden:(BOOL)hidden
{
  if (self->mCaptionHidden != hidden)
  {
    objc_msgSend_willChangeProperty_(self, a2, 546);
    self->mCaptionHidden = hidden;
  }
}

- (TSDTitlePlacementProviding)title
{
  if (!self->mTitle || self->mTitleHidden)
  {
    return 0;
  }

  else
  {
    return self->mTitle;
  }
}

- (void)i_removeTitleStandin
{
  if (self->mTitleStandin)
  {
    objc_msgSend_willModify(self, a2, v2);
    if (objc_msgSend_tsp_isInDocument(self, v4, v5))
    {
      mTitleStandin = self->mTitleStandin;
      v9 = objc_msgSend_context(self, v6, v7);
      objc_msgSend_willBeRemovedFromDocumentWithContext_(mTitleStandin, v10, v9);
    }

    v11 = self->mTitleStandin;
    self->mTitleStandin = 0;
  }
}

- (void)i_setTitle:(id)title withUUID:(id)d
{
  titleCopy = title;
  dCopy = d;
  v10 = objc_msgSend_allowsTitle(self, v8, v9);
  if (titleCopy && (v10 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], titleCopy, "[TSDDrawableInfo i_setTitle:withUUID:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 881, 0, "Trying to assign a title to a %{public}@ %@", v15, self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  mTitle = self->mTitle;
  if (mTitle != titleCopy)
  {
    v20 = mTitle;
    objc_msgSend_willChangeProperty_(self, v21, 547);
    v26 = objc_msgSend_tsp_isInDocument(self, v22, v23);
    if (v26)
    {
      if (v20)
      {
        v27 = objc_msgSend_documentRoot(self, v24, v25);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v20, v28, v27);

        objc_msgSend_setParentInfo_(v20, v29, 0);
      }

      if (titleCopy)
      {
        v30 = objc_msgSend_documentRoot(self, v24, v25);
        v33 = objc_msgSend_insertingPrototypeContext(MEMORY[0x277D805F0], v31, v32);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(titleCopy, v34, v30, v33);
      }
    }

    if (!self->mTitle)
    {
      objc_msgSend_i_removeTitleStandin(self, v24, v25);
    }

    objc_storeStrong(&self->mTitle, title);
    objc_msgSend_setObjectUUID_(self->mTitle, v35, dCopy);
    objc_msgSend_setParentInfo_(self->mTitle, v36, self);
    if (!self->mTitle)
    {
      v39 = objc_opt_class();
      if (objc_msgSend_wantsTitleAndCaptionUUIDs(v39, v40, v41))
      {
        v42 = objc_msgSend_context(self, v37, v38);
        v43 = [TSDStandinCaptionInfo alloc];
        v45 = objc_msgSend_initWithContext_(v43, v44, v42);
        mTitleStandin = self->mTitleStandin;
        self->mTitleStandin = v45;

        objc_msgSend_setObjectUUID_(self->mTitleStandin, v47, dCopy);
        if (v26)
        {
          objc_msgSend_wasAddedToDocumentWithContext_(self->mTitleStandin, v48, v42);
        }
      }
    }

    if (v26)
    {
      if (v20)
      {
        v49 = objc_msgSend_documentRoot(self, v37, v38);
        objc_msgSend_wasRemovedFromDocumentRoot_(v20, v50, v49);
      }

      v51 = self->mTitle;
      if (v51)
      {
        v52 = objc_msgSend_documentRoot(self, v37, v38);
        v55 = objc_msgSend_insertingPrototypeContext(MEMORY[0x277D805F0], v53, v54);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v51, v56, v52, v55);
      }
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v8 = objc_msgSend_titleUUID(self, v5, v6);
  objc_msgSend_i_setTitle_withUUID_(self, v7, titleCopy, v8);
}

- (void)setTitleHidden:(BOOL)hidden
{
  if (self->mTitleHidden != hidden)
  {
    objc_msgSend_willChangeProperty_(self, a2, 549);
    self->mTitleHidden = hidden;
  }
}

- (BOOL)supportsAttachedComments
{
  v6 = objc_msgSend_containingGroup(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_containingGroup(self, v4, v5);
    v10 = objc_msgSend_isFreehandDrawing(v7, v8, v9) ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)setComment:(id)comment
{
  commentCopy = comment;
  if (self->mComment != commentCopy)
  {
    v9 = commentCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willChangeProperty_(self, v8, 550);
    objc_storeStrong(&self->mComment, comment);
    commentCopy = v9;
  }
}

- (void)takePropertiesFromReplacedDrawableInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_supportsAttachedComments(self, v4, v5))
  {
    v8 = objc_msgSend_comment(infoCopy, v6, v7);

    if (v8)
    {
      v9 = objc_msgSend_comment(infoCopy, v6, v7);
      v12 = objc_msgSend_storage(v9, v10, v11);

      v13 = [TSDCommentStorage alloc];
      v16 = objc_msgSend_context(self, v14, v15);
      v19 = objc_msgSend_text(v12, v17, v18);
      v22 = objc_msgSend_creationDate(v12, v20, v21);
      v25 = objc_msgSend_author(v12, v23, v24);
      v28 = objc_msgSend_replies(v12, v26, v27);
      v30 = objc_msgSend_initWithContext_text_creationDate_author_replies_(v13, v29, v16, v19, v22, v25, v28);

      v31 = [TSDDrawableComment alloc];
      v33 = objc_msgSend_initWithParent_storage_(v31, v32, self, v30);
      objc_msgSend_setComment_(self, v34, v33);
    }
  }

  v35 = objc_msgSend_exteriorTextWrap(infoCopy, v6, v7);
  objc_msgSend_setExteriorTextWrap_(self, v36, v35);

  v39 = objc_msgSend_aspectRatioLocked(infoCopy, v37, v38);
  objc_msgSend_setAspectRatioLocked_(self, v40, v39);
  if (objc_msgSend_supportsHyperlinks(self, v41, v42))
  {
    v45 = objc_msgSend_hyperlinkURL(infoCopy, v43, v44);
    objc_msgSend_setHyperlinkURL_(self, v46, v45);
  }

  else
  {
    objc_msgSend_setHyperlinkURL_(self, v43, 0);
  }

  if (objc_msgSend_allowsTitle(self, v47, v48))
  {
    v51 = objc_msgSend_titleInfoIgnoringVisibility(infoCopy, v49, v50);
    v54 = objc_msgSend_replicateForReinsertion(v51, v52, v53);
    objc_msgSend_setTitle_(self, v55, v54);
  }

  v56 = objc_msgSend_titleHidden(infoCopy, v49, v50);
  objc_msgSend_setTitleHidden_(self, v57, v56);
  if (objc_msgSend_allowsCaption(self, v58, v59))
  {
    v62 = objc_msgSend_captionInfoIgnoringVisibility(infoCopy, v60, v61);
    v65 = objc_msgSend_replicateForReinsertion(v62, v63, v64);
    objc_msgSend_setCaption_(self, v66, v65);
  }

  v67 = objc_msgSend_captionHidden(infoCopy, v60, v61);
  objc_msgSend_setCaptionHidden_(self, v68, v67);
}

- (id)annotationWithUUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_comment(self, v5, v6);
  v10 = objc_msgSend_annotationUUID(v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, dCopy);

  if (isEqual)
  {
    v15 = objc_msgSend_comment(self, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setPencilAnnotations:(id)annotations
{
  v47 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  if (self->mPencilAnnotations != annotationsCopy)
  {
    obj = annotations;
    objc_msgSend_willModify(self, v5, v6);
    objc_msgSend_willChangeProperty_(self, v8, 551);
    v9 = self->mPencilAnnotations;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = self->mPencilAnnotations;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v41, v46, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v42;
      do
      {
        v17 = 0;
        do
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v41 + 1) + 8 * v17);
          if (objc_msgSend_tsp_isInDocument(self, v13, v14) && (objc_msgSend_containsObject_(annotationsCopy, v19, v18) & 1) == 0)
          {
            v21 = objc_msgSend_context(self, v19, v20);
            objc_msgSend_willBeRemovedFromDocumentWithContext_(v18, v22, v21);
          }

          objc_msgSend_setParent_(v18, v19, 0);
          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v41, v46, 16);
      }

      while (v15);
    }

    objc_storeStrong(&self->mPencilAnnotations, obj);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = annotationsCopy;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v37, v45, 16);
    if (v25)
    {
      v28 = v25;
      v29 = *v38;
      do
      {
        v30 = 0;
        do
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(v23);
          }

          v31 = *(*(&v37 + 1) + 8 * v30);
          if (objc_msgSend_tsp_isInDocument(self, v26, v27) && (objc_msgSend_containsObject_(v9, v32, v31) & 1) == 0)
          {
            v34 = objc_msgSend_context(self, v32, v33);
            objc_msgSend_wasAddedToDocumentWithContext_(v31, v35, v34);
          }

          objc_msgSend_setParent_(v31, v32, self);
          ++v30;
        }

        while (v28 != v30);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v37, v45, 16);
      }

      while (v28);
    }
  }
}

- (void)beginCollectingChanges
{
  if (!self->mChanges || (v3 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDDrawableInfo beginCollectingChanges]"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 1094, 0, "don't try to beginCollectingChanges when we are already collecting"), v6, v4, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9), !self->mChanges))
  {
    v10 = objc_alloc_init(MEMORY[0x277D80AC8]);
    mChanges = self->mChanges;
    self->mChanges = v10;
  }
}

- (void)willChangeProperty:(int)property
{
  v3 = *&property;
  objc_msgSend_willModify(self, a2, *&property);
  mChanges = self->mChanges;

  MEMORY[0x2821F9670](mChanges, sel_addChangedProperty_, v3);
}

- (void)willChangeProperties:(id)properties
{
  propertiesCopy = properties;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_addChangedProperties_(self->mChanges, v6, propertiesCopy);
}

- (id)endCollectingChanges
{
  mChanges = self->mChanges;
  if (!mChanges)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDDrawableInfo endCollectingChanges]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1117, 0, "don't try to endCollectingChanges without calling -beginCollectingChanges first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    mChanges = self->mChanges;
  }

  v11 = mChanges;
  v12 = self->mChanges;
  self->mChanges = 0;

  return mChanges;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v9 = objc_msgSend_comment(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_comment(self, v10, v11);
    objc_msgSend_commentWillBeAddedToDocumentRoot(v12, v13, v14);
  }

  mCaption = self->mCaption;
  if (mCaption)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(mCaption, v10, rootCopy, contextCopy);
  }

  mTitle = self->mTitle;
  if (mTitle)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(mTitle, v10, rootCopy, contextCopy);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = objc_msgSend_pencilAnnotations(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v47, v54, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        v19 = objc_msgSend_context(self, v13, v14);
        objc_msgSend_wasAddedToDocumentWithContext_(v18, v20, v19);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v47, v54, 16);
    }

    while (v15);
  }

  v23 = objc_msgSend_context(rootCopy, v21, v22);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v24, v23);

  mCaption = self->mCaption;
  if (mCaption)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(mCaption, v25, rootCopy, contextCopy);
  }

  mCaptionStandin = self->mCaptionStandin;
  if (mCaptionStandin)
  {
    v29 = objc_msgSend_context(rootCopy, v25, v26);
    objc_msgSend_wasAddedToDocumentWithContext_(mCaptionStandin, v30, v29);
  }

  mTitle = self->mTitle;
  if (mTitle)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(mTitle, v25, rootCopy, contextCopy);
  }

  mTitleStandin = self->mTitleStandin;
  if (mTitleStandin)
  {
    v33 = objc_msgSend_context(self, v25, v26);
    objc_msgSend_wasAddedToDocumentWithContext_(mTitleStandin, v34, v33);
  }

  v35 = objc_msgSend_comment(self, v25, v26);

  if (v35)
  {
    v52 = @"TSDAnnotationsAdded";
    v38 = objc_msgSend_comment(self, v36, v37);
    v51 = v38;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, &v51, 1);
    v53 = v40;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v53, &v52, 1);

    v45 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v43, v44);
    objc_msgSend_postNotificationName_object_userInfo_(v45, v46, @"kTSDAnnotationInvalidatedNotification", rootCopy, v42);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v31[1] = *MEMORY[0x277D85DE8];
  rootCopy = root;
  mCaption = self->mCaption;
  if (mCaption)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(mCaption, v4, rootCopy);
  }

  mCaptionStandin = self->mCaptionStandin;
  if (mCaptionStandin)
  {
    v9 = objc_msgSend_context(rootCopy, v4, v5);
    objc_msgSend_willBeRemovedFromDocumentWithContext_(mCaptionStandin, v10, v9);
  }

  mTitle = self->mTitle;
  if (mTitle)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(mTitle, v4, rootCopy);
  }

  mTitleStandin = self->mTitleStandin;
  if (mTitleStandin)
  {
    v13 = objc_msgSend_context(rootCopy, v4, v5);
    objc_msgSend_willBeRemovedFromDocumentWithContext_(mTitleStandin, v14, v13);
  }

  v15 = objc_msgSend_comment(self, v4, v5);

  if (v15)
  {
    v30 = @"TSDAnnotationsRemoved";
    v18 = objc_msgSend_comment(self, v16, v17);
    v29 = v18;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, &v29, 1);
    v31[0] = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v31, &v30, 1);

    v25 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v23, v24);
    objc_msgSend_postNotificationName_object_userInfo_(v25, v26, @"kTSDAnnotationInvalidatedNotification", rootCopy, v22);
  }

  v27 = objc_msgSend_context(rootCopy, v16, v17);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v28, v27);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v25 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  mCaption = self->mCaption;
  if (mCaption)
  {
    objc_msgSend_wasRemovedFromDocumentRoot_(mCaption, v4, rootCopy);
  }

  mTitle = self->mTitle;
  if (mTitle)
  {
    objc_msgSend_wasRemovedFromDocumentRoot_(mTitle, v4, rootCopy);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_pencilAnnotations(self, v4, v5, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = objc_msgSend_context(self, v12, v13);
        objc_msgSend_willBeRemovedFromDocumentWithContext_(v17, v19, v18);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v14);
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  mapperCopy = mapper;
  stylesheetCopy = stylesheet;
  v10 = objc_msgSend_captionInfoIgnoringVisibility(self, v8, v9);
  objc_msgSend_adoptStylesheet_withMapper_(v10, v11, stylesheetCopy, mapperCopy);

  v15 = objc_msgSend_titleInfoIgnoringVisibility(self, v12, v13);
  objc_msgSend_adoptStylesheet_withMapper_(v15, v14, stylesheetCopy, mapperCopy);
}

- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string
{
  stringCopy = string;
  if (qword_280A4CA90 != -1)
  {
    sub_27680EAD8();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A4CA98, v3, stringCopy);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_unsignedIntegerValue(v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  v4 = MEMORY[0x277CBEA60];
  if (localized)
  {
    v5 = sub_2767B590C(self, a2, localized);
    v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"All at Once", &stru_28857D120, @"TSDrawables");
    v9 = objc_msgSend_arrayWithObject_(v4, v8, v7);
  }

  else
  {
    v9 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], a2, @"All at Once", filter);
  }

  return v9;
}

- (id)descriptionForPasteboard
{
  v29[3] = *MEMORY[0x277D85DE8];
  isAnchoredToText = objc_msgSend_isAnchoredToText(self, a2, v2);
  v7 = objc_msgSend_exteriorTextWrap(self, v5, v6);
  isHTMLWrap = objc_msgSend_isHTMLWrap(v7, v8, v9);

  v28[0] = @"anchoredToText";
  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, isAnchoredToText & ~isHTMLWrap & 1);
  v29[0] = v12;
  v28[1] = @"floatingAboveText";
  v13 = MEMORY[0x277CCABB0];
  isFloatingAboveText = objc_msgSend_isFloatingAboveText(self, v14, v15);
  v18 = objc_msgSend_numberWithBool_(v13, v17, isFloatingAboveText);
  v29[1] = v18;
  v28[2] = @"inlineWithText";
  v19 = MEMORY[0x277CCABB0];
  isInlineWithText = objc_msgSend_isInlineWithText(self, v20, v21);
  v24 = objc_msgSend_numberWithInt_(v19, v23, (isInlineWithText | (isAnchoredToText & isHTMLWrap)) & 1);
  v29[2] = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v29, v28, 3);

  return v26;
}

- (TSDGroupInfo)containingGroup
{
  objc_opt_class();
  v5 = objc_msgSend_parentInfo(self, v3, v4);
  v6 = TSUDynamicCast();

  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = v7;
  if (v6)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = objc_msgSend_containingGroup(v6, v8, v9);
  }

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDDrawableInfo mixingTypeWithObject:context:]", context);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1472, 0, "TSDDrawableInfo does not implement TSDMixing!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 1;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDDrawableInfo mixedObjectWithFraction:ofObject:]", fraction);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1478, 0, "TSDDrawableInfo does not implement TSDMixing!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (double)transformGeometryRatioForTransform:(CGAffineTransform *)transform
{
  a = transform->a;
  d = transform->d;
  return fminf(a, d);
}

- (id)transformedGeometryWithTransform:(CGAffineTransform *)transform inBounds:(CGRect)bounds
{
  TSUCenterOfRect();
  v8 = objc_msgSend_geometry(self, v6, v7);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  v12 = *&transform->c;
  v31[0] = *&transform->a;
  v31[1] = v12;
  v31[2] = *&transform->tx;
  objc_msgSend_transformGeometryRatioForTransform_(self, v13, v31);
  objc_msgSend_size(v11, v14, v15);
  TSUMultiplySizeScalar();
  objc_msgSend_setSize_(v11, v16, v17);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2767B1348;
  v29[3] = &unk_27A6CDE18;
  v29[4] = self;
  v18 = v11;
  v30 = v18;
  objc_msgSend_performBlockWithTemporaryLayout_(self, v19, v29);
  objc_msgSend_transformableObjectAnchorPoint(self, v20, v21);
  objc_msgSend_position(v18, v22, v23);
  TSUSubtractPoints();
  TSUSubtractPoints();
  TSUAddPoints();
  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  objc_msgSend_setPosition_(v18, v24, v25);
  v26 = v30;
  v27 = v18;

  return v18;
}

+ (void)registerClassForUnarchiving:(Class)unarchiving
{
  if (qword_280A4CAA8[0] != -1)
  {
    sub_27680EAEC();
  }

  if (objc_msgSend_conformsToProtocol_(unarchiving, a2, &unk_2885CEEA8))
  {
    v5 = qword_280A4CAA0;

    objc_msgSend_addObject_(v5, v4, unarchiving);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSDDrawableInfo registerClassForUnarchiving:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1565, 0, "drawableClass does not conform to <TSDDrawableInfoCustomUnarchivingSubclassProviding>");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v11, v12);
  }
}

+ (Class)i_drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver
{
  v21 = *MEMORY[0x277D85DE8];
  unarchiverCopy = unarchiver;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = qword_280A4CAA0;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v6);
      }

      classCopy = objc_msgSend_drawableInfoSubclassForClass_unarchiver_(*(*(&v16 + 1) + 8 * v12), v9, class, unarchiverCopy, v16);
      if (classCopy != class)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v16, v20, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    classCopy = class;
  }

  v14 = classCopy;
  return classCopy;
}

- (CGPoint)transformableObjectAnchorPoint
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_center(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)childEnumeratorForUserSearch
{
  v3 = objc_msgSend_titleAndCaptionInfosForUserSearch(self, a2, v2);
  v6 = objc_msgSend_objectEnumerator(v3, v4, v5);

  return v6;
}

- (id)childEnumerator
{
  v3 = objc_msgSend_titleAndCaptionInfos(self, a2, v2);
  v6 = objc_msgSend_objectEnumerator(v3, v4, v5);

  return v6;
}

- (id)titleAndCaptionInfosForUserSearch
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_title(self, v4, v5);
  objc_msgSend_tsu_addNonNilObject_(v3, v7, v6);

  v10 = objc_msgSend_caption(self, v8, v9);
  objc_msgSend_tsu_addNonNilObject_(v3, v11, v10);

  return v3;
}

- (id)titleAndCaptionInfos
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_titleInfoIgnoringVisibility(self, v4, v5);
  objc_msgSend_tsu_addNonNilObject_(v3, v7, v6);

  v10 = objc_msgSend_captionInfoIgnoringVisibility(self, v8, v9);
  objc_msgSend_tsu_addNonNilObject_(v3, v11, v10);

  return v3;
}

- (NSString)displayableDescriptiveName
{
  v4 = objc_msgSend_userDescription(self, a2, v2);
  v7 = v4;
  if (((!v4 || !objc_msgSend_length(v4, v5, v6)) && (objc_msgSend_displayableContainedText(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tsu_stringWithTrimmedWhitespace(v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v7, v8, (v7 = v11) == 0) || !objc_msgSend_length(v7, v5, v6)) && (objc_msgSend_defaultDescriptiveName(self, v5, v6), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tsu_stringWithTrimmedWhitespace(v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v7, v12, (v7 = v15) == 0) || !objc_msgSend_length(v7, v5, v6))
  {
    v16 = objc_msgSend_typeName(self, v5, v6);
    v19 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v16, v17, v18);

    v7 = v19;
  }

  v20 = objc_msgSend_copy(v7, v5, v6);

  return v20;
}

- (NSString)userDescription
{
  v3 = objc_msgSend_accessibilityDescription(self, a2, v2);
  v6 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v3, v4, v5);

  return v6;
}

- (NSString)typeName
{
  v3 = sub_2767B590C(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Item", &stru_28857D120, @"TSDrawables");

  return v5;
}

@end