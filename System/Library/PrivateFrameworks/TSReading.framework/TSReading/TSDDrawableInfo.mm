@interface TSDDrawableInfo
- (BOOL)isAnchoredToText;
- (BOOL)isAttachedToBodyText;
- (BOOL)isInlineWithText;
- (BOOL)isLockable;
- (BOOL)isThemeContent;
- (CGAffineTransform)computeFullTransform;
- (CGAffineTransform)computeLayoutFullTransform;
- (CGAffineTransform)fullTransformInRoot;
- (CGAffineTransform)transformInRoot;
- (CGPoint)transformableObjectAnchorPoint;
- (TSDDrawableInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSDOwningAttachment)owningAttachment;
- (id)boxedObjectForProperty:(int)property;
- (id)containingGroup;
- (id)copyWithContext:(id)context;
- (id)descriptionForPasteboard;
- (id)endCollectingChanges;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)partitioner;
- (id)searchForAnnotationsWithHitBlock:(id)block;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (id)transformedGeometryWithTransform:(CGAffineTransform *)transform inBounds:(CGRect)bounds;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string;
- (void)beginCollectingChanges;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)coalesceChanges:(id)changes;
- (void)dealloc;
- (void)performBlockWithTemporaryLayout:(id)layout;
- (void)setAccessibilityDescription:(id)description;
- (void)setAspectRatioLocked:(BOOL)locked;
- (void)setComment:(id)comment;
- (void)setExteriorTextWrap:(id)wrap;
- (void)setGeometry:(id)geometry;
- (void)setHyperlinkURL:(id)l;
- (void)setInsertionCenterPosition:(CGPoint)position;
- (void)setLocked:(BOOL)locked;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willChangeProperties:(id)properties;
- (void)willChangeProperty:(int)property;
@end

@implementation TSDDrawableInfo

- (TSDDrawableInfo)initWithContext:(id)context geometry:(id)geometry
{
  v7.receiver = self;
  v7.super_class = TSDDrawableInfo;
  v5 = [(TSPObject *)&v7 initWithContext:context];
  if (v5)
  {
    v5->mGeometry = geometry;
    v5->mExteriorTextWrap = [[TSDExteriorTextWrap alloc] initWithIsHTMLWrap:0 type:4 direction:2 fitType:1 margin:12.0 alphaThreshold:0.5];
    v5->mAspectRatioLocked = 0;
  }

  return v5;
}

- (void)dealloc
{
  self->mParentInfoReference = 0;
  self->mParentInfo = 0;

  v3.receiver = self;
  v3.super_class = TSDDrawableInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  if (self->mParentInfo == needed)
  {
    self->mParentInfo = 0;
  }
}

- (void)setComment:(id)comment
{
  [(TSPObject *)self willModify];
  commentCopy = comment;

  self->mComment = comment;
}

- (TSDOwningAttachment)owningAttachment
{
  mOwningAttachment = self->mOwningAttachment;
  [(TSDDrawableInfo *)self parentInfo];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return mOwningAttachment;
  }

  parentInfo = [(TSDDrawableInfo *)self parentInfo];

  return [(TSDContainerInfo *)parentInfo owningAttachment];
}

- (void)setGeometry:(id)geometry
{
  [(TSPObject *)self willModify];
  if (!geometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo setGeometry:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 181, @"invalid nil value for '%s'", "newGeometry"}];
  }

  if (([geometry isEqual:self->mGeometry] & 1) == 0)
  {
    if ([geometry isEqualExceptForPosition:self->mGeometry])
    {
      v7 = 513;
    }

    else
    {
      v7 = 512;
    }

    [(TSDDrawableInfo *)self willChangeProperty:v7];

    self->mGeometry = geometry;

    [(TSDDrawableInfo *)self setMatchesObjectPlaceholderGeometry:0];
  }
}

- (void)setHyperlinkURL:(id)l
{
  if (([l isEqual:self->mHyperlinkURL] & 1) == 0)
  {
    [(TSPObject *)self willModify];
    [(TSDDrawableInfo *)self willChangeProperty:524];

    self->mHyperlinkURL = l;
  }
}

- (void)setAccessibilityDescription:(id)description
{
  if (([description isEqualToString:self->mAccessibilityDescription] & 1) == 0)
  {
    [(TSPObject *)self willModify];

    self->mAccessibilityDescription = [description copy];
  }
}

- (void)setLocked:(BOOL)locked
{
  lockedCopy = locked;
  if (!locked)
  {
    p_mLocked = &self->mLocked;
    if (!self->mLocked)
    {
      return;
    }

    goto LABEL_8;
  }

  if (![(TSDDrawableInfo *)self isLockable])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo setLocked:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 239, @"Invalid attempt to lock an unlockable object."}];
  }

  p_mLocked = &self->mLocked;
  if (self->mLocked != lockedCopy && [(TSDDrawableInfo *)self isLockable])
  {
LABEL_8:
    [(TSPObject *)self willModify];
    *p_mLocked = lockedCopy;
  }
}

- (void)setAspectRatioLocked:(BOOL)locked
{
  if (self->mAspectRatioLocked != locked)
  {
    [(TSDDrawableInfo *)self willChangeProperty:525];
    [(TSPObject *)self willModify];
    self->mAspectRatioLocked = locked;
  }
}

- (void)performBlockWithTemporaryLayout:(id)layout
{
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:self];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TSDDrawableInfo_performBlockWithTemporaryLayout___block_invoke;
  v6[3] = &unk_279D48520;
  v6[4] = self;
  v6[5] = layout;
  [TSDLayoutController temporaryLayoutControllerForInfos:v5 useInBlock:v6];
}

uint64_t __51__TSDDrawableInfo_performBlockWithTemporaryLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 layoutForInfo:*(a1 + 32)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (CGAffineTransform)computeLayoutFullTransform
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5010000000;
  v12 = &unk_26CAC6BB9;
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *MEMORY[0x277CBF2C0];
  v14 = v4;
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__TSDDrawableInfo_computeLayoutFullTransform__block_invoke;
  v8[3] = &unk_279D48548;
  v8[4] = &v9;
  [(TSDDrawableInfo *)self performBlockWithTemporaryLayout:v8];
  v5 = v10;
  v6 = *(v10 + 3);
  *&retstr->a = *(v10 + 2);
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 4);
  _Block_object_dispose(&v9, 8);
  return result;
}

__n128 __45__TSDDrawableInfo_computeLayoutFullTransform__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 geometry];
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  v5 = *(*(a1 + 32) + 8);
  v7 = v26;
  v6 = v27;
  v5[2] = v25;
  v5[3] = v7;
  v5[4] = v6;
  [a2 boundsForStandardKnobs];
  v9 = v8;
  v11 = v10;
  v12 = *(*(a1 + 32) + 8);
  CGAffineTransformMakeTranslation(&t1, v13, v14);
  v15 = v12[3];
  *&v22.a = v12[2];
  *&v22.c = v15;
  *&v22.tx = v12[4];
  CGAffineTransformConcat(&v24, &t1, &v22);
  v17 = *&v24.c;
  v16 = *&v24.tx;
  v12[2] = *&v24.a;
  v12[3] = v17;
  v12[4] = v16;
  v18 = *(*(a1 + 32) + 8);
  v19 = v18[3];
  *&t1.a = v18[2];
  *&t1.c = v19;
  *&t1.tx = v18[4];
  CGAffineTransformScale(&v24, &t1, v9, v11);
  v21 = *&v24.c;
  result = *&v24.tx;
  v18[2] = *&v24.a;
  v18[3] = v21;
  v18[4] = result;
  return result;
}

- (CGAffineTransform)computeFullTransform
{
  result = [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] widthValid];
  if (!result || (result = [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] heightValid], (result & 1) == 0))
  {
    if (self)
    {
      result = [(TSDDrawableInfo *)self computeLayoutFullTransform];
      goto LABEL_8;
    }

LABEL_7:
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    goto LABEL_8;
  }

  result = [(TSDDrawableInfo *)self geometry];
  if (!result)
  {
    goto LABEL_7;
  }

  result = [(CGAffineTransform *)result fullTransform];
LABEL_8:
  v6 = v8;
  *&retstr->a = v7;
  *&retstr->c = v6;
  *&retstr->tx = v9;
  return result;
}

- (CGAffineTransform)fullTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  geometry = [(TSDDrawableInfo *)self geometry];
  if (geometry)
  {
    [(TSDInfoGeometry *)geometry fullTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  objc_opt_class();
  [(TSDDrawableInfo *)self parentInfo];
  result = TSUDynamicCast();
  if (result)
  {
    [(CGAffineTransform *)result transformInRoot];
    v7 = *&retstr->c;
    *&v9.a = *&retstr->a;
    *&v9.c = v7;
    *&v9.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v11, &v9, &t2);
    v8 = *&v11.c;
    *&retstr->a = *&v11.a;
    *&retstr->c = v8;
    *&retstr->tx = *&v11.tx;
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
  if (self)
  {
    selfCopy2 = self;
    do
    {
      geometry = [(CGAffineTransform *)selfCopy2 geometry];
      if (geometry)
      {
        [geometry transform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v8 = *&retstr->c;
      *&v9.a = *&retstr->a;
      *&v9.c = v8;
      *&v9.tx = *&retstr->tx;
      CGAffineTransformConcat(retstr, &v9, &t2);
      objc_opt_class();
      [(CGAffineTransform *)selfCopy2 parentInfo];
      self = TSUDynamicCast();
      selfCopy2 = self;
    }

    while (self);
  }

  return self;
}

- (BOOL)isAnchoredToText
{
  owningAttachmentNoRecurse = [(TSDDrawableInfo *)self owningAttachmentNoRecurse];

  return [(TSDOwningAttachment *)owningAttachmentNoRecurse isAnchored];
}

- (BOOL)isInlineWithText
{
  if ([(TSDDrawableInfo *)self isFloatingAboveText])
  {
    return 0;
  }

  else
  {
    return ![(TSDDrawableInfo *)self isAnchoredToText];
  }
}

- (BOOL)isAttachedToBodyText
{
  owningAttachmentNoRecurse = [(TSDDrawableInfo *)self owningAttachmentNoRecurse];

  return [(TSDOwningAttachment *)owningAttachmentNoRecurse isAttachedToBodyText];
}

- (void)setExteriorTextWrap:(id)wrap
{
  [(TSPObject *)self willModify];
  if (!wrap)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo setExteriorTextWrap:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 340, @"invalid nil value for '%s'", "exteriorTextWrap"}];
  }

  if (([wrap isEqual:self->mExteriorTextWrap] & 1) == 0)
  {
    [(TSDDrawableInfo *)self willChangeProperty:521];

    self->mExteriorTextWrap = [wrap copy];
  }
}

- (BOOL)isThemeContent
{
  parentInfo = [(TSDDrawableInfo *)self parentInfo];

  return [(TSDContainerInfo *)parentInfo isThemeContent];
}

- (id)partitioner
{
  if (![objc_opt_class() canPartition])
  {
    return 0;
  }

  mDefaultPartitioner = self->mDefaultPartitioner;
  if (!mDefaultPartitioner)
  {
    mDefaultPartitioner = [[TSDDefaultPartitioner alloc] initWithInfo:self];
    self->mDefaultPartitioner = mDefaultPartitioner;
  }

  v4 = mDefaultPartitioner;

  return v4;
}

- (BOOL)isLockable
{
  isFloatingAboveText = [(TSDDrawableInfo *)self isFloatingAboveText];
  if (isFloatingAboveText)
  {
    LOBYTE(isFloatingAboveText) = [(TSDDrawableInfo *)self containingGroup]== 0;
  }

  return isFloatingAboveText;
}

- (id)copyWithContext:(id)context
{
  v4 = [objc_alloc(objc_opt_class()) initWithContext:context];
  if (v4)
  {
    *(v4 + 48) = [(TSDInfoGeometry *)self->mGeometry copy];
    *(v4 + 88) = [(TSDExteriorTextWrap *)self->mExteriorTextWrap copy];
    *(v4 + 72) = self->mLocked;
    *(v4 + 73) = self->mAspectRatioLocked;
    *(v4 + 128) = [(NSString *)self->mAccessibilityDescription copy];
    *(v4 + 136) = [(NSMutableDictionary *)self->mAccessibilityDescriptions mutableCopy];
    *(v4 + 112) = [(NSURL *)self->mHyperlinkURL copy];
  }

  return v4;
}

- (id)searchForAnnotationsWithHitBlock:(id)block
{
  if ([(TSDDrawableInfo *)self comment])
  {
    v5 = [TSDCanvasSearchReference searchReferenceWithDrawableInfo:self];
    [(TSDCanvasSearchReference *)v5 setAnnotation:[(TSDDrawableInfo *)self comment]];
    (*(block + 2))(block, v5);
  }

  return 0;
}

- (void)beginCollectingChanges
{
  if (!self->mChanges || (v3 = [MEMORY[0x277D6C290] currentHandler], v4 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDDrawableInfo beginCollectingChanges]"), objc_msgSend(v3, "handleFailureInFunction:file:lineNumber:description:", v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 489, @"don't try to beginCollectingChanges when we are already collecting"), !self->mChanges))
  {
    self->mChanges = objc_alloc_init(TSSPropertySetChangeDetails);
  }
}

- (void)willChangeProperty:(int)property
{
  v3 = *&property;
  [(TSPObject *)self willModify];
  mChanges = self->mChanges;

  [(TSSPropertySetChangeDetails *)mChanges addChangedProperty:v3];
}

- (void)willChangeProperties:(id)properties
{
  [(TSPObject *)self willModify];
  mChanges = self->mChanges;

  [(TSSPropertySetChangeDetails *)mChanges addChangedProperties:properties];
}

- (id)endCollectingChanges
{
  mChanges = self->mChanges;
  if (!mChanges)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo endCollectingChanges]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 515, @"don't try to endCollectingChanges without calling -beginCollectingChanges first"}];
    mChanges = self->mChanges;
  }

  self->mChanges = 0;

  return mChanges;
}

- (void)coalesceChanges:(id)changes
{
  v4 = [changes count];
  if (v4 >= 2)
  {
    v5 = v4;
    v6 = objc_alloc_init(MEMORY[0x277D6C300]);
    v7 = v5 - 1;
    do
    {
      v8 = [changes objectAtIndex:v7];
      v9 = [v6 objectForKey:{objc_msgSend(v8, "kind")}];
      objc_opt_class();
      [v8 details];
      v10 = TSUDynamicCast();
      if (v10)
      {
        if (v9)
        {
          [v9 addChangedProperties:{objc_msgSend(v10, "changedProperties")}];
          [changes removeObjectAtIndex:v7];
        }

        else
        {
          [v6 setObject:v10 forKey:{objc_msgSend(v8, "kind")}];
        }
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  if ([(TSDDrawableInfo *)self comment:root])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:root];
  }
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  if ([(TSDDrawableInfo *)self comment])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:root];
  }
}

- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string
{
  if (textureDeliveryStyleFromDeliveryString__onceToken != -1)
  {
    [TSDDrawableInfo textureDeliveryStyleFromDeliveryString:];
  }

  result = [textureDeliveryStyleFromDeliveryString__sDeliveryStyleMap objectForKeyedSubscript:string];
  if (result)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  v4 = MEMORY[0x277CBEA60];
  if (localized)
  {
    v5 = [TSDBundle() localizedStringForKey:@"All at Once" value:&stru_287D36338 table:@"TSDrawables"];
  }

  else
  {
    v5 = @"All at Once";
  }

  return [v4 arrayWithObject:v5];
}

- (id)descriptionForPasteboard
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"anchoredToText";
  v5[0] = [MEMORY[0x277CCABB0] numberWithBool:{-[TSDDrawableInfo isAnchoredToText](self, "isAnchoredToText")}];
  v4[1] = @"floatingAboveText";
  v5[1] = [MEMORY[0x277CCABB0] numberWithBool:{-[TSDDrawableInfo isFloatingAboveText](self, "isFloatingAboveText")}];
  v4[2] = @"inlineWithText";
  v5[2] = [MEMORY[0x277CCABB0] numberWithBool:{-[TSDDrawableInfo isInlineWithText](self, "isInlineWithText")}];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)containingGroup
{
  objc_opt_class();
  [(TSDDrawableInfo *)self parentInfo];
  v3 = TSUDynamicCast();
  objc_opt_class();
  result = TSUDynamicCast();
  if (v3)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return [v3 containingGroup];
  }

  return result;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo mixingTypeWithObject:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 717, @"TSDDrawableInfo does not implement TSDMixing!"}];
  return 1;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo mixedObjectWithFraction:ofObject:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableInfo.m"), 724, @"TSDDrawableInfo does not implement TSDMixing!"}];
  return 0;
}

- (id)transformedGeometryWithTransform:(CGAffineTransform *)transform inBounds:(CGRect)bounds
{
  v6 = TSDCenterOfRect(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
  v28 = v6 / transform->a;
  v7 = [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] mutableCopy];
  a = transform->a;
  d = transform->d;
  v10 = fminf(a, d);
  [v7 size];
  [v7 setSize:{TSDMultiplySizeScalar(v11, v12, v10)}];
  [(TSDDrawableInfo *)self transformableObjectAnchorPoint];
  v14 = v13;
  v16 = v15;
  [v7 position];
  v18 = TSDSubtractPoints(v14, v16, v17);
  v20 = v19;
  v21 = TSDSubtractPoints(v14, v16, v28);
  v23 = TSDAddPoints(v21 * v10, v22 * v10, v6);
  v25 = v24;
  v26 = TSDMultiplyPointScalar(v18, v20, v10);
  [v7 setPosition:{TSDSubtractPoints(v23, v25, v26)}];

  return v7;
}

- (CGPoint)transformableObjectAnchorPoint
{
  geometry = [(TSDDrawableInfo *)self geometry];

  [(TSDInfoGeometry *)geometry center];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setInsertionCenterPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] mutableCopy];
  [v6 setCenter:{x, y}];
  [(TSDDrawableInfo *)self setGeometry:v6];
}

- (id)boxedObjectForProperty:(int)property
{
  v3 = *&property;
  v5 = String(property);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [(TSDDrawableInfo *)self floatValueForProperty:v3];
      if (v12 == INFINITY)
      {
        return 0;
      }

      v13 = MEMORY[0x277CCABB0];

      return [v13 numberWithFloat:?];
    }

    else
    {
      if (v5 != 3)
      {
        return 0;
      }

      [(TSDDrawableInfo *)self doubleValueForProperty:v3];
      if (v10 == INFINITY)
      {
        return 0;
      }

      v11 = MEMORY[0x277CCABB0];

      return [v11 numberWithDouble:?];
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [(TSDDrawableInfo *)self intValueForProperty:v3];
        if (v6 != 0x80000000)
        {
          v7 = v6;
          v8 = MEMORY[0x277CCABB0];

          return [v8 numberWithInt:v7];
        }
      }

      return 0;
    }

    return [(TSDDrawableInfo *)self objectForProperty:v3];
  }
}

- (id)objectForProperty:(int)property
{
  if (property == 524)
  {
    return [(TSDDrawableInfo *)self hyperlinkURL];
  }

  if (property == 512)
  {
    return [(TSDDrawableInfo *)self geometry];
  }

  return 0;
}

@end