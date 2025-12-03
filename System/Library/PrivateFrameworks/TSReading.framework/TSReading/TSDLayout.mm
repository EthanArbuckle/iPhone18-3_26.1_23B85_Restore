@interface TSDLayout
+ (id)descendentWrappablesOfLayout:(id)layout;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)isBeingTransformed;
- (BOOL)isInGroup;
- (BOOL)isInTopLevelContainerForEditing;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldProvideSizingGuides;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
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
- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)selection;
- (CGRect)rectForSelection:(id)selection;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)maximumSizeForChildLayout:(id)layout;
- (CGSize)minimumSize;
- (TSDLayout)initWithInfo:(id)info;
- (TSDLayoutGeometry)dynamicGeometry;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withGeometry:(id)geometry;
- (id)childSearchTargets;
- (id)computeInfoGeometryFromLayoutGeometry:(id)geometry;
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
- (void)addConnectedLayout:(id)layout;
- (void)beginDrag;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)dragBy:(CGPoint)by;
- (void)dragByUnscaled:(CGPoint)unscaled;
- (void)endDynamicOperation;
- (void)i_accumulateLayoutsIntoSet:(id)set;
- (void)i_setBaseCapturedAlignmentFrameOriginForInline;
- (void)invalidate;
- (void)invalidateChildren;
- (void)invalidateFrame;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)layoutSearchForAnnotationWithHitBlock:(id)block;
- (void)p_invalidateConnectedLayouts;
- (void)p_recursiveInvalidate;
- (void)p_registerWithLayoutController:(id)controller;
- (void)p_unregisterWithLayoutController:(id)controller;
- (void)processChangedProperty:(int)property;
- (void)processChanges:(id)changes;
- (void)setAdjustedInterimPositionX:(double)x;
- (void)setAdjustedInterimPositionY:(double)y;
- (void)setDynamicGeometry:(id)geometry;
- (void)setNeedsDisplay;
- (void)setParent:(id)parent;
- (void)unregisterFromLayoutController;
- (void)validate;
- (void)validateFromLastInterimPosition;
@end

@implementation TSDLayout

- (TSDLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSDLayout;
  v4 = [(TSDAbstractLayout *)&v6 init];
  if (v4)
  {
    v4->mInfo = info;
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

- (void)setDynamicGeometry:(id)geometry
{
  if (!self->mBaseGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout setDynamicGeometry:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 126, @"setting dynamic geometry when not in dynamic operation"}];
  }

  [(TSDAbstractLayout *)self setGeometry:geometry];
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
  dependentLayouts = [(TSDLayout *)self dependentLayouts];
  v4 = [dependentLayouts countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(dependentLayouts);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [dependentLayouts countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    dependentLayouts = [(TSDLayout *)self dependentLayouts];
    v4 = [dependentLayouts countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(dependentLayouts);
          }

          [*(*(&v8 + 1) + 8 * v7++) invalidateFrame];
        }

        while (v5 != v7);
        v5 = [dependentLayouts countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  layoutController = [(TSDLayout *)self layoutController];

  [layoutController invalidateChildrenOfLayout:self];
}

- (void)unregisterFromLayoutController
{
  if ([(TSDLayout *)self layoutController])
  {
    layoutController = [(TSDLayout *)self layoutController];

    [(TSDLayout *)self p_unregisterWithLayoutController:layoutController];
  }
}

- (void)setParent:(id)parent
{
  if ([(TSDAbstractLayout *)self parent]!= parent)
  {
    [(TSDLayout *)self parentWillChangeTo:parent];
    root = [(TSDAbstractLayout *)self root];
    root2 = [parent root];
    if (root == root2)
    {
      v9.receiver = self;
      v9.super_class = TSDLayout;
      [(TSDAbstractLayout *)&v9 setParent:parent];
    }

    else
    {
      layoutController = [(TSDLayout *)self layoutController];
      if (layoutController)
      {
        [(TSDLayout *)self p_unregisterWithLayoutController:layoutController];
      }

      v9.receiver = self;
      v9.super_class = TSDLayout;
      [(TSDAbstractLayout *)&v9 setParent:parent];
      layoutController2 = [(TSDLayout *)self layoutController];
      if (layoutController2)
      {
        [(TSDLayout *)self p_registerWithLayoutController:layoutController2];
        [(TSDLayout *)self p_recursiveInvalidate];
      }
    }

    [(TSDLayout *)self parentDidChange];
    if (root2)
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
  rootLayout = [(TSDLayout *)self rootLayout];

  return [rootLayout layoutController];
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
  geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];

  [geometry position];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)i_layoutGeometryProvider
{
  layoutController = [(TSDLayout *)self layoutController];

  return [layoutController layoutGeometryProviderForLayout:self];
}

- (id)layoutGeometryFromProvider
{
  i_layoutGeometryProvider = [(TSDLayout *)self i_layoutGeometryProvider];
  if (!i_layoutGeometryProvider || (result = [i_layoutGeometryProvider layoutGeometryForLayout:self]) == 0)
  {

    return [(TSDLayout *)self layoutGeometryFromInfo];
  }

  return result;
}

- (id)layoutGeometryFromInfo
{
  if (!self->mInfo)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout layoutGeometryFromInfo]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 345, @"Layouts must either override computeLayoutGeometry, or have a non-nil info to query for geometry"}];
  }

  v5 = [[TSDLayoutGeometry alloc] initWithInfoGeometry:[(TSDInfo *)[(TSDLayout *)self info] geometry]];

  return v5;
}

- (id)computeInfoGeometryFromLayoutGeometry:(id)geometry
{
  if (geometry)
  {
    [geometry fullTransform];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return [TSDInfoGeometry geometryFromFullTransform:v4];
}

- (void)processChanges:(id)changes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [changes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(changes);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        [v9 details];
        v10 = TSUDynamicCast();
        if (v10)
        {
          changedProperties = [v10 changedProperties];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __28__TSDLayout_processChanges___block_invoke;
          v12[3] = &unk_279D47F10;
          v12[4] = self;
          [changedProperties enumeratePropertiesUsingBlock:v12];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [changes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (CGPoint)infoGeometryPositionForCurrentAttachedLayoutGeometry
{
  if (![(TSDInfo *)[(TSDLayout *)self info] owningAttachment])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout infoGeometryPositionForCurrentAttachedLayoutGeometry]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 376, @"don't use unless the object is attached"}];
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
  parent = [(TSDAbstractLayout *)self parent];
  if (!parent)
  {
    return 0;
  }

  parent2 = parent;
  do
  {
    v4 = [(TSDAbstractLayout *)parent2 isMemberOfClass:objc_opt_class()];
    if (v4)
    {
      break;
    }

    parent2 = [(TSDAbstractLayout *)parent2 parent];
  }

  while (parent2);
  return v4;
}

- (BOOL)isInTopLevelContainerForEditing
{
  v3 = [objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  parent = [(TSDAbstractLayout *)self parent];
  v5 = [objc_msgSend(v3 "topLevelContainerRepForEditing")];
  result = 1;
  if (parent && parent != v5)
  {
    do
    {
      v7 = [(TSDAbstractLayout *)parent isMemberOfClass:objc_opt_class()];
      if (v7)
      {
        break;
      }

      v4Parent = [(TSDAbstractLayout *)parent parent];
      if (!v4Parent)
      {
        break;
      }

      parent = v4Parent;
    }

    while (v4Parent != v5);
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout beginDynamicOperation]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 503, @"beginning dynamic operation when there is already a base geometry"}];
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
  dynamicOperationController = [v3 dynamicOperationController];
  if (dynamicOperationController)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    dynamicOperationController2 = [objc_msgSend(v3 dynamicOperationController];
    dynamicOperationController = [dynamicOperationController2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (dynamicOperationController)
    {
      v6 = dynamicOperationController;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(dynamicOperationController2);
          }

          if ([*(*(&v10 + 1) + 8 * i) layout] == self)
          {
            LOBYTE(dynamicOperationController) = 1;
            return dynamicOperationController;
          }
        }

        v6 = [dynamicOperationController2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(dynamicOperationController) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  return dynamicOperationController;
}

- (void)beginDrag
{
  p_mBaseAlignmentFrameOriginForFixingInterimPosition = &self->mBaseAlignmentFrameOriginForFixingInterimPosition;
  [(TSDLayout *)self alignmentFrameOriginForFixingInterimPosition];
  p_mBaseAlignmentFrameOriginForFixingInterimPosition->x = v4;
  p_mBaseAlignmentFrameOriginForFixingInterimPosition->y = v5;
  self->mLayoutState = 2;
}

- (void)dragByUnscaled:(CGPoint)unscaled
{
  y = unscaled.y;
  x = unscaled.x;
  if ([(TSDAbstractLayout *)self parent])
  {
    parent = [(TSDAbstractLayout *)self parent];
    if (parent)
    {
      [(TSDAbstractLayout *)parent transformInRoot];
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

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    if (!self->mBaseGeometry)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayout dragBy:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayout.m"), 571, @"invalid nil value for '%s'", "mBaseGeometry"}];
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
    selfCopy2 = self;
    do
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if ([v7 originalGeometry])
      {
        originalGeometry = [v7 originalGeometry];
        if (!originalGeometry)
        {
          goto LABEL_7;
        }
      }

      else
      {
        originalGeometry = [(CGAffineTransform *)selfCopy2 geometry];
        if (!originalGeometry)
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
      [originalGeometry transformByConcatenatingTransformTo:v11];
LABEL_8:
      v10 = v13;
      *&retstr->a = v12;
      *&retstr->c = v10;
      *&retstr->tx = v14;
      self = [(CGAffineTransform *)selfCopy2 parent];
      selfCopy2 = self;
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

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  result = [geometry heightValid];
  if (result && (result = [geometry widthValid], result) && (result = objc_msgSend(geometry, "size"), v9 != 0.0) && (result = objc_msgSend(geometry, "size"), v10 != 0.0))
  {
    memset(&v18, 0, sizeof(v18));
    originalPureGeometry = [(TSDLayout *)self originalPureGeometry];
    if (originalPureGeometry)
    {
      [originalPureGeometry fullTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformInvert(&t1, &t2);
    geometry2 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
    if (geometry2)
    {
      [geometry2 fullTransform];
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

- (CGSize)maximumSizeForChildLayout:(id)layout
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
  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info geometry];
}

- (id)originalPureGeometry
{
  [(TSDLayout *)self initialBoundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v17, 0, sizeof(v17));
  originalGeometry = [(TSDLayout *)self originalGeometry];
  if (originalGeometry)
  {
    [(TSDLayoutGeometry *)originalGeometry transform];
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
  geometry = [(TSDAbstractLayout *)self geometry];
  if (geometry)
  {
    [(TSDLayoutGeometry *)geometry transform];
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
  pureGeometry = [(TSDLayout *)self pureGeometry];

  return [(TSDAbstractLayout *)self geometryInRoot:pureGeometry];
}

- (id)inspectorGeometry
{
  pureGeometry = [(TSDLayout *)self pureGeometry];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *MEMORY[0x277CBF2C0];
  v14 = v4;
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  parent = [(TSDAbstractLayout *)self parent];
  if (parent)
  {
    parent2 = parent;
    do
    {
      if ([(TSDAbstractLayout *)parent2 isRootLayoutForInspectorGeometry])
      {
        break;
      }

      geometry = [(TSDAbstractLayout *)parent2 geometry];
      if (geometry)
      {
        v9[0] = v13;
        v9[1] = v14;
        v9[2] = v15;
        [(TSDLayoutGeometry *)geometry transformByConcatenatingTransformTo:v9];
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
      parent2 = [(TSDAbstractLayout *)parent2 parent];
    }

    while (parent2);
  }

  v10 = v13;
  v11 = v14;
  v12 = v15;
  return [pureGeometry geometryByTransformingBy:&v10];
}

- (CGAffineTransform)pureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  pureGeometry = [(TSDLayout *)self pureGeometry];
  if (pureGeometry)
  {
    [pureGeometry transform];
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
      geometry = [(CGAffineTransform *)v7 geometry];
      if (geometry)
      {
        v9 = *&retstr->c;
        v11[0] = *&retstr->a;
        v11[1] = v9;
        v11[2] = *&retstr->tx;
        [geometry transformByConcatenatingTransformTo:v11];
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
  originalPureGeometry = [(TSDLayout *)self originalPureGeometry];
  if (originalPureGeometry)
  {
    [originalPureGeometry transform];
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
      geometry = [(CGAffineTransform *)v7 geometry];
      if (geometry)
      {
        v9 = *&retstr->c;
        v11[0] = *&retstr->a;
        v11[1] = v9;
        v11[2] = *&retstr->tx;
        [geometry transformByConcatenatingTransformTo:v11];
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
  geometry = [(TSDAbstractLayout *)self geometry];
  if (geometry)
  {
    [(TSDLayoutGeometry *)geometry transform];
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
  layoutGeometryFromProvider = [(TSDLayout *)self layoutGeometryFromProvider];
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
      if (layoutGeometryFromProvider)
      {
        [layoutGeometryFromProvider transform];
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
      [layoutGeometryFromProvider size];
      [(TSDLayout *)self scaleForInlineClampingUnrotatedSize:layoutGeometryFromProvider withGeometry:?];
      v10 = v9;
      [layoutGeometryFromProvider size];
      v6 = TSDMultiplySizeScalar(v11, v12, v10);
      v8 = v13;
      v14 = [TSDLayoutGeometry alloc];
      if (layoutGeometryFromProvider)
      {
        [layoutGeometryFromProvider transform];
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

  return layoutGeometryFromProvider;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withGeometry:(id)geometry
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
    if (geometry)
    {
      [geometry transform];
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

- (void)processChangedProperty:(int)property
{
  if (property == 513)
  {
    [(TSDLayout *)self invalidatePosition];
  }

  else if (property == 512)
  {
    [(TSDLayout *)self invalidateFrame];
  }
}

- (id)dependentLayouts
{
  parent = [(TSDAbstractLayout *)self parent];

  return [(TSDAbstractLayout *)parent additionalDependenciesForChildLayout:self];
}

- (CGSize)maximumFrameSizeForChild:(id)child
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

- (void)i_accumulateLayoutsIntoSet:(id)set
{
  [set addObject:self];
  children = [(TSDAbstractLayout *)self children];

  [(NSArray *)children makeObjectsPerformSelector:a2 withObject:set];
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

- (void)p_registerWithLayoutController:(id)controller
{
  [controller i_registerLayout:self];
  children = [(TSDAbstractLayout *)self children];

  [(NSArray *)children makeObjectsPerformSelector:a2 withObject:controller];
}

- (void)p_unregisterWithLayoutController:(id)controller
{
  [controller i_unregisterLayout:self];
  children = [(TSDAbstractLayout *)self children];

  [(NSArray *)children makeObjectsPerformSelector:a2 withObject:controller];
}

- (void)p_recursiveInvalidate
{
  [(TSDLayout *)self invalidate];
  children = [(TSDAbstractLayout *)self children];

  [(NSArray *)children makeObjectsPerformSelector:a2];
}

- (void)layoutSearchForAnnotationWithHitBlock:(id)block
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
    v7 = *(block + 2);

    v7(block, v6);
  }
}

- (id)childSearchTargets
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = [(TSDAbstractLayout *)self children];
  v3 = [(NSArray *)children countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  array = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(children);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if (![objc_msgSend(v8 "info")] || objc_msgSend(objc_msgSend(objc_msgSend(v8, "info"), "owningAttachment"), "isSearchable"))
      {
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v8];
      }
    }

    v4 = [(NSArray *)children countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return array;
}

- (CGRect)rectForSelection:(id)selection
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

- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)selection
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];

  v3 = TSDRectWithSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)addConnectedLayout:(id)layout
{
  mConnectedLayouts = self->mConnectedLayouts;
  if (!mConnectedLayouts)
  {
    mConnectedLayouts = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->mConnectedLayouts = mConnectedLayouts;
  }

  [(NSMutableSet *)mConnectedLayouts addObject:layout];
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

+ (id)descendentWrappablesOfLayout:(id)layout
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(layout, "children"), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [layout children];
  v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(children);
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
      v7 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setAdjustedInterimPositionX:(double)x
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
        x = x - v6;
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
    x = v8;
  }

  v9.receiver = self;
  v9.super_class = TSDLayout;
  [(TSDAbstractLayout *)&v9 setInterimPositionX:x];
}

- (void)setAdjustedInterimPositionY:(double)y
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
        y = y - v6;
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
    y = v8;
  }

  v9.receiver = self;
  v9.super_class = TSDLayout;
  [(TSDAbstractLayout *)&v9 setInterimPositionY:y];
}

@end