@interface TSDMaskLayout
- (BOOL)hasSmartPath;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)affineTransformForTightPathBounds;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3;
- (CGAffineTransform)originalTransformForProvidingGuides;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)p_cachedTightPathBounds;
- (CGRect)p_cachedTightPathBoundsNoScale;
- (TSDMaskLayout)initWithInfo:(id)a3;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)infoGeometry;
- (id)maskInfo;
- (id)pathSource;
- (unint64_t)numberOfControlKnobs;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)dragBy:(CGPoint)a3;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidatePath;
- (void)p_calculateCachedPathIfNecessary;
- (void)p_calculateTightPathBoundsIfNecessary;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)a3;
- (void)processChangedProperty:(int)a3;
- (void)resizeWithTransform:(CGAffineTransform *)a3 asChild:(BOOL)a4;
- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4;
- (void)setPathScale:(double)a3;
- (void)takeScaledMaskGeometry:(id)a3;
@end

@implementation TSDMaskLayout

- (TSDMaskLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDMaskLayout;
  v3 = [(TSDLayout *)&v6 initWithInfo:a3];
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
  v3 = [(TSDAbstractLayout *)self parent];

  return [v2 arrayWithObject:v3];
}

- (id)computeLayoutGeometry
{
  v3 = [(TSDLayout *)self i_layoutGeometryProvider];
  v4 = v3;
  if (v3 && (v5 = [v3 layoutGeometryForLayout:self]) != 0)
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
    v23 = [(TSDLayout *)self computeInfoGeometryFromLayoutGeometry:v6];
  }

  else
  {
    [(TSDMaskLayout *)self p_cachedTightPathBoundsNoScale];
    v16 = v24;
    v18 = v25;
    v20 = v26;
    v22 = v27;
    v23 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  }

  v28 = v23;
  [v23 position];
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
  v9 = [(TSDMaskLayout *)self infoGeometry];
  [v9 position];
  v11 = v10;
  result = [v9 center];
  if (v9)
  {
    v13 = TSDAddPoints(v6, v8, v11);

    return [v9 transformBasedOnPoint:v13 centeredAtPoint:?];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)processChangedProperty:(int)a3
{
  v8.receiver = self;
  v8.super_class = TSDMaskLayout;
  [(TSDLayout *)&v8 processChangedProperty:?];
  if (a3 == 526)
  {
    [(TSDMaskLayout *)self invalidatePath];
    [(TSDLayout *)self invalidateFrame];

    self->mPathSourceWithProvidedSize = 0;
    v5 = [(TSDMaskLayout *)self imageLayout];
  }

  else
  {
    if ((a3 & 0xFFFFFFFE) != 0x200)
    {
      [(TSDMaskLayout *)self imageLayout];
      return;
    }

    objc_opt_class();
    [(TSDAbstractLayout *)self parent];
    [TSUDynamicCast() invalidateExteriorWrap];
    v5 = [(TSDMaskLayout *)self imageLayout];
    if ([(TSDInfo *)[(TSDLayout *)v5 info] isInlineWithText])
    {
      v6 = [(TSDAbstractLayout *)v5 parent];
      if (v6)
      {
        v7 = v6;
        while ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v7 = [v7 parent];
          if (!v7)
          {
            goto LABEL_3;
          }
        }

        [v7 wrappableChildInvalidated:v5];
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
    v10 = [(TSDMaskLayout *)self imageLayout];
    if (v10)
    {
      [(TSDImageLayout *)v10 layoutToMaskTransform];
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
    v5 = [(TSDMaskLayout *)self imageLayout];
    if (v5)
    {
      v6 = v5;
      [(TSDImageLayout *)v5 layoutToMaskTransform];
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
  v3 = [(TSDAbstractLayout *)&v7 shouldSnapWhileResizing];
  if (v3)
  {
    v4 = [(TSDAbstractLayout *)self parent];
    if (v4)
    {
      [(TSDAbstractLayout *)v4 transformInRoot];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    LOBYTE(v3) = TSDIsTransformAxisAligned(v6);
  }

  return v3;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  v2 = [(TSDMaskLayout *)self imageLayout];

  [(TSDImageLayout *)v2 alignmentFrameForProvidingGuidesInRoot];
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

- (void)resizeWithTransform:(CGAffineTransform *)a3 asChild:(BOOL)a4
{
  if ([(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout:a3] isResizingInMaskEditMode]|| [(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isRotatingInMaskEditMode])
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
    v7 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v7;
    *&t2.tx = *&a3->tx;
    CGAffineTransformConcat(&v21, &t1, &t2);
    t1 = v23;
    CGAffineTransformInvert(&t2, &t1);
    CGAffineTransformConcat(&t1, &v21, &t2);
    v8 = *&t1.c;
    *&a3->a = *&t1.a;
    *&a3->c = v8;
    *&a3->tx = *&t1.tx;
    memset(&t1, 0, sizeof(t1));
    v9 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
    if (v9)
    {
      [v9 fullTransform];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    v10 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v10;
    *&t2.tx = *&a3->tx;
    CGAffineTransformConcat(&t1, &v21, &t2);
    v21 = t1;
    v11 = [TSDInfoGeometry geometryFromFullTransform:&v21];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
    v12 = [(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] originalImageGeometry];
    if (v12)
    {
      [v12 transform];
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    memset(&t1, 0, sizeof(t1));
    t2 = v23;
    v13 = *&a3->c;
    *&v19.a = *&a3->a;
    *&v19.c = v13;
    *&v19.tx = *&a3->tx;
    CGAffineTransformConcat(&v21, &t2, &v19);
    TSDTransformNormalizeScale(&v21, &t1);
    v14 = *&a3->c;
    *&v21.a = *&a3->a;
    *&v21.c = v14;
    v16 = *&a3->a;
    v15 = *&a3->c;
    *&v21.tx = *&a3->tx;
    t2 = v23;
    *&v19.a = v16;
    *&v19.c = v15;
    *&v19.tx = *&a3->tx;
    CGAffineTransformConcat(&v21, &t2, &v19);
    t2 = t1;
    CGAffineTransformInvert(&v19, &t2);
    v18 = v21;
    CGAffineTransformConcat(&t2, &v18, &v19);
    v21 = t2;
    v17 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
    t2 = v21;
    v11 = [v17 geometryByAppendingTransform:&t2];
  }

  [(TSDMaskLayout *)self p_setDynamicInfoGeometry:v11];
}

- (void)takeScaledMaskGeometry:(id)a3
{
  if (!self->mScalingInMaskMode)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout takeScaledMaskGeometry:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 293, @"wrong mode"}];
  }

  [(TSDMaskLayout *)self p_setDynamicInfoGeometry:a3];
}

- (void)endDynamicOperation
{
  v3.receiver = self;
  v3.super_class = TSDMaskLayout;
  [(TSDLayout *)&v3 endDynamicOperation];
  [(TSDMaskLayout *)self p_destroyDynamicCopies];
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3
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

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(TSDImageLayout *)[(TSDMaskLayout *)self imageLayout] isDraggingInMaskEditMode])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout dragBy:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 319, @"should be called only when dragging in mask mode"}];
  }

  v8 = [(TSDMaskLayout *)self imageLayout];
  v9 = [(TSDImageLayout *)v8 imageGeometry];
  if (v9)
  {
    [v9 transform];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGAffineTransformInvert(&v18, &v17);
  v10 = TSDDeltaApplyAffineTransform(&v18, x, y);
  v11 = [(TSDInfoGeometry *)self->mDynamicInfoGeometry mutableCopy];
  if ([(TSDImageLayout *)v8 maskEditModeForDragging]== 3)
  {
    [v11 position];
    v14 = TSDSubtractPoints(v12, v13, v10);
LABEL_10:
    [v11 setPosition:{v14, *&v17.a, *&v17.c, *&v17.tx}];
    goto LABEL_11;
  }

  if ([(TSDImageLayout *)v8 maskEditModeForDragging]== 2)
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

  v6 = [(TSDMaskLayout *)self maskInfo];

  return [v6 pathSource];
}

- (void)setPathScale:(double)a3
{
  if (self->mPathScale != a3)
  {
    self->mPathScale = a3;
    [(TSDMaskLayout *)self invalidatePath];
    v5 = [(TSDAbstractLayout *)self geometry];

    [(TSDAbstractLayout *)self setGeometry:v5];
  }
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  mDynamicPathSource = self->mDynamicPathSource;
  v8 = [objc_msgSend(a4 "knob")];
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

- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(TSDMaskLayout *)self pathSource];
  objc_opt_class();
  v8 = TSUClassAndProtocolCast();
  [(TSDMaskLayout *)self pathBounds];
  v10 = TSDAddPoints(x, y, v9);

  [v8 setControlKnobPosition:a3 toPoint:v10];
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  [(TSDMaskLayout *)self pathSource];
  objc_opt_class();
  [TSUClassAndProtocolCast() getControlKnobPosition:{a3, &unk_287E322B8}];
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

  v5 = [(TSDLayout *)self info];

  return [(TSDInfo *)v5 geometry];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_createDynamicCopies]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 502, @"expected nil value for '%s'", "mDynamicInfoGeometry"}];
  }

  if (self->mDynamicPathSource)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_createDynamicCopies]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 503, @"expected nil value for '%s'", "mDynamicPathSource"}];
  }

  v7 = [(TSDMaskLayout *)self maskInfo];
  self->mDynamicInfoGeometry = [objc_msgSend(v7 "geometry")];
  self->mDynamicPathSource = [objc_msgSend(v7 "pathSource")];
}

- (void)p_setDynamicInfoGeometry:(id)a3
{
  self->mDynamicInfoGeometry = a3;

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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_destroyDynamicCopies]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 527, @"invalid nil value for '%s'", "mDynamicInfoGeometry"}];
  }

  if (!self->mDynamicPathSource)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskLayout p_destroyDynamicCopies]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskLayout.m"), 528, @"invalid nil value for '%s'", "mDynamicPathSource"}];
  }

  self->mDynamicInfoGeometry = 0;
  self->mDynamicPathSource = 0;
  [(TSDLayout *)self invalidateFrame];

  [(TSDMaskLayout *)self invalidatePath];
}

@end