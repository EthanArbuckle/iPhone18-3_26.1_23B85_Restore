@interface TSDImageLayout
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)hasAlpha;
- (BOOL)hasMaskingPath;
- (BOOL)i_useBaseCapturedAlignmentFrameOriginForInline;
- (BOOL)isDraggingInMaskEditMode;
- (BOOL)isInvisible;
- (BOOL)isResizingInMaskEditMode;
- (BOOL)isRotatingInMaskEditMode;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldRenderFrameStroke;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)imageDataToVisualSizeTransform;
- (CGAffineTransform)layoutToImageTransform;
- (CGAffineTransform)layoutToMaskTransform;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
- (CGPoint)centerForConnecting;
- (CGPoint)centerForRotation;
- (CGPoint)centerForRotationInMaskMode;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)boundsInfluencingExteriorWrap;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)root;
- (CGRect)pathBoundsWithoutStroke;
- (CGSize)sizeOfFrameRectIncludingCoverage;
- (TSDImageLayout)initWithInfo:(id)info;
- (id)computeLayoutGeometry;
- (id)currentInfoGeometry;
- (id)geometryForTransforming;
- (id)i_computeWrapPath;
- (id)imageAdjustments;
- (id)imageGeometryInRoot;
- (id)imageInfo;
- (id)inspectorGeometry;
- (id)layoutGeometryFromInfo;
- (id)smartPathSource;
- (id)visibleGeometries;
- (int)maskEditModeForDragging;
- (int)maskEditModeForLayoutState;
- (int)maskEditModeForResizing;
- (int)maskEditModeForRotating;
- (void)beginDrag;
- (void)beginDynamicOperation;
- (void)beginEditingImageInMaskEditMode;
- (void)beginEditingMaskInMaskEditMode;
- (void)beginInstantAlphaMode;
- (void)beginResize;
- (void)dealloc;
- (void)dragBy:(CGPoint)by;
- (void)dynamicImageAdjustmentsChangeDidEnd;
- (void)endDrag;
- (void)endDynamicOperation;
- (void)endMaskEditMode;
- (void)maskWasApplied;
- (void)maskWasReset;
- (void)offsetGeometryBy:(CGPoint)by;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)geometry;
- (void)processChangedProperty:(int)property;
- (void)resizeWithTransform:(CGAffineTransform *)transform asChild:(BOOL)child;
- (void)takeRotationFromTracker:(id)tracker;
- (void)updateChildrenFromInfo;
@end

@implementation TSDImageLayout

- (TSDImageLayout)initWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = TSDImageLayout;
  v3 = [(TSDMediaLayout *)&v7 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    imageInfo = [(TSDImageLayout *)v3 imageInfo];
    if (imageInfo)
    {
      if ([imageInfo maskInfo])
      {
        v4->mMaskEditMode = 1;
      }
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
  self->mMaskLayout = 0;

  self->mImageGeometry = 0;
  self->mBaseImageLayoutGeometry = 0;

  self->mDynamicInfoGeometry = 0;
  CGPathRelease(self->mPathToStroke);

  self->mTracedPath = 0;
  v3.receiver = self;
  v3.super_class = TSDImageLayout;
  [(TSDDrawableLayout *)&v3 dealloc];
}

- (id)geometryForTransforming
{
  if ([(TSDImageLayout *)self maskEditModeForLayoutState]== 3)
  {

    return [(TSDImageLayout *)self imageGeometry];
  }

  else
  {

    return [(TSDAbstractLayout *)self geometry];
  }
}

- (id)visibleGeometries
{
  v10[2] = *MEMORY[0x277D85DE8];
  isInMaskEditMode = [(TSDImageLayout *)self isInMaskEditMode];
  geometry = [(TSDAbstractLayout *)self geometry];
  if (isInMaskEditMode)
  {
    v10[0] = geometry;
    v10[1] = [(TSDImageLayout *)self imageGeometry];
    v5 = MEMORY[0x277CBEA60];
    v6 = v10;
    v7 = 2;
  }

  else
  {
    v9 = geometry;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v9;
    v7 = 1;
  }

  return [v5 arrayWithObjects:v6 count:{v7, v9}];
}

- (id)currentInfoGeometry
{
  if (self->mDynamicInfoGeometry)
  {
    return self->mDynamicInfoGeometry;
  }

  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info geometry];
}

- (id)layoutGeometryFromInfo
{
  currentInfoGeometry = [(TSDImageLayout *)self currentInfoGeometry];
  v3 = [TSDLayoutGeometry alloc];
  [currentInfoGeometry size];
  v5 = v4;
  v7 = v6;
  if (currentInfoGeometry)
  {
    [currentInfoGeometry transform];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  return [(TSDLayoutGeometry *)v3 initWithSize:v9 transform:v5, v7];
}

- (id)computeLayoutGeometry
{
  maskLayout = [(TSDImageLayout *)self maskLayout];
  if (maskLayout)
  {
    layoutGeometryFromProvider = [(TSDLayout *)self layoutGeometryFromProvider];
  }

  else
  {
    v110.receiver = self;
    v110.super_class = TSDImageLayout;
    layoutGeometryFromProvider = [(TSDLayout *)&v110 computeLayoutGeometry];
  }

  v5 = layoutGeometryFromProvider;

  self->mImageGeometry = v5;
  objc_opt_class();
  [(TSDMediaLayout *)self stroke];
  v6 = TSUDynamicCast();
  CGPathRelease(self->mPathToStroke);
  self->mPathToStroke = 0;
  [(TSDMediaLayout *)self setShouldRenderFrameStroke:0];
  imageInfo = [(TSDImageLayout *)self imageInfo];
  v8 = imageInfo;
  if (maskLayout)
  {
    computeLayoutGeometry = [maskLayout computeLayoutGeometry];
    if ([(TSDLayout *)self layoutState]!= 3)
    {
      [(TSDLayoutGeometry *)computeLayoutGeometry size];
      [(TSDLayout *)self scaleForInlineClampingUnrotatedSize:[(TSDAbstractLayout *)self geometry] withGeometry:v10, v11];
      v13 = v12;
      CGAffineTransformMakeScale(&v109, v12, v12);
      computeLayoutGeometry = [(TSDLayoutGeometry *)computeLayoutGeometry geometryByTransformingBy:&v109];
      CGAffineTransformMakeScale(&v109, v13, v13);
      v5 = [(TSDLayoutGeometry *)v5 geometryByTransformingBy:&v109];
      [-[TSDImageLayout maskLayout](self "maskLayout")];
      [-[TSDImageLayout maskLayout](self "maskLayout")];

      self->mImageGeometry = v5;
    }

    v14 = +[TSDBezierPath bezierPathWithCGPath:](TSDBezierPath, "bezierPathWithCGPath:", [maskLayout path]);
    [maskLayout pathBounds];
    CGAffineTransformMakeTranslation(&v109, -v15, -v16);
    [(TSDBezierPath *)v14 transformUsingAffineTransform:&v109];
LABEL_10:
    [(TSDLayoutGeometry *)v5 size];
    v19 = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
    if ([v8 instantAlphaPath])
    {
      v20 = [objc_msgSend(v8 "instantAlphaPath")];
      [(TSDImageLayout *)self imageDataToVisualSizeTransform];
      [v20 transformUsingAffineTransform:&v109];
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v19 = v20;
      if (computeLayoutGeometry)
      {
LABEL_12:
        [(TSDLayoutGeometry *)computeLayoutGeometry transform];
        goto LABEL_15;
      }
    }

    else
    {
      v22 = *MEMORY[0x277CBF3A0];
      v24 = *(MEMORY[0x277CBF3A0] + 8);
      v26 = *(MEMORY[0x277CBF3A0] + 16);
      v28 = *(MEMORY[0x277CBF3A0] + 24);
      if (computeLayoutGeometry)
      {
        goto LABEL_12;
      }
    }

    memset(&t1, 0, sizeof(t1));
LABEL_15:
    CGAffineTransformInvert(&v109, &t1);
    [(TSDBezierPath *)v19 transformUsingAffineTransform:&v109];
    if (v14)
    {
      v19 = [(TSDBezierPath *)v14 intersectBezierPath:v19];
    }

    if (v19)
    {
      elementCount = [(TSDBezierPath *)v19 elementCount];
      self->mMaskIntersectsImage = elementCount > 1;
      if (elementCount > 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      self->mMaskIntersectsImage = 0;
    }

    if (![v6 isFrame])
    {
      if (v5)
      {
        [(TSDLayoutGeometry *)v5 transform];
      }

      else
      {
        memset(&v109, 0, sizeof(v109));
      }

      v46 = [(TSDLayoutGeometry *)computeLayoutGeometry geometryByTransformingBy:&v109];
      [(TSDLayoutGeometry *)computeLayoutGeometry size];
      [(TSDMediaLayout *)self setBoundsForStandardKnobs:TSDRectWithSize()];
      v77 = MEMORY[0x277CBF2C0];
      v78 = *(MEMORY[0x277CBF2C0] + 16);
      *&self->mLayoutToMaskTransform.a = *MEMORY[0x277CBF2C0];
      *&self->mLayoutToMaskTransform.c = v78;
      *&self->mLayoutToMaskTransform.tx = *(v77 + 32);
LABEL_48:
      if (computeLayoutGeometry)
      {
        [(TSDLayoutGeometry *)computeLayoutGeometry transform];
      }

      else
      {
        memset(&v109, 0, sizeof(v109));
      }

      CGAffineTransformInvert(&t1, &v109);
      v79 = *&self->mLayoutToMaskTransform.c;
      *&t2.a = *&self->mLayoutToMaskTransform.a;
      *&t2.c = v79;
      *&t2.tx = *&self->mLayoutToMaskTransform.tx;
      CGAffineTransformConcat(&v109, &t1, &t2);
      v80 = *&v109.c;
      *&self->mLayoutToImageTransform.a = *&v109.a;
      *&self->mLayoutToImageTransform.c = v80;
      *&self->mLayoutToImageTransform.tx = *&v109.tx;
      goto LABEL_52;
    }

LABEL_22:
    isFrame = [v6 isFrame];
    v104 = v22;
    v102 = v24;
    if (v14 && isFrame)
    {
      v31 = v14;
    }

    else
    {
      v31 = v19;
    }

    v32 = CGPathRetain([(TSDBezierPath *)v31 CGPath]);
    self->mPathToStroke = v32;
    [[TSDBezierPath bezierPathWithCGPath:?], "boundsIncludingTSDStroke:", v6];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [(TSDLayoutGeometry *)computeLayoutGeometry size];
    v111.origin.x = TSDRectWithSize();
    width = v111.size.width;
    height = v111.size.height;
    v115.origin.x = v34;
    v115.origin.y = v36;
    v115.size.width = v38;
    v115.size.height = v40;
    v112 = CGRectUnion(v111, v115);
    x = v112.origin.x;
    y = v112.origin.y;
    v45 = [(TSDLayoutGeometry *)[TSDMutableLayoutGeometry alloc] initWithFrame:v112.origin.x, v112.origin.y, v112.size.width, v112.size.height];
    if (computeLayoutGeometry)
    {
      [(TSDLayoutGeometry *)computeLayoutGeometry transform];
    }

    else
    {
      memset(&v109, 0, sizeof(v109));
    }

    [(TSDMutableLayoutGeometry *)v45 transformBy:&v109];
    if (v5)
    {
      [(TSDLayoutGeometry *)v5 transform];
    }

    else
    {
      memset(&v109, 0, sizeof(v109));
    }

    [(TSDMutableLayoutGeometry *)v45 transformBy:&v109];
    v46 = v45;
    v47 = -x;
    v48 = -y;
    if (maskLayout)
    {
      v49 = v47;
      v50 = v48;
      v26 = width;
      v28 = height;
    }

    else
    {
      v113.origin.x = v104;
      v113.origin.y = v102;
      v113.size.width = v26;
      v113.size.height = v28;
      v51 = CGPathCreateWithRect(v113, 0);
      TSDPathBoundsIncludingStroke(v51, v6);
      if (v52 <= 0.0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0.0;
      }

      v49 = TSDSubtractPoints(v104, v102, v53);
      v50 = v54;
      CGPathRelease(v51);
    }

    [(TSDMediaLayout *)self setBoundsForStandardKnobs:v49, v50, v26, v28];
    CGAffineTransformMakeTranslation(&v109, v47, v48);
    v55 = *&v109.c;
    *&self->mLayoutToMaskTransform.a = *&v109.a;
    *&self->mLayoutToMaskTransform.c = v55;
    *&self->mLayoutToMaskTransform.tx = *&v109.tx;
    goto LABEL_48;
  }

  if ([imageInfo instantAlphaPath])
  {
    v17 = [TSDLayoutGeometry alloc];
    [(TSDLayoutGeometry *)self->mImageGeometry size];
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v109.a = *MEMORY[0x277CBF2C0];
    *&v109.c = v18;
    *&v109.tx = *(MEMORY[0x277CBF2C0] + 32);
    computeLayoutGeometry = [(TSDLayoutGeometry *)v17 initWithSize:&v109 transform:?];
    v14 = 0;
    goto LABEL_10;
  }

  v56 = MEMORY[0x277CBF2C0];
  v57 = *MEMORY[0x277CBF2C0];
  v58 = *(MEMORY[0x277CBF2C0] + 16);
  *&self->mLayoutToMaskTransform.a = *MEMORY[0x277CBF2C0];
  *&self->mLayoutToMaskTransform.c = v58;
  v59 = *(v56 + 32);
  *&self->mLayoutToMaskTransform.tx = v59;
  self->mMaskIntersectsImage = 0;
  if (v6 && (v103 = v58, v105 = v57, v101 = v59, v60 = [v6 shouldRender], v59 = v101, v58 = v103, v57 = v105, v60))
  {
    if ([v6 isFrame])
    {
      [(TSDLayoutGeometry *)v5 size];
      v61 = TSDRectWithSize();
      v63 = v62;
      v65 = v64;
      v67 = v66;
      [v6 coverageRect:?];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v76 = [(TSDMutableLayoutGeometry *)v5 mutableCopy];
      [v76 setSize:{v73, v75}];
      if (v76)
      {
        [v76 transform];
      }

      else
      {
        memset(&v109, 0, sizeof(v109));
      }

      CGAffineTransformTranslate(&v106, &v109, v69, v71);
      v109 = v106;
      [v76 setTransform:&v109];
      v46 = v76;
      v98 = -v69;
      v99 = -v71;
      CGAffineTransformMakeTranslation(&v109, v98, v99);
      v100 = *&v109.c;
      *&self->mLayoutToImageTransform.a = *&v109.a;
      *&self->mLayoutToImageTransform.c = v100;
      *&self->mLayoutToImageTransform.tx = *&v109.tx;
      v92 = v61;
      v93 = v63;
      v94 = v65;
      v95 = v67;
      v96 = v98;
      v97 = v99;
    }

    else
    {
      [v6 width];
      v90 = v89 * 0.5;
      v46 = [(TSDLayoutGeometry *)v5 geometryByOutsettingBy:v90, v90];
      CGAffineTransformMakeTranslation(&v109, v90, v90);
      v91 = *&v109.c;
      *&self->mLayoutToImageTransform.a = *&v109.a;
      *&self->mLayoutToImageTransform.c = v91;
      *&self->mLayoutToImageTransform.tx = *&v109.tx;
      [(TSDLayoutGeometry *)v5 size];
      v92 = TSDRectWithSize();
      v96 = v90;
      v97 = v90;
    }

    v114 = CGRectOffset(*&v92, v96, v97);
    [(TSDMediaLayout *)self setBoundsForStandardKnobs:v114.origin.x, v114.origin.y, v114.size.width, v114.size.height];
  }

  else
  {
    *&self->mLayoutToImageTransform.a = v57;
    *&self->mLayoutToImageTransform.c = v58;
    *&self->mLayoutToImageTransform.tx = v59;
    [(TSDLayoutGeometry *)v5 size];
    [(TSDMediaLayout *)self setBoundsForStandardKnobs:TSDRectWithSize()];
    v46 = v5;
  }

LABEL_52:
  if ([v6 isFrame])
  {
    if (self->mPathToStroke)
    {
      [+[TSDBezierPath bezierPathWithCGPath:](TSDBezierPath bounds];
    }

    else
    {
      [(TSDLayoutGeometry *)v5 size];
      v81 = TSDRectWithSize();
    }

    [v6 coverageRectWithoutAdornment:v81];
    -[TSDMediaLayout setShouldRenderFrameStroke:](self, "setShouldRenderFrameStroke:", [v6 shouldRenderForSizeIncludingCoverage:{v82, v83}]);
  }

  i_layoutGeometryProvider = [(TSDLayout *)self i_layoutGeometryProvider];
  if (!i_layoutGeometryProvider)
  {
    return v46;
  }

  v85 = i_layoutGeometryProvider;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v46;
  }

  v86 = [v85 adjustLayoutGeometry:v46 forLayout:self];
  if (objc_opt_respondsToSelector())
  {
    v87 = self->mImageGeometry;
    self->mImageGeometry = [v85 adjustImageGeometry:self->mImageGeometry withLayoutGeometry:v46 forLayout:self];
  }

  return v86;
}

- (void)processChangedProperty:(int)property
{
  v7.receiver = self;
  v7.super_class = TSDImageLayout;
  [(TSDMediaLayout *)&v7 processChangedProperty:?];
  if (property == 517)
  {
    [(TSDLayout *)self invalidateFrame];
LABEL_7:
    [(TSDMediaLayout *)self invalidateAlignmentFrame];
    [(TSDDrawableLayout *)self invalidateExteriorWrap];
    goto LABEL_8;
  }

  if ((property & 0xFFFFFFFE) == 0x200)
  {
    goto LABEL_7;
  }

  if ((property & 0xFFFFFFFE) != 0x210)
  {
    if (property == 521)
    {
      [(TSDDrawableLayout *)self invalidateExteriorWrap];

      self->mTracedPath = 0;
    }

    return;
  }

  [(TSDLayout *)self invalidateFrame];
  [(TSDMediaLayout *)self invalidateAlignmentFrame];
  [(TSDLayout *)self invalidateChildren];
  [(TSDDrawableLayout *)self invalidateExteriorWrap];
  if (property != 529)
  {

    self->mTracedPath = 0;
    self->mHasAlpha = 0;
    return;
  }

LABEL_8:
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) != 0 || [(TSDInfo *)[(TSDLayout *)self info] isAnchoredToText])
  {
    parent = [(TSDAbstractLayout *)self parent];
    if (parent)
    {
      parent2 = parent;
      while ((objc_opt_respondsToSelector() & 1) == 0)
      {
        parent2 = [(TSDAbstractLayout *)parent2 parent];
        if (!parent2)
        {
          return;
        }
      }

      [(TSDAbstractLayout *)parent2 wrappableChildInvalidated:self];
    }
  }
}

- (void)updateChildrenFromInfo
{
  v3 = [-[TSDImageLayout imageInfo](self "imageInfo")];
  mMaskLayout = self->mMaskLayout;
  if ((v3 != 0) == (mMaskLayout == 0) || [(TSDMaskLayout *)mMaskLayout maskInfo]!= v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = self->mMaskLayout;
    if (v3)
    {
      if (v6)
      {

        self->mMaskLayout = 0;
      }

      v7 = [objc_alloc(objc_msgSend(v3 "layoutClass"))];
      self->mMaskLayout = v7;
      [v5 addObject:v7];
    }

    else
    {

      self->mMaskLayout = 0;
    }

    [(TSDAbstractLayout *)self setChildren:v5];

    [(TSDDrawableLayout *)self invalidate];
  }

  children = [(TSDAbstractLayout *)self children];

  [(NSArray *)children makeObjectsPerformSelector:sel_updateChildrenFromInfo];
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  if (!self->mMaskLayout && ![-[TSDImageLayout imageInfo](self "imageInfo")] || !self->mPathToStroke)
  {
    memset(&v20, 0, sizeof(v20));
    geometry = [(TSDAbstractLayout *)self geometry];
    if (geometry)
    {
      [(TSDLayoutGeometry *)geometry fullTransform];
      if (!rootCopy)
      {
        goto LABEL_23;
      }
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
      if (!rootCopy)
      {
LABEL_23:
        t1 = v20;
        v8 = 0;
        v9 = 0;
        v10 = 1.0;
        v11 = 1.0;
        goto LABEL_24;
      }
    }

    if ([(TSDAbstractLayout *)self parent])
    {
      parent = [(TSDAbstractLayout *)self parent];
      if (parent)
      {
        [(TSDAbstractLayout *)parent transformInRoot];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v17 = v20;
      CGAffineTransformConcat(&t1, &v17, &t2);
      v20 = t1;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  [(TSDMediaLayout *)self stroke];
  v5 = TSUDynamicCast();
  v6 = [TSDBezierPath bezierPathWithCGPath:self->mPathToStroke];
  memset(&v20, 0, sizeof(v20));
  [(TSDImageLayout *)self layoutToMaskTransform];
  if (rootCopy)
  {
    [(TSDAbstractLayout *)self transformInRoot];
  }

  else
  {
    [(TSDAbstractLayout *)self transform];
  }

  CGAffineTransformConcat(&v20, &t1, &t2);
  t1 = v20;
  [(TSDBezierPath *)v6 transformUsingAffineTransform:&t1];
  if (v5 && [v5 shouldRender])
  {
    if ([v5 isFrame] && -[TSDImageLayout shouldRenderFrameStroke](self, "shouldRenderFrameStroke"))
    {
      [[TSDBezierPath bezierPathWithCGPath:?]];
      [v5 coverageRect:?];
      t1 = v20;
LABEL_24:
      *&v12 = CGRectApplyAffineTransform(*&v8, &t1);
      goto LABEL_25;
    }

    [(TSDBezierPath *)v6 takeAttributesFromStroke:v5];
    [(TSDBezierPath *)v6 boundsIncludingStroke];
  }

  else
  {
    [(TSDBezierPath *)v6 bounds];
  }

LABEL_25:
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  if ([(TSDImageLayout *)self isResizingInMaskEditMode])
  {
    if ([(TSDImageLayout *)self maskEditModeForResizing]== 2)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  if ([(TSDImageLayout *)self isDraggingInMaskEditMode])
  {
    if ([(TSDImageLayout *)self maskEditModeForDragging]!= 3)
    {
LABEL_3:
      [-[TSDImageLayout imageGeometry](self "imageGeometry")];
      v3 = TSDRectWithSize();
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v10 = 0uLL;
      memset(&v17, 0, sizeof(v17));
      if (self)
      {
        [(TSDImageLayout *)self layoutToImageTransform];
LABEL_9:
        [(TSDAbstractLayout *)self transformInRoot];
LABEL_11:
        CGAffineTransformConcat(&v17, &t1, &t2);
        t1 = v17;
        v18.origin.x = v3;
        v18.origin.y = v5;
        v18.size.width = v7;
        v18.size.height = v9;
        return CGRectApplyAffineTransform(v18, &t1);
      }

      goto LABEL_10;
    }

LABEL_7:
    [objc_msgSend(-[TSDImageLayout maskLayout](self "maskLayout")];
    v3 = TSDRectWithSize();
    v5 = v11;
    v7 = v12;
    v9 = v13;
    v10 = 0uLL;
    memset(&v17, 0, sizeof(v17));
    if (self)
    {
      [(TSDImageLayout *)self layoutToMaskTransform];
      goto LABEL_9;
    }

LABEL_10:
    *&t1.c = v10;
    *&t1.tx = v10;
    *&t2.tx = v10;
    *&t1.a = v10;
    *&t2.a = v10;
    *&t2.c = v10;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = TSDImageLayout;
  [(TSDAbstractLayout *)&v14 alignmentFrameForProvidingGuidesInRoot];
  return result;
}

- (void)offsetGeometryBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(TSDLayoutGeometry *)self->mImageGeometry geometryByTranslatingBy:by.x, by.y];

    self->mImageGeometry = v7;
  }

  v8.receiver = self;
  v8.super_class = TSDImageLayout;
  [(TSDAbstractLayout *)&v8 offsetGeometryBy:x, y];
}

- (BOOL)hasAlpha
{
  if (!self->mHasAlpha)
  {
    self->mHasAlpha = 1;
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      if ([v4 isOpaque])
      {
        self->mHasAlpha = 2;
      }
    }
  }

  return self->mHasAlpha == 1;
}

- (BOOL)isInvisible
{
  pathToStroke = [(TSDImageLayout *)self pathToStroke];
  if (pathToStroke)
  {
    BoundingBox = CGPathGetBoundingBox(pathToStroke);
  }

  else
  {
    [-[TSDImageLayout imageGeometry](self "imageGeometry")];
    BoundingBox.origin.x = TSDRectWithSize();
  }

  return CGRectIsNull(BoundingBox);
}

- (BOOL)shouldDisplayGuides
{
  if ([(TSDImageLayout *)self isResizingInMaskEditMode]|| [(TSDImageLayout *)self isDraggingInMaskEditMode])
  {
    return 1;
  }

  if (self->mScalingInMaskMode)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDImageLayout;
  return [(TSDLayout *)&v4 shouldDisplayGuides];
}

- (BOOL)shouldRenderFrameStroke
{
  if ([(TSDImageLayout *)self isInInstantAlphaMode])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDImageLayout;
  return [(TSDMediaLayout *)&v4 shouldRenderFrameStroke];
}

- (void)beginDynamicOperation
{
  v3.receiver = self;
  v3.super_class = TSDImageLayout;
  [(TSDLayout *)&v3 beginDynamicOperation];
  [-[TSDImageLayout maskLayout](self "maskLayout")];
  self->mBaseImageLayoutGeometry = [-[TSDImageLayout imageGeometry](self "imageGeometry")];
  [(TSDImageLayout *)self p_createDynamicCopies];
}

- (void)endDynamicOperation
{
  [(TSDImageLayout *)self p_destroyDynamicCopies];

  self->mBaseImageLayoutGeometry = 0;
  [-[TSDImageLayout maskLayout](self "maskLayout")];
  v3.receiver = self;
  v3.super_class = TSDImageLayout;
  [(TSDLayout *)&v3 endDynamicOperation];
}

- (void)beginResize
{
  v6.receiver = self;
  v6.super_class = TSDImageLayout;
  [(TSDLayout *)&v6 beginResize];
  if ([(TSDImageLayout *)self maskEditMode]== 3)
  {
    [-[TSDImageLayout imageGeometry](self "imageGeometry")];
    self->super.super.super.super.mInitialBoundsForStandardKnobs.origin.x = TSDRectWithSize();
    self->super.super.super.super.mInitialBoundsForStandardKnobs.origin.y = v3;
    self->super.super.super.super.mInitialBoundsForStandardKnobs.size.width = v4;
    self->super.super.super.super.mInitialBoundsForStandardKnobs.size.height = v5;

    self->super.super.super.super.mBaseGeometry = [-[TSDImageLayout imageGeometry](self "imageGeometry")];
  }
}

- (void)beginDrag
{
  if ([(TSDImageLayout *)self maskEditModeForDragging]== 3)
  {
    [(TSDLayout *)self i_setBaseCapturedAlignmentFrameOriginForInline];
    [(TSDLayout *)self invalidateSize];
    [(TSDLayout *)self validate];
  }

  else
  {
    [(TSDImageLayout *)self maskEditModeForDragging];
  }

  v3.receiver = self;
  v3.super_class = TSDImageLayout;
  [(TSDLayout *)&v3 beginDrag];
}

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    if ([(TSDImageLayout *)self maskEditModeForDragging]== 3)
    {
      v7 = [(TSDInfoGeometry *)self->mDynamicInfoGeometry mutableCopy];
      [v7 position];
      [v7 setPosition:{TSDAddPoints(v8, v9, x)}];
      [(TSDImageLayout *)self p_setDynamicInfoGeometry:v7];

      [-[TSDImageLayout maskLayout](self "maskLayout")];
      if ([(TSDInfo *)[(TSDLayout *)self info] owningAttachment])
      {
        [(TSDLayout *)self invalidatePosition];
        [-[TSDLayout layoutController](self "layoutController")];

        [(TSDAbstractLayout *)self fixTransformFromLastInterimPosition];
      }
    }

    else if ([(TSDImageLayout *)self maskEditModeForDragging]== 2)
    {
      maskLayout = [(TSDImageLayout *)self maskLayout];

      [maskLayout dragBy:{x, y}];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = TSDImageLayout;
      [(TSDDrawableLayout *)&v14 dragBy:x, y];
      if (!self->mBaseImageLayoutGeometry)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout dragBy:]"];
        [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 744, @"invalid nil value for '%s'", "mBaseImageLayoutGeometry"}];
      }

      v13 = [(TSDLayoutGeometry *)self->mImageGeometry geometryByTranslatingBy:x, y];

      self->mImageGeometry = v13;
    }
  }
}

- (BOOL)i_useBaseCapturedAlignmentFrameOriginForInline
{
  v4.receiver = self;
  v4.super_class = TSDImageLayout;
  return [(TSDLayout *)&v4 i_useBaseCapturedAlignmentFrameOriginForInline]|| [(TSDImageLayout *)self isDraggingInMaskEditMode]|| [(TSDImageLayout *)self isRotatingInMaskEditMode];
}

- (void)endDrag
{
  if (![(TSDImageLayout *)self isDraggingInMaskEditMode])
  {

    self->mImageGeometry = self->mBaseImageLayoutGeometry;
  }

  v3.receiver = self;
  v3.super_class = TSDImageLayout;
  [(TSDLayout *)&v3 endDrag];
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  memset(&v14, 0, sizeof(v14));
  mBaseImageLayoutGeometry = self->mBaseImageLayoutGeometry;
  if (mBaseImageLayoutGeometry)
  {
    [(TSDLayoutGeometry *)mBaseImageLayoutGeometry fullTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformInvert(&t1, &t2);
  geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  if (geometry)
  {
    [geometry fullTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v14, &t1, &t2);
  t1 = v14;
  CGAffineTransformInvert(&t2, &t1);
  v9 = *&a4->c;
  *&v11.a = *&a4->a;
  *&v11.c = v9;
  *&v11.tx = *&a4->tx;
  CGAffineTransformConcat(&t1, &t2, &v11);
  t2 = v14;
  return CGAffineTransformConcat(retstr, &t1, &t2);
}

- (void)takeRotationFromTracker:(id)tracker
{
  if (!tracker)
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    if (self)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  [tracker rotateTransform];
  if (!self)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(TSDImageLayout *)self layoutTransformInInfoSpace:&v5];
LABEL_6:
  -[TSDImageLayout resizeWithTransform:asChild:](self, "resizeWithTransform:asChild:", &v8, [objc_msgSend(tracker rep] != self);
}

- (CGPoint)centerForRotation
{
  if ([(TSDImageLayout *)self isRotatingInMaskEditMode])
  {

    [(TSDImageLayout *)self centerForRotationInMaskMode];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDImageLayout;
    [(TSDLayout *)&v5 centerForRotation];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerForRotationInMaskMode
{
  if ([(TSDImageLayout *)self maskEditModeForRotating]!= 3)
  {
    if ([(TSDImageLayout *)self maskEditModeForRotating]!= 2)
    {
      v24 = *MEMORY[0x277CBF348];
      v25 = *(MEMORY[0x277CBF348] + 8);
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout centerForRotationInMaskMode]"];
      [currentHandler handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 817, @"asking for mask mode center of rotation when not in mask edit mode"}];
      goto LABEL_17;
    }

    [objc_msgSend(-[TSDImageLayout maskLayout](self "maskLayout")];
    v26 = TSDRectWithSize();
    v30 = TSDCenterOfRect(v26, v27, v28, v29);
    v32 = v31;
    if (self)
    {
      [(TSDImageLayout *)self layoutToMaskTransform];
LABEL_14:
      v41 = v48;
      v40 = v49;
      v43 = v50;
      v42 = v51;
      v45 = v52;
      v44 = v53;
LABEL_16:
      v24 = v45 + v32 * v43 + v41 * v30;
      v25 = v44 + v32 * v42 + v40 * v30;
      goto LABEL_17;
    }

LABEL_15:
    v44 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
    v45 = 0.0;
    v43 = 0.0;
    v41 = 0.0;
    goto LABEL_16;
  }

  if (![-[TSDImageLayout imageInfo](self "imageInfo")])
  {
    [-[TSDImageLayout imageGeometry](self "imageGeometry")];
    v35 = TSDRectWithSize();
    v30 = TSDCenterOfRect(v35, v36, v37, v38);
    v32 = v39;
    if (self)
    {
      [(TSDImageLayout *)self layoutToImageTransform];
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [objc_msgSend(-[TSDImageLayout imageInfo](self "imageInfo")];
  v7 = TSDCenterOfRect(v3, v4, v5, v6);
  v9 = v8;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (self)
  {
    [(TSDImageLayout *)self imageDataToVisualSizeTransform:0.0];
    v16 = v48;
    v13 = v49;
    v15 = v50;
    v12 = v51;
    v14 = v52;
    v11 = v53;
  }

  v17 = v14 + v9 * v15 + v16 * v7;
  v18 = v11 + v9 * v12 + v13 * v7;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  if (self)
  {
    [(TSDImageLayout *)self layoutToImageTransform:0.0];
    v23 = v48;
    v20 = v49;
    v22 = v50;
    v19 = v51;
    v21 = v52;
    v10 = v53;
  }

  v24 = v21 + v18 * v22 + v23 * v17;
  v25 = v10 + v18 * v19 + v20 * v17;
LABEL_17:
  v46 = v24;
  v47 = v25;
  result.y = v47;
  result.x = v46;
  return result;
}

- (CGPoint)centerForConnecting
{
  if ([-[TSDDrawableLayout i_wrapPath](self "i_wrapPath")] < 2)
  {
    v17.receiver = self;
    v17.super_class = TSDImageLayout;
    [(TSDLayout *)&v17 centerForConnecting];
  }

  else
  {
    [-[TSDDrawableLayout i_wrapPath](self "i_wrapPath")];
    v7 = TSDCenterOfRect(v3, v4, v5, v6);
    v15 = v8;
    v16 = v7;
    geometry = [(TSDAbstractLayout *)self geometry];
    if (geometry)
    {
      [(TSDLayoutGeometry *)geometry transform];
      v10 = v18;
      v11 = v19;
      v12 = v20;
    }

    else
    {
      v12 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
    }

    v13 = vaddq_f64(v12, vmlaq_n_f64(vmulq_n_f64(v11, v15), v10, v16));
    v14 = v13.f64[1];
  }

  result.x = v13.f64[0];
  result.y = v14;
  return result;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  if ([(TSDImageLayout *)self maskEditModeForResizing]== 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    if ([(TSDImageLayout *)self maskEditModeForResizing]!= 1)
    {
      goto LABEL_8;
    }

    v4 = [-[TSDImageLayout maskLayout](self "maskLayout")];
    if (v4)
    {
      [v4 transform];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    v3 = TSDIsTransformAxisAlignedWithThreshold(v7, 0.0001);
    if (v3)
    {
LABEL_8:
      v6.receiver = self;
      v6.super_class = TSDImageLayout;
      LOBYTE(v3) = [(TSDLayout *)&v6 canAspectRatioLockBeChangedByUser];
    }
  }

  return v3;
}

- (BOOL)resizeMayChangeAspectRatio
{
  if ([(TSDImageLayout *)self maskEditModeForResizing]== 2)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    if ([(TSDImageLayout *)self maskEditModeForResizing]!= 1)
    {
      goto LABEL_8;
    }

    v4 = [-[TSDImageLayout maskLayout](self "maskLayout")];
    if (v4)
    {
      [v4 transform];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    v3 = TSDIsTransformAxisAlignedWithThreshold(v7, 0.0001);
    if (v3)
    {
LABEL_8:
      v6.receiver = self;
      v6.super_class = TSDImageLayout;
      LOBYTE(v3) = [(TSDLayout *)&v6 resizeMayChangeAspectRatio];
    }
  }

  return v3;
}

- (BOOL)shouldSnapWhileResizing
{
  if ([(TSDImageLayout *)self isInMaskEditMode]&& [(TSDImageLayout *)self maskEditModeForLayoutState]== 3)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDImageLayout;
  return [(TSDAbstractLayout *)&v4 shouldSnapWhileResizing];
}

- (void)resizeWithTransform:(CGAffineTransform *)transform asChild:(BOOL)child
{
  childCopy = child;
  if ([(TSDImageLayout *)self isInMaskEditMode]&& [(TSDImageLayout *)self maskEditModeForLayoutState]!= 3)
  {
    if ([(TSDImageLayout *)self maskEditModeForLayoutState]!= 2)
    {
      return;
    }

    maskLayout = [(TSDImageLayout *)self maskLayout];
    v13 = *&transform->c;
    *&v19.a = *&transform->a;
    *&v19.c = v13;
    *&v19.tx = *&transform->tx;
    p_t2 = &v19;
    goto LABEL_21;
  }

  if (childCopy)
  {
    transform->tx = 0.0;
    transform->ty = 0.0;
  }

  memset(&v19, 0, sizeof(v19));
  geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  if (geometry)
  {
    [geometry fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v8 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v8;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v19, &t1, &t2);
  t1 = v19;
  [(TSDImageLayout *)self p_setDynamicInfoGeometry:[TSDInfoGeometry geometryFromFullTransform:&t1]];
  if ([(TSDImageLayout *)self maskEditModeForLayoutState]== 3)
  {
    memset(&t1, 0, sizeof(t1));
    v9 = [-[TSDImageLayout imageInfo](self "imageInfo")];
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    CGAffineTransformInvert(&t2, &v16);
    mDynamicInfoGeometry = self->mDynamicInfoGeometry;
    if (mDynamicInfoGeometry)
    {
      [(TSDInfoGeometry *)mDynamicInfoGeometry transform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    CGAffineTransformConcat(&t1, &t2, &v16);
    maskLayout2 = [(TSDImageLayout *)self maskLayout];
    v16 = t1;
    CGAffineTransformInvert(&t2, &v16);
    p_t2 = &t2;
    maskLayout = maskLayout2;
    goto LABEL_21;
  }

  if (![(TSDImageLayout *)self isInMaskEditMode]&& [(TSDLayout *)self layoutState]== 4)
  {
    maskLayout = [(TSDImageLayout *)self maskLayout];
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    p_t2 = &t1;
LABEL_21:
    [maskLayout resizeWithTransform:p_t2 asChild:0];
  }
}

- (id)smartPathSource
{
  [-[TSDImageLayout maskLayout](self "maskLayout")];
  objc_opt_class();
  return TSUClassAndProtocolCast();
}

- (CGRect)pathBoundsWithoutStroke
{
  v2 = [-[TSDImageLayout smartPathSource](self "smartPathSource")];

  [v2 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)maskWasReset
{
  if ([(TSDImageLayout *)self isInMaskEditMode])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout maskWasReset]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 952, @"Mask should never be reset in mask edit mode"}];
  }

  self->mMaskEditMode = 0;
}

- (void)maskWasApplied
{
  if ([(TSDImageLayout *)self isInMaskEditMode])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout maskWasApplied]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 958, @"maskWasApplied should not be called in mask edit mode"}];
  }

  self->mMaskEditMode = 1;
}

- (void)beginEditingImageInMaskEditMode
{
  if ([(TSDImageLayout *)self maskEditMode]== 3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout beginEditingImageInMaskEditMode]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 964, @"already editing image in mask edit mode"}];
  }

  self->mMaskEditMode = 3;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSDImageLayoutMaskEditModeDidChangeNotification" object:self];
}

- (void)beginEditingMaskInMaskEditMode
{
  if ([(TSDImageLayout *)self maskEditMode]== 2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout beginEditingMaskInMaskEditMode]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 971, @"already editing mask in mask edit mode"}];
  }

  self->mMaskEditMode = 2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSDImageLayoutMaskEditModeDidChangeNotification" object:self];
}

- (void)endMaskEditMode
{
  if ([(TSDImageLayout *)self isInInstantAlphaMode])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout endMaskEditMode]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 978, @"Cannot end mask edit mode while still editing instant alpha"}];
  }

  if ([(TSDImageLayout *)self maskEditMode]!= 3 && [(TSDImageLayout *)self maskEditMode]!= 2)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout endMaskEditMode]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 979, @"not in mask edit mode"}];
  }

  self->mMaskEditMode = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSDImageLayoutMaskEditModeDidChangeNotification" object:self];
}

- (BOOL)isDraggingInMaskEditMode
{
  isInMaskEditMode = [(TSDImageLayout *)self isInMaskEditMode];
  if (isInMaskEditMode)
  {
    LOBYTE(isInMaskEditMode) = [(TSDLayout *)self layoutState]== 2;
  }

  return isInMaskEditMode;
}

- (BOOL)isRotatingInMaskEditMode
{
  isInMaskEditMode = [(TSDImageLayout *)self isInMaskEditMode];
  if (isInMaskEditMode)
  {
    LOBYTE(isInMaskEditMode) = [(TSDLayout *)self layoutState]== 3;
  }

  return isInMaskEditMode;
}

- (BOOL)isResizingInMaskEditMode
{
  isInMaskEditMode = [(TSDImageLayout *)self isInMaskEditMode];
  if (isInMaskEditMode)
  {
    LOBYTE(isInMaskEditMode) = [(TSDLayout *)self layoutState]== 4;
  }

  return isInMaskEditMode;
}

- (int)maskEditModeForDragging
{
  if ([(TSDImageLayout *)self isInMaskEditMode])
  {
    return 3;
  }

  return [(TSDImageLayout *)self maskEditMode];
}

- (int)maskEditModeForRotating
{
  if ([(TSDImageLayout *)self isInMaskEditMode])
  {
    return 3;
  }

  return [(TSDImageLayout *)self maskEditMode];
}

- (int)maskEditModeForResizing
{
  if (self->mScalingInMaskMode)
  {
    return 3;
  }

  else
  {
    return [(TSDImageLayout *)self maskEditMode];
  }
}

- (int)maskEditModeForLayoutState
{
  layoutState = [(TSDLayout *)self layoutState];
  if (layoutState == 3)
  {

    return [(TSDImageLayout *)self maskEditModeForRotating];
  }

  else if (layoutState == 2)
  {

    return [(TSDImageLayout *)self maskEditModeForDragging];
  }

  else
  {

    return [(TSDImageLayout *)self maskEditModeForResizing];
  }
}

- (void)beginInstantAlphaMode
{
  if (![(TSDImageLayout *)self isInMaskEditMode])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout beginInstantAlphaMode]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 1073, @"must be editing the mask when editing instant alpha"}];
  }

  self->mInInstantAlphaMode = 1;
}

- (id)imageInfo
{
  objc_opt_class();
  [(TSDLayout *)self info];

  return TSUDynamicCast();
}

- (id)imageGeometryInRoot
{
  v3 = [(TSDLayoutGeometry *)self->mImageGeometry mutableCopy];
  parent = [(TSDAbstractLayout *)self parent];
  if (parent)
  {
    parent2 = parent;
    do
    {
      v6 = [(TSDAbstractLayout *)parent2 geometry:v8];
      if (v6)
      {
        [(TSDLayoutGeometry *)v6 transform];
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
        v8 = 0u;
      }

      [v3 transformBy:&v8];
      parent2 = [(TSDAbstractLayout *)parent2 parent];
    }

    while (parent2);
  }

  return v3;
}

- (id)inspectorGeometry
{
  if ([(TSDImageLayout *)self maskEditMode]== 3)
  {
    imageGeometry = [(TSDImageLayout *)self imageGeometry];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v14 = *MEMORY[0x277CBF2C0];
    v15 = v4;
    v16 = *(MEMORY[0x277CBF2C0] + 32);
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
          v10[0] = v14;
          v10[1] = v15;
          v10[2] = v16;
          [(TSDLayoutGeometry *)geometry transformByConcatenatingTransformTo:v10];
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
          v11 = 0u;
        }

        v14 = v11;
        v15 = v12;
        v16 = v13;
        parent2 = [(TSDAbstractLayout *)parent2 parent];
      }

      while (parent2);
    }

    v11 = v14;
    v12 = v15;
    v13 = v16;
    return [imageGeometry geometryByTransformingBy:&v11];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDImageLayout;
    return [(TSDLayout *)&v9 inspectorGeometry];
  }
}

- (BOOL)hasMaskingPath
{
  if (-[TSDImageLayout maskLayout](self, "maskLayout") || (v3 = [-[TSDImageLayout imageInfo](self "imageInfo")]) != 0)
  {
    if (!self->mPathToStroke)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout hasMaskingPath]"];
      [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 1135, @"If image has masking path it must specify a path to stroke"}];
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (CGSize)sizeOfFrameRectIncludingCoverage
{
  mPathToStroke = self->mPathToStroke;
  if (mPathToStroke)
  {
    TSDPathBoundsIncludingStroke(mPathToStroke, [(TSDMediaLayout *)self stroke]);
    v4 = v3;
    v6 = v5;
  }

  else
  {
    geometry = [(TSDAbstractLayout *)self geometry];

    [(TSDLayoutGeometry *)geometry size];
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (CGAffineTransform)layoutToImageTransform
{
  v3 = *&self[9].a;
  *&retstr->a = *&self[8].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].c;
  return self;
}

- (CGAffineTransform)layoutToMaskTransform
{
  v3 = *&self[10].a;
  *&retstr->a = *&self[9].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].c;
  return self;
}

- (CGAffineTransform)imageDataToVisualSizeTransform
{
  [-[TSDImageLayout imageGeometry](self "imageGeometry")];
  v6 = v5;
  v8 = v7;
  result = [-[TSDImageLayout imageInfo](self "imageInfo")];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (v10 > 0.0 || v11 > 0.0)
  {
    v14 = v6 / v10;
    v15 = v8 / v11;

    return CGAffineTransformMakeScale(retstr, v14, v15);
  }

  else
  {
    v12 = MEMORY[0x277CBF2C0];
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v13;
    *&retstr->tx = *(v12 + 32);
  }

  return result;
}

- (id)imageAdjustments
{
  if (self->mIsUpdatingImageAdjustments)
  {
    return self->mDynamicImageAdjustments;
  }

  imageInfo = [(TSDImageLayout *)self imageInfo];

  return [imageInfo imageAdjustments];
}

- (void)dynamicImageAdjustmentsChangeDidEnd
{
  self->mIsUpdatingImageAdjustments = 0;

  self->mDynamicImageAdjustments = 0;
}

- (CGRect)boundsInfluencingExteriorWrap
{
  [(TSDMediaLayout *)self alignmentFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(TSDAbstractLayout *)self parent])
  {
    [[(TSDAbstractLayout *)self parent] rectInRoot:x, y, width, height];
    x = v11;
    y = v12;
    width = v13;
    height = v14;
  }

  exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (exteriorTextWrap)
  {
    [exteriorTextWrap margin];
    if (v16 > 0.0)
    {
      v17 = -v16;
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectInset(v22, v17, v17);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)i_computeWrapPath
{
  imageInfo = [(TSDImageLayout *)self imageInfo];
  objc_opt_class();
  [(TSDMediaLayout *)self stroke];
  v4 = TSUDynamicCast();
  v5 = v4;
  if (v4 && [v4 shouldRender])
  {
    isFrame = [v5 isFrame];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    isFrame = 0;
  }

  instantAlphaPath = [imageInfo instantAlphaPath];
  maskLayout = [(TSDImageLayout *)self maskLayout];
  v10 = [-[TSDImageLayout maskLayout](self "maskLayout")];
  memset(&v38, 0, sizeof(v38));
  if (maskLayout)
  {
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&v37, 0, sizeof(v37));
    }

    CGAffineTransformInvert(&v38, &v37);
    if (instantAlphaPath)
    {
LABEL_22:
      v12 = [objc_msgSend(imageInfo "instantAlphaPath")];
      if (self)
      {
        [(TSDImageLayout *)self imageDataToVisualSizeTransform];
      }

      else
      {
        memset(&v37, 0, sizeof(v37));
      }

      [v12 transformUsingAffineTransform:&v37];
      v37 = v38;
      [v12 transformUsingAffineTransform:&v37];
      if (isFrame)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v38.a = *MEMORY[0x277CBF2C0];
    *&v38.c = v11;
    *&v38.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (instantAlphaPath)
    {
      goto LABEL_22;
    }
  }

  v12 = 0;
  if (isFrame)
  {
LABEL_26:
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
    v28 = TSDRectWithSize();
    if (instantAlphaPath && !maskLayout)
    {
      [v5 boundsForPath:{v12, v28}];
    }

    v16 = [TSDBezierPath bezierPathWithRect:v28];
    goto LABEL_38;
  }

LABEL_10:
  if (v7 && [(TSDImageLayout *)self hasAlpha])
  {
    [imageInfo naturalSize];
    v13 = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
  }

  else
  {
    mTracedPath = self->mTracedPath;
    if (!mTracedPath)
    {
      mTracedPath = [imageInfo tracedPath];
      self->mTracedPath = mTracedPath;
    }

    v13 = [(TSDBezierPath *)mTracedPath copy];
  }

  v15 = v13;
  [(TSDBezierPath *)v13 bounds];
  if (CGRectIsEmpty(v39))
  {
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
    v16 = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
  }

  else
  {
    [-[TSDImageLayout imageGeometry](self "imageGeometry")];
    v18 = v17;
    v20 = v19;
    [imageInfo naturalSize];
    memset(&v37, 0, sizeof(v37));
    CGAffineTransformMakeScale(&v37, v18 / v21, v20 / v22);
    v36 = v37;
    [(TSDBezierPath *)v15 transformUsingAffineTransform:&v36];
    if (maskLayout)
    {
      maskLayout2 = [(TSDImageLayout *)self maskLayout];
      v36 = v38;
      [(TSDBezierPath *)v15 transformUsingAffineTransform:&v36];
      v24 = +[TSDBezierPath bezierPathWithCGPath:](TSDBezierPath, "bezierPathWithCGPath:", [maskLayout2 path]);
      [maskLayout2 pathBounds];
      CGAffineTransformMakeTranslation(&v36, -v25, -v26);
      [(TSDBezierPath *)v24 transformUsingAffineTransform:&v36];
      v27 = [(TSDBezierPath *)v15 intersectBezierPath:v24];
    }

    else
    {
      v27 = v15;
    }

    v16 = v27;
    if (instantAlphaPath)
    {
      v16 = [(TSDBezierPath *)v27 intersectBezierPath:v12];
    }

    if (v7)
    {
      [(TSDBezierPath *)v16 takeAttributesFromStroke:v5];
      v29 = [(TSDBezierPath *)v16 uniteWithBezierPath:[(TSDBezierPath *)v16 outlineStroke]];
      if (v29)
      {
        v30 = v29;
        if ([(TSDBezierPath *)v29 elementCount]> 0)
        {
          v16 = v30;
        }
      }
    }
  }

LABEL_38:
  if ([(TSDBezierPath *)v16 elementCount]>= 2)
  {
    [(TSDBezierPath *)v16 bounds];
    v32 = fmin(v31, 0.0);
    v34 = fmin(v33, 0.0);
    if (!TSDNearlyEqualPoints(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v32, v34))
    {
      CGAffineTransformMakeTranslation(&v37, -v32, -v34);
      [(TSDBezierPath *)v16 transformUsingAffineTransform:&v37];
    }
  }

  return v16;
}

- (void)p_createDynamicCopies
{
  if (self->mDynamicInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout p_createDynamicCopies]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 1356, @"expected nil value for '%s'", "mDynamicInfoGeometry"}];
  }

  self->mDynamicInfoGeometry = [-[TSDInfo geometry](-[TSDLayout info](self "info")];
}

- (void)p_setDynamicInfoGeometry:(id)geometry
{
  self->mDynamicInfoGeometry = [geometry copy];
  [(TSDLayout *)self invalidateFrame];

  [(TSDMediaLayout *)self invalidateAlignmentFrame];
}

- (void)p_destroyDynamicCopies
{
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  if (!mDynamicInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageLayout p_destroyDynamicCopies]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageLayout.m"), 1372, @"invalid nil value for '%s'", "mDynamicInfoGeometry"}];
    mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  }

  self->mDynamicInfoGeometry = 0;
  [(TSDLayout *)self invalidateFrame];

  [(TSDMediaLayout *)self invalidateAlignmentFrame];
}

@end