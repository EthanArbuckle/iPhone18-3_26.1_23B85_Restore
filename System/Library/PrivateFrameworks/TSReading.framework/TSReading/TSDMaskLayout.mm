@interface TSDMaskLayout
- (BOOL)hasSmartPath;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)affineTransformForTightPathBounds;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
- (CGAffineTransform)originalTransformForProvidingGuides;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)p_cachedTightPathBounds;
- (CGRect)p_cachedTightPathBoundsNoScale;
- (TSDMaskLayout)initWithInfo:(id)info;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)infoGeometry;
- (id)maskInfo;
- (id)pathSource;
- (unint64_t)numberOfControlKnobs;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)dragBy:(CGPoint)by;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidatePath;
- (void)p_calculateCachedPathIfNecessary;
- (void)p_calculateTightPathBoundsIfNecessary;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)geometry;
- (void)processChangedProperty:(int)property;
- (void)resizeWithTransform:(CGAffineTransform *)transform asChild:(BOOL)child;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
- (void)setPathScale:(double)scale;
- (void)takeScaledMaskGeometry:(id)geometry;
@end

@implementation TSDMaskLayout

- (TSDMaskLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSDMaskLayout;
  v3 = [(TSDLayout *)&v6 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    if ([(TSDMaskLayout *)v3 maskInfo])
    {
      *&v4->mMaskInvalidFlags |= 3u;
      v4->mPathScale = 1.0;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  CGPathRelease(self->mCachedPath);
  CGPathRelease(self->mCachedPathNoScale);

  self->mPathSourceWithProvidedSize = 0;
  v3.receiver = self;
  v3.super_class = TSDMaskLayout;
  [(TSDLayout *)&v3 dealloc];
}

- (id)dependentLayouts
{
  v2 = MEMORY[0x277CBEA60];
  parent = [(TSDAbstractLayout *)self parent];

  return [v2 arrayWithObject:parent];
}

- (id)computeLayoutGeometry
{
  i_layoutGeometryProvider = [(TSDLayout *)self i_layoutGeometryProvider];
  v4 = i_layoutGeometryProvider;
  if (i_layoutGeometryProvider && (v5 = [i_layoutGeometryProvider layoutGeometryForLayout:self]) != 0)
  {
    v6 = v5;
    mPathSourceWithProvidedSize = self->mPathSourceWithProvidedSize;
    if (!mPathSourceWithProvidedSize)
    {
      self->mPathSourceWithProvidedSize = [-[TSDMaskLayout pathSource](self "pathSource")];
      *&self->mMaskInvalidFlags |= 3u;
      mPathSourceWithProvidedSize = self->mPathSourceWithProvidedSize;
    }

    [(TSDPathSource *)mPathSourceWithProvidedSize naturalSize];
    v9 = v8;
    v11 = v10;
    [v6 size];
    if (v9 != v13 || v11 != v12)
    {
      [v6 size];
      [(TSDPathSource *)self->mPathSourceWithProvidedSize setNaturalSize:?];
      *&self->mMaskInvalidFlags |= 3u;
    }

    [(TSDMaskLayout *)self p_cachedTightPathBoundsNoScale];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    geometry = [(TSDLayout *)self computeInfoGeometryFromLayoutGeometry:v6];
  }

  else
  {
    [(TSDMaskLayout *)self p_cachedTightPathBoundsNoScale];
    v16 = v24;
    v18 = v25;
    v20 = v26;
    v22 = v27;
    geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  }

  v28 = geometry;
  [geometry position];
  v30 = v29;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  [v28 center];
  if (v28)
  {
    [v28 transformBasedOnPoint:TSDAddPoints(v16 centeredAtPoint:{v18, v30)}];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  v31 = [TSDLayoutGeometry alloc];
  v34[0] = v35;
  v34[1] = v36;
  v34[2] = v37;
  v32 = [(TSDLayoutGeometry *)v31 initWithSize:v34 transform:v20, v22];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    return [v4 adjustLayoutGeometry:v32 forLayout:self];
  }

  return v32;
}

- (CGAffineTransform)affineTransformForTightPathBounds
{
  [(TSDMaskLayout *)self p_cachedTightPathBounds];
  v6 = v5;
  v8 = v7;
  infoGeometry = [(TSDMaskLayout *)self infoGeometry];
  [infoGeometry position];
  v11 = v10;
  result = [infoGeometry center];
  if (infoGeometry)
  {
    v13 = TSDAddPoints(v6, v8, v11);

    return [infoGeometry transformBasedOnPoint:v13 centeredAtPoint:?];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)processChangedProperty:(int)property
{
  v8.receiver = self;
  v8.super_class = TSDMaskLayout;
  [(TSDLayout *)&v8 processChangedProperty:?];
  if (property == 526)
  {
    [(TSDMaskLayout *)self invalidatePath];
    [(TSDLayout *)self invalidateFrame];

    self->mPathSourceWithProvidedSize = 0;
    imageLayout = [(TSDMaskLayout *)self imageLayout];
  }

  else
  {
    if ((property & 0xFFFFFFFE) != 0x200)
    {
      [(TSDMaskLayout *)self imageLayout];
      return;
    }

    objc_opt_class();
    [(TSDAbstractLayout *)self parent];
    [TSUDynamicCast() invalidateExteriorWrap];
    imageLayout = [(TSDMaskLayout *)self imageLayout];
    if ([(TSDInfo *)[(TSDLayout *)imageLayout info] isInlineWithText])
    {
      parent = [(TSDAbstractLayout *)imageLayout parent];
      if (parent)
      {
        parent2 = parent;
        while ((objc_opt_respondsToSelector() & 1) == 0)
        {
          parent2 = [parent2 parent];
          if (!parent2)
          {
            goto LABEL_3;
          }
        }

        [parent2 wrappableChildInvalidated:imageLayout];
      }
    }
  }

LABEL_3:
  if ([objc_msgSend(-[TSDLayout layoutController](self "layoutController")])
  {
    [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = TSDMaskLayout;
  [(TSDLayout *)&v3 invalidate];
  objc_opt_class();
  [(TSDAbstractLayout *)self parent];
  [TSUDynamicCast() invalidateFrame];
}

- (void)invalidatePath
{
  *&self->mMaskInvalidFlags |= 1u;
  CGPathRelease(self->mCachedPath);
  self->mCachedPath = 0;
  CGPathRelease(self->mCachedPathNoScale);
  self->mCachedPathNoScale = 0;
  *&self->mMaskInvalidFlags |= 2u;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->mCachedTightPathBounds.origin = *MEMORY[0x277CBF3A0];
  self->mCachedTightPathBounds.size = v4;
  self->mCachedTightPathBoundsNoScale.origin = v3;
  self->mCachedTightPathBoundsNoScale.size = v4;
  objc_opt_class();
  [(TSDAbstractLayout *)self parent];
  v5 = TSUDynamicCast();

  [v5 invalidateExteriorWrap];
}

- (CGRect)alignmentFrame
{
  if ([(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isResizingInMaskEditMode])
  {
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
    v3 = TSDRectWithSize();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    imageLayout = [(TSDMaskLayout *)self imageLayout];
    if (imageLayout)
    {
      [(TSDImageLayout *)imageLayout layoutToMaskTransform];
    }

    else
    {
      memset(&v30, 0, sizeof(v30));
    }

    v32.origin.x = v3;
    v32.origin.y = v5;
    v32.size.width = v7;
    v32.size.height = v9;
    v33 = CGRectApplyAffineTransform(v32, &v30);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
  }

  else
  {
    [(TSDAbstractLayout *)self frameInParent];
    width = v11;
    height = v13;
    [[(TSDAbstractLayout *)self parent] frame];
    x = v15;
    y = v17;
    v19 = [-[TSDImageLayout imageInfo](-[TSDMaskLayout imageLayout](self "imageLayout")];
    if (v19)
    {
      v20 = v19;
      if ([v19 shouldRender])
      {
        Mutable = CGPathCreateMutable();
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        CGPathAddRect(Mutable, 0, v31);
        TSDPathBoundsIncludingStroke(Mutable, v20);
        v23 = v22;
        CGPathRelease(Mutable);
        v24 = TSDSubtractPoints(x, y, v23);
        x = TSDAddPoints(x, y, v24);
        y = v25;
      }
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGAffineTransform)originalTransformForProvidingGuides
{
  if ([(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isResizingInMaskEditMode])
  {
    imageLayout = [(TSDMaskLayout *)self imageLayout];
    if (imageLayout)
    {
      v6 = imageLayout;
      [(TSDImageLayout *)imageLayout layoutToMaskTransform];
      [(TSDLayout *)v6 originalTransformForProvidingGuides];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
      memset(&t2, 0, sizeof(t2));
    }

    return CGAffineTransformConcat(retstr, &t1, &t2);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSDMaskLayout;
    return [(CGAffineTransform *)&v8 originalTransformForProvidingGuides];
  }
}

- (BOOL)shouldSnapWhileResizing
{
  v7.receiver = self;
  v7.super_class = TSDMaskLayout;
  shouldSnapWhileResizing = [(TSDAbstractLayout *)&v7 shouldSnapWhileResizing];
  if (shouldSnapWhileResizing)
  {
    parent = [(TSDAbstractLayout *)self parent];
    if (parent)
    {
      [(TSDAbstractLayout *)parent transformInRoot];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    LOBYTE(shouldSnapWhileResizing) = TSDIsTransformAxisAligned(v6);
  }

  return shouldSnapWhileResizing;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  imageLayout = [(TSDMaskLayout *)self imageLayout];

  [(TSDImageLayout *)imageLayout alignmentFrameForProvidingGuidesInRoot];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)beginDynamicOperation
{
  v3.receiver = self;
  v3.super_class = TSDMaskLayout;
  [(TSDLayout *)&v3 beginDynamicOperation];
  [(TSDMaskLayout *)self p_createDynamicCopies];
}

- (void)resizeWithTransform:(CGAffineTransform *)transform asChild:(BOOL)child
{
  if ([(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout:transform] isResizingInMaskEditMode]|| [(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isRotatingInMaskEditMode])
  {
    memset(&v23, 0, sizeof(v23));
    v6 = [-[TSDImageLayout imageInfo](-[TSDMaskLayout imageLayout](self "imageLayout")];
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    t1 = v23;
    v7 = *&transform->c;
    *&t2.a = *&transform->a;
    *&t2.c = v7;
    *&t2.tx = *&transform->tx;
    CGAffineTransformConcat(&v21, &t1, &t2);
    t1 = v23;
    CGAffineTransformInvert(&t2, &t1);
    CGAffineTransformConcat(&t1, &v21, &t2);
    v8 = *&t1.c;
    *&transform->a = *&t1.a;
    *&transform->c = v8;
    *&transform->tx = *&t1.tx;
    memset(&t1, 0, sizeof(t1));
    geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
    if (geometry)
    {
      [geometry fullTransform];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    v10 = *&transform->c;
    *&t2.a = *&transform->a;
    *&t2.c = v10;
    *&t2.tx = *&transform->tx;
    CGAffineTransformConcat(&t1, &v21, &t2);
    v21 = t1;
    v11 = [TSDInfoGeometry geometryFromFullTransform:&v21];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
    originalImageGeometry = [(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] originalImageGeometry];
    if (originalImageGeometry)
    {
      [originalImageGeometry transform];
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    memset(&t1, 0, sizeof(t1));
    t2 = v23;
    v13 = *&transform->c;
    *&v19.a = *&transform->a;
    *&v19.c = v13;
    *&v19.tx = *&transform->tx;
    CGAffineTransformConcat(&v21, &t2, &v19);
    TSDTransformNormalizeScale(&v21, &t1);
    v14 = *&transform->c;
    *&v21.a = *&transform->a;
    *&v21.c = v14;
    v16 = *&transform->a;
    v15 = *&transform->c;
    *&v21.tx = *&transform->tx;
    t2 = v23;
    *&v19.a = v16;
    *&v19.c = v15;
    *&v19.tx = *&transform->tx;
    CGAffineTransformConcat(&v21, &t2, &v19);
    t2 = t1;
    CGAffineTransformInvert(&v19, &t2);
    v18 = v21;
    CGAffineTransformConcat(&t2, &v18, &v19);
    v21 = t2;
    geometry2 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
    t2 = v21;
    v11 = [geometry2 geometryByAppendingTransform:&t2];
  }

  [(TSDMaskLayout *)self p_setDynamicInfoGeometry:v11];
}

- (void)takeScaledMaskGeometry:(id)geometry
{
  if (!self->mScalingInMaskMode)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout takeScaledMaskGeometry:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 293, @"wrong mode"}];
  }

  [(TSDMaskLayout *)self p_setDynamicInfoGeometry:geometry];
}

- (void)endDynamicOperation
{
  v3.receiver = self;
  v3.super_class = TSDMaskLayout;
  [(TSDLayout *)&v3 endDynamicOperation];
  [(TSDMaskLayout *)self p_destroyDynamicCopies];
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  result = [(TSDMaskLayout *)self imageLayout];
  if (result)
  {
    v7 = *&a4->c;
    v8[0] = *&a4->a;
    v8[1] = v7;
    v8[2] = *&a4->tx;
    return [(CGAffineTransform *)result layoutTransformInInfoSpace:v8];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (![(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isDraggingInMaskEditMode])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout dragBy:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 319, @"should be called only when dragging in mask mode"}];
  }

  imageLayout = [(TSDMaskLayout *)self imageLayout];
  imageGeometry = [(TSDImageLayout *)imageLayout imageGeometry];
  if (imageGeometry)
  {
    [imageGeometry transform];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGAffineTransformInvert(&v18, &v17);
  v10 = TSDDeltaApplyAffineTransform(&v18, x, y);
  v11 = [(TSDInfoGeometry *)self->mDynamicInfoGeometry mutableCopy];
  if ([(TSDImageLayout *)imageLayout maskEditModeForDragging]== 3)
  {
    [v11 position];
    v14 = TSDSubtractPoints(v12, v13, v10);
LABEL_10:
    [v11 setPosition:{v14, *&v17.a, *&v17.c, *&v17.tx}];
    goto LABEL_11;
  }

  if ([(TSDImageLayout *)imageLayout maskEditModeForDragging]== 2)
  {
    [v11 position];
    v14 = TSDAddPoints(v15, v16, v10);
    goto LABEL_10;
  }

LABEL_11:
  [(TSDMaskLayout *)self p_setDynamicInfoGeometry:v11, *&v17.a, *&v17.c, *&v17.tx];
}

- (BOOL)shouldDisplayGuides
{
  if ([(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isResizingInMaskEditMode]|| self->mScalingInMaskMode)
  {
    return 0;
  }

  if ([(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isDraggingInMaskEditMode])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TSDMaskLayout;
  return [(TSDLayout *)&v4 shouldDisplayGuides];
}

- (id)maskInfo
{
  objc_opt_class();
  [(TSDLayout *)self info];

  return TSUDynamicCast();
}

- (id)pathSource
{
  mPathSourceWithProvidedSize = self->mPathSourceWithProvidedSize;
  if (mPathSourceWithProvidedSize)
  {
    return mPathSourceWithProvidedSize;
  }

  mPathSourceWithProvidedSize = self->mDynamicPathSource;
  if (mPathSourceWithProvidedSize)
  {
    return mPathSourceWithProvidedSize;
  }

  maskInfo = [(TSDMaskLayout *)self maskInfo];

  return [maskInfo pathSource];
}

- (void)setPathScale:(double)scale
{
  if (self->mPathScale != scale)
  {
    self->mPathScale = scale;
    [(TSDMaskLayout *)self invalidatePath];
    geometry = [(TSDAbstractLayout *)self geometry];

    [(TSDAbstractLayout *)self setGeometry:geometry];
  }
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker
{
  y = to.y;
  x = to.x;
  mDynamicPathSource = self->mDynamicPathSource;
  v8 = [objc_msgSend(tracker "knob")];
  [(TSDMaskLayout *)self pathBounds];
  [(TSDPathSource *)mDynamicPathSource setControlKnobPosition:v8 toPoint:TSDAddPoints(x, y, v9)];
  [(TSDMaskLayout *)self invalidatePath];

  [(TSDLayout *)self invalidateFrame];
}

- (BOOL)hasSmartPath
{
  [(TSDMaskLayout *)self pathSource];
  objc_opt_class();
  return TSUClassAndProtocolCast() != 0;
}

- (unint64_t)numberOfControlKnobs
{
  [(TSDMaskLayout *)self pathSource];
  objc_opt_class();
  v2 = TSUClassAndProtocolCast();

  return [v2 numberOfControlKnobs];
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDMaskLayout *)self pathSource];
  objc_opt_class();
  v8 = TSUClassAndProtocolCast();
  [(TSDMaskLayout *)self pathBounds];
  v10 = TSDAddPoints(x, y, v9);

  [v8 setControlKnobPosition:position toPoint:v10];
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  [(TSDMaskLayout *)self pathSource];
  objc_opt_class();
  [TSUClassAndProtocolCast() getControlKnobPosition:{position, &unk_287E322B8}];
  v6 = v5;
  v8 = v7;
  [(TSDMaskLayout *)self pathBounds];

  v10 = TSDSubtractPoints(v6, v8, v9);
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)infoGeometry
{
  if (self->mDynamicInfoGeometry)
  {
    return self->mDynamicInfoGeometry;
  }

  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info geometry];
}

- (void)p_calculateCachedPathIfNecessary
{
  if (*&self->mMaskInvalidFlags)
  {
    [(TSDMaskLayout *)self pathScale:0];
    v4 = v3;
    [(TSDMaskLayout *)self pathScale];
    CGAffineTransformMakeScale(&v6, v4, v5);
    self->mCachedPathNoScale = CGPathCreateMutableCopy([objc_msgSend(-[TSDMaskLayout pathSource](self "pathSource")]);
    self->mCachedPath = MEMORY[0x26D6A8870]();
    *&self->mMaskInvalidFlags &= ~1u;
  }
}

- (void)p_calculateTightPathBoundsIfNecessary
{
  if ((*&self->mMaskInvalidFlags & 2) != 0)
  {
    self->mCachedTightPathBounds = CGPathGetPathBoundingBox([(TSDMaskLayout *)self p_cachedPath]);
    self->mCachedTightPathBoundsNoScale = CGPathGetPathBoundingBox([(TSDMaskLayout *)self p_cachedPathNoScale]);
    *&self->mMaskInvalidFlags &= ~2u;
  }
}

- (CGRect)p_cachedTightPathBounds
{
  [(TSDMaskLayout *)self p_calculateTightPathBoundsIfNecessary];
  x = self->mCachedTightPathBounds.origin.x;
  y = self->mCachedTightPathBounds.origin.y;
  width = self->mCachedTightPathBounds.size.width;
  height = self->mCachedTightPathBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)p_cachedTightPathBoundsNoScale
{
  [(TSDMaskLayout *)self p_calculateTightPathBoundsIfNecessary];
  x = self->mCachedTightPathBoundsNoScale.origin.x;
  y = self->mCachedTightPathBoundsNoScale.origin.y;
  width = self->mCachedTightPathBoundsNoScale.size.width;
  height = self->mCachedTightPathBoundsNoScale.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)p_createDynamicCopies
{
  if (self->mDynamicInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_createDynamicCopies]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 502, @"expected nil value for '%s'", "mDynamicInfoGeometry"}];
  }

  if (self->mDynamicPathSource)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_createDynamicCopies]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 503, @"expected nil value for '%s'", "mDynamicPathSource"}];
  }

  maskInfo = [(TSDMaskLayout *)self maskInfo];
  self->mDynamicInfoGeometry = [objc_msgSend(maskInfo "geometry")];
  self->mDynamicPathSource = [objc_msgSend(maskInfo "pathSource")];
}

- (void)p_setDynamicInfoGeometry:(id)geometry
{
  self->mDynamicInfoGeometry = geometry;

  v5 = [objc_msgSend(-[TSDMaskLayout maskInfo](self "maskInfo")];
  self->mDynamicPathSource = v5;
  [(TSDInfoGeometry *)self->mDynamicInfoGeometry size];
  [(TSDPathSource *)v5 scaleToNaturalSize:?];
  [(TSDLayout *)self invalidateFrame];

  [(TSDMaskLayout *)self invalidatePath];
}

- (void)p_destroyDynamicCopies
{
  if (!self->mDynamicInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_destroyDynamicCopies]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 527, @"invalid nil value for '%s'", "mDynamicInfoGeometry"}];
  }

  if (!self->mDynamicPathSource)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_destroyDynamicCopies]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 528, @"invalid nil value for '%s'", "mDynamicPathSource"}];
  }

  self->mDynamicInfoGeometry = 0;
  self->mDynamicPathSource = 0;
  [(TSDLayout *)self invalidateFrame];

  [(TSDMaskLayout *)self invalidatePath];
}

@end