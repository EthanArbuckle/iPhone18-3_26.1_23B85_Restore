@interface TSDLayout
+ (id)descendentWrappablesOfLayout:(id)a3;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)isBeingTransformed;
- (BOOL)isInGroup;
- (BOOL)isInTopLevelContainerForEditing;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldProvideSizingGuides;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3;
- (CGAffineTransform)originalPureTransformInRoot;
- (CGAffineTransform)originalTransformForProvidingGuides;
- (CGAffineTransform)originalTransformInRoot;
- (CGAffineTransform)pureTransformInRoot;
- (CGPoint)alignmentFrameOriginForFixingInterimPosition;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)centerForConnecting;
- (CGPoint)centerForRotation;
- (CGPoint)infoGeometryPositionForCurrentAttachedLayoutGeometry;
- (CGRect)boundsForStandardKnobs;
- (CGRect)i_takeDirtyRect;
- (CGRect)initialBoundsForStandardKnobs;
- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)a3;
- (CGRect)rectForSelection:(id)a3;
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (CGSize)maximumSizeForChildLayout:(id)a3;
- (CGSize)minimumSize;
- (TSDLayout)initWithInfo:(id)a3;
- (TSDLayoutGeometry)dynamicGeometry;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withGeometry:(id)a4;
- (id)childSearchTargets;
- (id)computeInfoGeometryFromLayoutGeometry:(id)a3;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)i_layoutGeometryProvider;
- (id)i_wrapPath;
- (id)initialInfoGeometry;
- (id)inspectorGeometry;
- (id)layoutController;
- (id)layoutGeometryFromInfo;
- (id)layoutGeometryFromProvider;
- (id)originalPureGeometry;
- (id)pureGeometry;
- (id)pureGeometryInRoot;
- (id)rootLayout;
- (void)addConnectedLayout:(id)a3;
- (void)beginDrag;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)dragBy:(CGPoint)a3;
- (void)dragByUnscaled:(CGPoint)a3;
- (void)endDynamicOperation;
- (void)i_accumulateLayoutsIntoSet:(id)a3;
- (void)i_setBaseCapturedAlignmentFrameOriginForInline;
- (void)invalidate;
- (void)invalidateChildren;
- (void)invalidateFrame;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)layoutSearchForAnnotationWithHitBlock:(id)a3;
- (void)p_invalidateConnectedLayouts;
- (void)p_recursiveInvalidate;
- (void)p_registerWithLayoutController:(id)a3;
- (void)p_unregisterWithLayoutController:(id)a3;
- (void)processChangedProperty:(int)a3;
- (void)processChanges:(id)a3;
- (void)setAdjustedInterimPositionX:(double)a3;
- (void)setAdjustedInterimPositionY:(double)a3;
- (void)setDynamicGeometry:(id)a3;
- (void)setNeedsDisplay;
- (void)setParent:(id)a3;
- (void)unregisterFromLayoutController;
- (void)validate;
- (void)validateFromLastInterimPosition;
@end

@implementation TSDLayout

- (TSDLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDLayout;
  v4 = [(TSDAbstractLayout *)&v6 init];
  if (v4)
  {
    v4->mInfo = a3;
    *&v4->mInvalidFlags |= 3u;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDLayout;
  [(TSDAbstractLayout *)&v3 dealloc];
}

- (TSDLayoutGeometry)dynamicGeometry
{
  if (self->mBaseGeometry)
  {
    return [(TSDAbstractLayout *)self geometry];
  }

  else
  {
    return 0;
  }
}

- (void)setDynamicGeometry:(id)a3
{
  if (!self->mBaseGeometry)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout setDynamicGeometry:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 126, @"setting dynamic geometry when not in dynamic operation"}];
  }

  [(TSDAbstractLayout *)self setGeometry:a3];
  v7 = [-[TSDLayout layoutController](self "layoutController")];

  [v7 layoutInvalidated];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  [-[TSDLayout layoutController](self "layoutController")];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(TSDLayout *)self dependentLayouts];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(TSDLayout *)self p_invalidateConnectedLayouts];
}

- (void)invalidatePosition
{
  *&self->mInvalidFlags |= 1u;
  self->mHasFinishedIterativePositioning = 0;
  [(TSDLayout *)self invalidate];
}

- (void)invalidateSize
{
  v13 = *MEMORY[0x277D85DE8];
  *&self->mInvalidFlags |= 2u;
  [(TSDLayout *)self invalidate];
  if ([(TSDLayout *)self dependentsRelyOnSize])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(TSDLayout *)self dependentLayouts];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) invalidateFrame];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)invalidateFrame
{
  [(TSDLayout *)self invalidateSize];

  [(TSDLayout *)self invalidatePosition];
}

- (void)invalidateChildren
{
  v3 = [(TSDLayout *)self layoutController];

  [v3 invalidateChildrenOfLayout:self];
}

- (void)unregisterFromLayoutController
{
  if ([(TSDLayout *)self layoutController])
  {
    v3 = [(TSDLayout *)self layoutController];

    [(TSDLayout *)self p_unregisterWithLayoutController:v3];
  }
}

- (void)setParent:(id)a3
{
  if ([(TSDAbstractLayout *)self parent]!= a3)
  {
    [(TSDLayout *)self parentWillChangeTo:a3];
    v5 = [(TSDAbstractLayout *)self root];
    v6 = [a3 root];
    if (v5 == v6)
    {
      v9.receiver = self;
      v9.super_class = TSDLayout;
      [(TSDAbstractLayout *)&v9 setParent:a3];
    }

    else
    {
      v7 = [(TSDLayout *)self layoutController];
      if (v7)
      {
        [(TSDLayout *)self p_unregisterWithLayoutController:v7];
      }

      v9.receiver = self;
      v9.super_class = TSDLayout;
      [(TSDAbstractLayout *)&v9 setParent:a3];
      v8 = [(TSDLayout *)self layoutController];
      if (v8)
      {
        [(TSDLayout *)self p_registerWithLayoutController:v8];
        [(TSDLayout *)self p_recursiveInvalidate];
      }
    }

    [(TSDLayout *)self parentDidChange];
    if (v6)
    {
      [(TSDLayout *)self p_invalidateConnectedLayouts];
    }
  }
}

- (id)rootLayout
{
  objc_opt_class();
  [(TSDAbstractLayout *)self root];

  return TSUDynamicCast();
}

- (id)layoutController
{
  v2 = [(TSDLayout *)self rootLayout];

  return [v2 layoutController];
}

- (void)validate
{
  if ([(TSDLayout *)self invalidGeometry])
  {
    [(TSDLayout *)self capturedInfoPositionForAttachment];
    self->mCapturedInfoGeometryPositionForInline.x = v3;
    self->mCapturedInfoGeometryPositionForInline.y = v4;
    [(TSDAbstractLayout *)self setGeometry:[(TSDLayout *)self computeLayoutGeometry]];
    [(TSDAbstractLayout *)self alignmentFrame];
    self->mCapturedAlignmentFrameOriginForInline.x = v5;
    self->mCapturedAlignmentFrameOriginForInline.y = v6;
    *&self->mInvalidFlags &= 0xFCu;
  }
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = [(TSDInfo *)[(TSDLayout *)self info] geometry];

  [v2 position];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)i_layoutGeometryProvider
{
  v3 = [(TSDLayout *)self layoutController];

  return [v3 layoutGeometryProviderForLayout:self];
}

- (id)layoutGeometryFromProvider
{
  v3 = [(TSDLayout *)self i_layoutGeometryProvider];
  if (!v3 || (result = [v3 layoutGeometryForLayout:self]) == 0)
  {

    return [(TSDLayout *)self layoutGeometryFromInfo];
  }

  return result;
}

- (id)layoutGeometryFromInfo
{
  if (!self->mInfo)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout layoutGeometryFromInfo]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 345, @"Layouts must either override computeLayoutGeometry, or have a non-nil info to query for geometry"}];
  }

  v5 = [[TSDLayoutGeometry alloc] initWithInfoGeometry:[(TSDInfo *)[(TSDLayout *)self info] geometry]];

  return v5;
}

- (id)computeInfoGeometryFromLayoutGeometry:(id)a3
{
  if (a3)
  {
    [a3 fullTransform];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return [TSDInfoGeometry geometryFromFullTransform:v4];
}

- (void)processChanges:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        [v9 details];
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = [v10 changedProperties];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __28__TSDLayout_processChanges___block_invoke;
          v12[3] = &unk_279D47F10;
          v12[4] = self;
          [v11 enumeratePropertiesUsingBlock:v12];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (CGPoint)infoGeometryPositionForCurrentAttachedLayoutGeometry
{
  if (![(TSDInfo *)[(TSDLayout *)self info] owningAttachment])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout infoGeometryPositionForCurrentAttachedLayoutGeometry]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 376, @"don't use unless the object is attached"}];
  }

  x = self->mCapturedAlignmentFrameOriginForInline.x;
  v6 = self->mCapturedInfoGeometryPositionForInline.x;
  y = self->mCapturedInfoGeometryPositionForInline.y;
  [(TSDAbstractLayout *)self alignmentFrame];
  v9 = v8;
  v11 = v10;
  v12 = TSDSubtractPoints(v6, y, x);

  v13 = TSDAddPoints(v9, v11, v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)isInGroup
{
  v2 = [(TSDAbstractLayout *)self parent];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  do
  {
    v4 = [(TSDAbstractLayout *)v3 isMemberOfClass:objc_opt_class()];
    if (v4)
    {
      break;
    }

    v3 = [(TSDAbstractLayout *)v3 parent];
  }

  while (v3);
  return v4;
}

- (BOOL)isInTopLevelContainerForEditing
{
  v3 = [objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  v4 = [(TSDAbstractLayout *)self parent];
  v5 = [objc_msgSend(v3 "topLevelContainerRepForEditing")];
  result = 1;
  if (v4 && v4 != v5)
  {
    do
    {
      v7 = [(TSDAbstractLayout *)v4 isMemberOfClass:objc_opt_class()];
      if (v7)
      {
        break;
      }

      v8 = [(TSDAbstractLayout *)v4 parent];
      if (!v8)
      {
        break;
      }

      v4 = v8;
    }

    while (v8 != v5);
    return v7 ^ 1;
  }

  return result;
}

- (CGPoint)alignmentFrameOriginForFixingInterimPosition
{
  if (self->mLayoutState == 2)
  {
    x = self->mBaseAlignmentFrameOriginForFixingInterimPosition.x;
    y = self->mBaseAlignmentFrameOriginForFixingInterimPosition.y;
  }

  else if ([(TSDLayout *)self i_useBaseCapturedAlignmentFrameOriginForInline])
  {
    v5 = TSDSubtractPoints(self->mCapturedAlignmentFrameOriginForInline.x, self->mCapturedAlignmentFrameOriginForInline.y, self->mBaseCapturedAlignmentFrameOriginForInline.x);
    v9.receiver = self;
    v9.super_class = TSDLayout;
    [(TSDAbstractLayout *)&v9 alignmentFrameOriginForFixingInterimPosition];
    x = TSDSubtractPoints(v6, v7, v5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSDLayout;
    [(TSDAbstractLayout *)&v8 alignmentFrameOriginForFixingInterimPosition];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)i_setBaseCapturedAlignmentFrameOriginForInline
{
  if ([(TSDInfo *)[(TSDLayout *)self info] owningAttachment])
  {
    self->mBaseCapturedAlignmentFrameOriginForInline = self->mCapturedAlignmentFrameOriginForInline;
  }
}

- (void)beginDynamicOperation
{
  p_mInitialBoundsForStandardKnobs = &self->mInitialBoundsForStandardKnobs;
  [(TSDLayout *)self boundsForStandardKnobs];
  p_mInitialBoundsForStandardKnobs->origin.x = v4;
  p_mInitialBoundsForStandardKnobs->origin.y = v5;
  p_mInitialBoundsForStandardKnobs->size.width = v6;
  p_mInitialBoundsForStandardKnobs->size.height = v7;
  mBaseGeometry = self->mBaseGeometry;
  if (mBaseGeometry)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout beginDynamicOperation]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 503, @"beginning dynamic operation when there is already a base geometry"}];
    mBaseGeometry = self->mBaseGeometry;
  }

  self->mBaseGeometry = [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] copy];
  self->mLayoutState = 1;
}

- (void)endDynamicOperation
{
  if (self->mLayoutState == 2)
  {
    [(TSDLayout *)self invalidateFrame];
  }

  mBaseGeometry = self->mBaseGeometry;
  if (mBaseGeometry)
  {

    self->mBaseGeometry = 0;
  }

  self->mLayoutState = 0;
}

- (BOOL)isBeingTransformed
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  v4 = [v3 dynamicOperationController];
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [objc_msgSend(v3 dynamicOperationController];
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) layout] == self)
          {
            LOBYTE(v4) = 1;
            return v4;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v4) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  return v4;
}

- (void)beginDrag
{
  p_mBaseAlignmentFrameOriginForFixingInterimPosition = &self->mBaseAlignmentFrameOriginForFixingInterimPosition;
  [(TSDLayout *)self alignmentFrameOriginForFixingInterimPosition];
  p_mBaseAlignmentFrameOriginForFixingInterimPosition->x = v4;
  p_mBaseAlignmentFrameOriginForFixingInterimPosition->y = v5;
  self->mLayoutState = 2;
}

- (void)dragByUnscaled:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(TSDAbstractLayout *)self parent])
  {
    v6 = [(TSDAbstractLayout *)self parent];
    if (v6)
    {
      [(TSDAbstractLayout *)v6 transformInRoot];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    CGAffineTransformInvert(&v9, &v8);
    x = TSDDeltaApplyAffineTransform(&v9, x, y);
    y = v7;
  }

  [(TSDLayout *)self dragBy:x, y, *&v8.a, *&v8.c, *&v8.tx];
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    if (!self->mBaseGeometry)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout dragBy:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 571, @"invalid nil value for '%s'", "mBaseGeometry"}];
    }

    [(TSDLayout *)self setDynamicGeometry:[(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] geometryByTranslatingBy:x, y]];
    [(TSDLayout *)self p_invalidateConnectedLayouts];
    v9 = [-[TSDLayout layoutController](self "layoutController")];

    [v9 layoutInvalidated];
  }
}

- (CGAffineTransform)originalTransformInRoot
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  if (self)
  {
    v6 = self;
    do
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if ([v7 originalGeometry])
      {
        v8 = [v7 originalGeometry];
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = [(CGAffineTransform *)v6 geometry];
        if (!v8)
        {
LABEL_7:
          v13 = 0u;
          v14 = 0u;
          v12 = 0u;
          goto LABEL_8;
        }
      }

      v9 = *&retstr->c;
      v11[0] = *&retstr->a;
      v11[1] = v9;
      v11[2] = *&retstr->tx;
      [v8 transformByConcatenatingTransformTo:v11];
LABEL_8:
      v10 = v13;
      *&retstr->a = v12;
      *&retstr->c = v10;
      *&retstr->tx = v14;
      self = [(CGAffineTransform *)v6 parent];
      v6 = self;
    }

    while (self);
  }

  return self;
}

- (CGAffineTransform)originalTransformForProvidingGuides
{
  if (self)
  {
    return [(CGAffineTransform *)self originalTransformInRoot];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3
{
  v7 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  result = [v7 heightValid];
  if (result && (result = [v7 widthValid], result) && (result = objc_msgSend(v7, "size"), v9 != 0.0) && (result = objc_msgSend(v7, "size"), v10 != 0.0))
  {
    memset(&v18, 0, sizeof(v18));
    v12 = [(TSDLayout *)self originalPureGeometry];
    if (v12)
    {
      [v12 fullTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformInvert(&t1, &t2);
    v13 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
    if (v13)
    {
      [v13 fullTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v18, &t1, &t2);
    t1 = v18;
    CGAffineTransformInvert(&t2, &t1);
    v14 = *&a4->c;
    *&v15.a = *&a4->a;
    *&v15.c = v14;
    *&v15.tx = *&a4->tx;
    CGAffineTransformConcat(&t1, &t2, &v15);
    t2 = v18;
    return CGAffineTransformConcat(retstr, &t1, &t2);
  }

  else
  {
    v11 = *&a4->c;
    *&retstr->a = *&a4->a;
    *&retstr->c = v11;
    *&retstr->tx = *&a4->tx;
  }

  return result;
}

- (BOOL)resizeMayChangeAspectRatio
{
  objc_opt_class();
  [(TSDLayout *)self info];
  v3 = TSUDynamicCast();
  if (v3)
  {
    return [v3 aspectRatioLocked] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  objc_opt_class();
  [(TSDLayout *)self info];
  return [TSUDynamicCast() isLocked] ^ 1;
}

- (CGSize)minimumSize
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maximumSizeForChildLayout:(id)a3
{
  v3 = INFINITY;
  v4 = INFINITY;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)initialBoundsForStandardKnobs
{
  x = self->mInitialBoundsForStandardKnobs.origin.x;
  y = self->mInitialBoundsForStandardKnobs.origin.y;
  width = self->mInitialBoundsForStandardKnobs.size.width;
  height = self->mInitialBoundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)initialInfoGeometry
{
  v2 = [(TSDLayout *)self info];

  return [(TSDInfo *)v2 geometry];
}

- (id)originalPureGeometry
{
  [(TSDLayout *)self initialBoundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v17, 0, sizeof(v17));
  v11 = [(TSDLayout *)self originalGeometry];
  if (v11)
  {
    [(TSDLayoutGeometry *)v11 transform];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGAffineTransformMakeTranslation(&t1, v4, v6);
  v14 = v17;
  CGAffineTransformConcat(&v16, &t1, &v14);
  v17 = v16;
  v12 = [TSDLayoutGeometry alloc];
  v16 = v17;
  return [(TSDLayoutGeometry *)v12 initWithSize:&v16 transform:v8, v10];
}

- (id)pureGeometry
{
  [(TSDLayout *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v17, 0, sizeof(v17));
  v11 = [(TSDAbstractLayout *)self geometry];
  if (v11)
  {
    [(TSDLayoutGeometry *)v11 transform];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGAffineTransformMakeTranslation(&t1, v4, v6);
  v14 = v17;
  CGAffineTransformConcat(&v16, &t1, &v14);
  v17 = v16;
  v12 = [TSDLayoutGeometry alloc];
  v16 = v17;
  return [(TSDLayoutGeometry *)v12 initWithSize:&v16 transform:v8, v10];
}

- (id)pureGeometryInRoot
{
  v3 = [(TSDLayout *)self pureGeometry];

  return [(TSDAbstractLayout *)self geometryInRoot:v3];
}

- (id)inspectorGeometry
{
  v3 = [(TSDLayout *)self pureGeometry];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *MEMORY[0x277CBF2C0];
  v14 = v4;
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  v5 = [(TSDAbstractLayout *)self parent];
  if (v5)
  {
    v6 = v5;
    do
    {
      if ([(TSDAbstractLayout *)v6 isRootLayoutForInspectorGeometry])
      {
        break;
      }

      v7 = [(TSDAbstractLayout *)v6 geometry];
      if (v7)
      {
        v9[0] = v13;
        v9[1] = v14;
        v9[2] = v15;
        [(TSDLayoutGeometry *)v7 transformByConcatenatingTransformTo:v9];
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
      }

      v13 = v10;
      v14 = v11;
      v15 = v12;
      v6 = [(TSDAbstractLayout *)v6 parent];
    }

    while (v6);
  }

  v10 = v13;
  v11 = v14;
  v12 = v15;
  return [v3 geometryByTransformingBy:&v10];
}

- (CGAffineTransform)pureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(TSDLayout *)self pureGeometry];
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = [(TSDAbstractLayout *)self parent];
  if (result)
  {
    v7 = result;
    do
    {
      v8 = [(CGAffineTransform *)v7 geometry];
      if (v8)
      {
        v9 = *&retstr->c;
        v11[0] = *&retstr->a;
        v11[1] = v9;
        v11[2] = *&retstr->tx;
        [v8 transformByConcatenatingTransformTo:v11];
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
        v12 = 0u;
      }

      v10 = v13;
      *&retstr->a = v12;
      *&retstr->c = v10;
      *&retstr->tx = v14;
      result = [(CGAffineTransform *)v7 parent];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (CGAffineTransform)originalPureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(TSDLayout *)self originalPureGeometry];
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = [(TSDAbstractLayout *)self parent];
  if (result)
  {
    v7 = result;
    do
    {
      v8 = [(CGAffineTransform *)v7 geometry];
      if (v8)
      {
        v9 = *&retstr->c;
        v11[0] = *&retstr->a;
        v11[1] = v9;
        v11[2] = *&retstr->tx;
        [v8 transformByConcatenatingTransformTo:v11];
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
        v12 = 0u;
      }

      v10 = v13;
      *&retstr->a = v12;
      *&retstr->c = v10;
      *&retstr->tx = v14;
      result = [(CGAffineTransform *)v7 parent];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)validateFromLastInterimPosition
{
  [-[TSDLayout layoutController](self "layoutController")];
  if ([(TSDInfo *)[(TSDLayout *)self info] owningAttachment])
  {

    [(TSDAbstractLayout *)self fixTransformFromLastInterimPosition];
  }
}

- (CGRect)boundsForStandardKnobs
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];

  v2 = TSDRectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)centerForRotation
{
  [(TSDLayout *)self boundsForStandardKnobs];

  v6 = TSDCenterOfRect(v2, v3, v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)centerForConnecting
{
  [(TSDLayout *)self centerForRotation];
  v11 = v4;
  v12 = v3;
  v5 = [(TSDAbstractLayout *)self geometry];
  if (v5)
  {
    [(TSDLayoutGeometry *)v5 transform];
    v6 = v13;
    v7 = v14;
    v8 = v15;
  }

  else
  {
    v8 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  v9 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, v11), v6, v12));
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (id)computeLayoutGeometry
{
  v3 = [(TSDLayout *)self layoutGeometryFromProvider];
  objc_opt_class();
  [(TSDAbstractLayout *)self parent];
  if (TSUDynamicCast() && [(TSDLayout *)self layoutState]!= 4)
  {
    if ([(TSDLayout *)self layoutState]== 3)
    {
      v4 = [TSDLayoutGeometry alloc];
      [-[TSDLayout originalPureGeometry](self "originalPureGeometry")];
      v6 = v5;
      v8 = v7;
      if (v3)
      {
        [v3 transform];
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
      }

      v15 = v4;
    }

    else
    {
      [v3 size];
      [(TSDLayout *)self scaleForInlineClampingUnrotatedSize:v3 withGeometry:?];
      v10 = v9;
      [v3 size];
      v6 = TSDMultiplySizeScalar(v11, v12, v10);
      v8 = v13;
      v14 = [TSDLayoutGeometry alloc];
      if (v3)
      {
        [v3 transform];
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
      }

      v15 = v14;
    }

    return [(TSDLayoutGeometry *)v15 initWithSize:&v17 transform:v6, v8, v17, v18, v19];
  }

  return v3;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withGeometry:(id)a4
{
  objc_opt_class();
  [(TSDAbstractLayout *)self parent];
  v6 = TSUDynamicCast();
  v7 = 1.0;
  if (v6)
  {
    [v6 maximumFrameSizeForChild:self];
    v9 = v8;
    v11 = v10;
    v12 = TSDRectWithSize();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (a4)
    {
      [a4 transform];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    v19 = TSDTransformAngle(&v24.a);
    CGAffineTransformMakeRotation(&v24, v19 * 0.0174532925);
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v26 = CGRectApplyAffineTransform(v25, &v24);
    if (v26.size.width > v9 || v26.size.height > v11)
    {
      v21 = 1.0;
      v22 = 1.0;
      if (v26.size.width > v9)
      {
        v22 = v9 / v26.size.width;
      }

      if (v26.size.height > v11)
      {
        v21 = v11 / v26.size.height;
      }

      return fminf(v22, v21);
    }
  }

  return v7;
}

- (void)processChangedProperty:(int)a3
{
  if (a3 == 513)
  {
    [(TSDLayout *)self invalidatePosition];
  }

  else if (a3 == 512)
  {
    [(TSDLayout *)self invalidateFrame];
  }
}

- (id)dependentLayouts
{
  v3 = [(TSDAbstractLayout *)self parent];

  return [(TSDAbstractLayout *)v3 additionalDependenciesForChildLayout:self];
}

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)shouldProvideSizingGuides
{
  if (self)
  {
    [(TSDAbstractLayout *)self transform];
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  return TSDIsTransformAxisAlignedWithThreshold(v3, 0.002);
}

- (void)setNeedsDisplay
{
  v2 = *(MEMORY[0x277CBF390] + 16);
  self->mDirtyRect.origin = *MEMORY[0x277CBF390];
  self->mDirtyRect.size = v2;
}

- (void)i_accumulateLayoutsIntoSet:(id)a3
{
  [a3 addObject:self];
  v6 = [(TSDAbstractLayout *)self children];

  [(NSArray *)v6 makeObjectsPerformSelector:a2 withObject:a3];
}

- (CGRect)i_takeDirtyRect
{
  x = self->mDirtyRect.origin.x;
  y = self->mDirtyRect.origin.y;
  width = self->mDirtyRect.size.width;
  height = self->mDirtyRect.size.height;
  v6 = *(MEMORY[0x277CBF398] + 16);
  self->mDirtyRect.origin = *MEMORY[0x277CBF398];
  self->mDirtyRect.size = v6;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)i_wrapPath
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v2 = TSDRectWithSize();

  return [TSDBezierPath bezierPathWithRect:v2];
}

- (void)p_registerWithLayoutController:(id)a3
{
  [a3 i_registerLayout:self];
  v6 = [(TSDAbstractLayout *)self children];

  [(NSArray *)v6 makeObjectsPerformSelector:a2 withObject:a3];
}

- (void)p_unregisterWithLayoutController:(id)a3
{
  [a3 i_unregisterLayout:self];
  v6 = [(TSDAbstractLayout *)self children];

  [(NSArray *)v6 makeObjectsPerformSelector:a2 withObject:a3];
}

- (void)p_recursiveInvalidate
{
  [(TSDLayout *)self invalidate];
  v4 = [(TSDAbstractLayout *)self children];

  [(NSArray *)v4 makeObjectsPerformSelector:a2];
}

- (void)layoutSearchForAnnotationWithHitBlock:(id)a3
{
  objc_opt_class();
  [(TSDLayout *)self info];
  v5 = TSUDynamicCast();
  if ([v5 comment])
  {
    v6 = [TSDCanvasSearchReference searchReferenceWithDrawableInfo:v5];
    -[TSDCanvasSearchReference setAnnotation:](v6, "setAnnotation:", [v5 comment]);
    [(TSDLayout *)self calculatePointFromSearchReference:v6];
    [(TSDCanvasSearchReference *)v6 setSearchReferencePoint:?];
    v7 = *(a3 + 2);

    v7(a3, v6);
  }
}

- (id)childSearchTargets
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(TSDAbstractLayout *)self children];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if (![objc_msgSend(v8 "info")] || objc_msgSend(objc_msgSend(objc_msgSend(v8, "info"), "owningAttachment"), "isSearchable"))
      {
        if (!v5)
        {
          v5 = [MEMORY[0x277CBEB18] array];
        }

        [v5 addObject:v8];
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v5;
}

- (CGRect)rectForSelection:(id)a3
{
  [(TSDAbstractLayout *)self frame];
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)a3
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];

  v3 = TSDRectWithSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)addConnectedLayout:(id)a3
{
  mConnectedLayouts = self->mConnectedLayouts;
  if (!mConnectedLayouts)
  {
    mConnectedLayouts = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->mConnectedLayouts = mConnectedLayouts;
  }

  [(NSMutableSet *)mConnectedLayouts addObject:a3];
}

- (void)p_invalidateConnectedLayouts
{
  mConnectedLayouts = self->mConnectedLayouts;
  if (mConnectedLayouts && [(NSMutableSet *)mConnectedLayouts count])
  {
    v4 = [(NSMutableSet *)self->mConnectedLayouts copy];
    [v4 makeObjectsPerformSelector:sel_connectedLayoutInvalidated_ withObject:self];
  }
}

+ (id)descendentWrappablesOfLayout:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(a3, "children"), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 children];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = TSUProtocolCast();
        if (v11 && ![v11 wrapContainerMode])
        {
          [v4 addObjectsFromArray:{objc_msgSend(v10, "descendentWrappables")}];
        }

        else if ([v10 conformsToProtocol:&unk_287E33A10])
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setAdjustedInterimPositionX:(double)a3
{
  if ([-[TSDInfo owningAttachmentNoRecurse](-[TSDLayout info](self "info")])
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(TSDLayout *)self performSelector:sel_stroke];
      if (!v5)
      {
        v6 = 0.0;
LABEL_8:
        a3 = a3 - v6;
        goto LABEL_9;
      }
    }

    else
    {
      [(TSDLayout *)self info];
      v6 = 0.0;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_8;
      }

      v5 = [(TSDInfo *)[(TSDLayout *)self info] performSelector:sel_stroke];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    [v5 outsets];
    v6 = v7;
    goto LABEL_8;
  }

LABEL_9:
  if ([(TSDLayout *)self wantsRoundedInlinePosition])
  {
    TSURound();
    a3 = v8;
  }

  v9.receiver = self;
  v9.super_class = TSDLayout;
  [(TSDAbstractLayout *)&v9 setInterimPositionX:a3];
}

- (void)setAdjustedInterimPositionY:(double)a3
{
  if ([-[TSDInfo owningAttachmentNoRecurse](-[TSDLayout info](self "info")])
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(TSDLayout *)self performSelector:sel_stroke];
      if (!v5)
      {
        v6 = 0.0;
LABEL_8:
        a3 = a3 - v6;
        goto LABEL_9;
      }
    }

    else
    {
      [(TSDLayout *)self info];
      v6 = 0.0;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_8;
      }

      v5 = [(TSDInfo *)[(TSDLayout *)self info] performSelector:sel_stroke];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    [v5 outsets];
    v6 = v7;
    goto LABEL_8;
  }

LABEL_9:
  if ([(TSDLayout *)self wantsRoundedInlinePosition])
  {
    TSURound();
    a3 = v8;
  }

  v9.receiver = self;
  v9.super_class = TSDLayout;
  [(TSDAbstractLayout *)&v9 setInterimPositionY:a3];
}

@end