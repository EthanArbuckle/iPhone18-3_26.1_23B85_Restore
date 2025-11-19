@interface TSDConnectionLineAbstractLayout
- (BOOL)isStraightLine;
- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)i_accumulatedDrag;
- (CGPoint)unclippedHeadPoint;
- (CGPoint)unclippedTailPoint;
- (CGRect)boundsForStandardKnobs;
- (TSDConnectionLinePathSource)connectedPathSource;
- (double)outsetFrom;
- (double)outsetTo;
- (id)additionalLayoutsForRepCreation;
- (id)clipPath:(id)a3 onLayout:(id)a4 outset:(double)a5 reversed:(BOOL)a6 isValid:(BOOL *)a7;
- (id)layoutInfoGeometry;
- (id)p_infoForConnectingToInfo:(id)a3;
- (id)path;
- (id)pathSource;
- (id)reliedOnLayouts;
- (int)wrapType;
- (void)beginDynamicOperation;
- (void)checkConnections;
- (void)connectedLayoutInvalidated:(id)a3;
- (void)dealloc;
- (void)endDynamicOperation;
- (void)invalidateConnections;
- (void)invalidatePath;
- (void)invalidatePosition;
- (void)parentDidChange;
- (void)pauseDynamicTransformation;
- (void)processChangedProperty:(int)a3;
- (void)removeConnections;
- (void)setConnectedFrom:(id)a3;
- (void)setConnectedTo:(id)a3;
- (void)updateConnectedPath;
- (void)updateRepPath;
- (void)validate;
@end

@implementation TSDConnectionLineAbstractLayout

- (void)dealloc
{
  if (self->mConnectedFrom)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineAbstractLayout dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineAbstractLayout.m"), 53, @"expected nil value for '%s'", "mConnectedFrom"}];
  }

  if (self->mConnectedTo)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineAbstractLayout dealloc]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineAbstractLayout.m"), 54, @"expected nil value for '%s'", "mConnectedTo"}];
  }

  v7.receiver = self;
  v7.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v7 dealloc];
}

- (double)outsetFrom
{
  if (self->mUseDynamicOutsets)
  {
    return self->mDynamicOutsetFrom;
  }

  v5 = [-[TSDShapeLayout shapeInfo](self shapeInfo];

  [v5 outsetFrom];
  return result;
}

- (double)outsetTo
{
  if (self->mUseDynamicOutsets)
  {
    return self->mDynamicOutsetTo;
  }

  v5 = [-[TSDShapeLayout shapeInfo](self shapeInfo];

  [v5 outsetTo];
  return result;
}

- (void)setConnectedFrom:(id)a3
{
  if (a3 == self)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineAbstractLayout setConnectedFrom:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineAbstractLayout.m"), 85, @"trying to connect a c-line to itself"}];
  }

  self->mConnectedFrom = a3;
}

- (void)setConnectedTo:(id)a3
{
  if (a3 == self)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineAbstractLayout setConnectedTo:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineAbstractLayout.m"), 91, @"trying to connect a c-line to itself"}];
  }

  self->mConnectedTo = a3;
}

- (id)reliedOnLayouts
{
  [(TSDConnectionLineAbstractLayout *)self checkConnections];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = v3;
  if (self->mConnectedFrom)
  {
    [v3 addObject:?];
  }

  if (self->mConnectedTo)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)additionalLayoutsForRepCreation
{
  v2 = [(TSDConnectionLineAbstractLayout *)self reliedOnLayouts];

  return [v2 allObjects];
}

- (void)updateRepPath
{
  v2 = [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];

  [v2 processChangedProperty:526];
}

- (void)parentDidChange
{
  if (![(TSDAbstractLayout *)self parent])
  {
    [(TSDConnectionLineAbstractLayout *)self removeConnections];
  }

  [(TSDConnectionLineAbstractLayout *)self invalidatePath];
  v3.receiver = self;
  v3.super_class = TSDConnectionLineAbstractLayout;
  [(TSDDrawableLayout *)&v3 parentDidChange];
}

- (void)processChangedProperty:(int)a3
{
  v3 = *&a3;
  if ((a3 - 539) > 1)
  {
    if (a3 == 526)
    {
      v5 = objc_opt_class();
      if (v5 != [(TSDInfo *)[(TSDLayout *)self info] layoutClass])
      {
        [-[TSDLayout layoutController](self "layoutController")];
      }
    }
  }

  else
  {
    [(TSDConnectionLineAbstractLayout *)self invalidateConnections];
  }

  v6.receiver = self;
  v6.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v6 processChangedProperty:v3];
}

- (void)connectedLayoutInvalidated:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(TSDLayout *)self layoutState]!= 2 || ![(TSDLayout *)self isBeingTransformed])
  {
    if (a3)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      obj = +[TSDLayoutController allInteractiveLayoutControllers];
      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v22;
        do
        {
          v8 = 0;
          do
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v21 + 1) + 8 * v8);
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            v10 = [v9 layoutsForInfo:{-[TSDLayout info](self, "info")}];
            v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v18;
              do
              {
                v14 = 0;
                do
                {
                  if (*v18 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v17 + 1) + 8 * v14);
                  if (v15 != self)
                  {
                    if ([(TSDConnectionLineAbstractLayout *)v15 isMemberOfClass:objc_opt_class()])
                    {
                      [(TSDConnectionLineAbstractLayout *)v15 invalidateConnections];
                    }
                  }

                  ++v14;
                }

                while (v12 != v14);
                v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v12);
            }

            ++v8;
          }

          while (v8 != v6);
          v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v6);
      }
    }

    [(TSDConnectionLineAbstractLayout *)self invalidatePath];
    [(TSDShapeLayout *)self invalidateFrame];
    *&self->super.mShapeInvalidFlags |= 0x20u;
    [(TSDDrawableLayout *)self invalidate];
    [(TSDConnectionLineAbstractLayout *)self updateRepPath];
    [(TSDDrawableLayout *)self i_invalidateWrap];
  }
}

- (void)removeConnections
{
  self->mValidConnections = 0;
  mConnectedFrom = self->mConnectedFrom;
  if (mConnectedFrom)
  {
    [(TSDLayout *)mConnectedFrom removeConnectedLayout:self];
  }

  mConnectedTo = self->mConnectedTo;
  if (mConnectedTo)
  {
    [(TSDLayout *)mConnectedTo removeConnectedLayout:self];
  }

  self->mConnectedFrom = 0;
  self->mConnectedTo = 0;
}

- (void)invalidateConnections
{
  self->mValidConnections = 0;
  [(TSDConnectionLineAbstractLayout *)self invalidatePath];
  [(TSDShapeLayout *)self invalidateFrame];

  [(TSDDrawableLayout *)self invalidate];
}

- (void)validate
{
  if ([(TSDLayout *)self invalidGeometry])
  {
    [(TSDConnectionLineAbstractLayout *)self invalidatePath];
  }

  v3.receiver = self;
  v3.super_class = TSDConnectionLineAbstractLayout;
  [(TSDLayout *)&v3 validate];
}

- (void)checkConnections
{
  if (!self->mValidConnections)
  {
    v3 = [(TSDLayout *)self layoutController];
    v4 = [(TSDConnectionLineAbstractLayout *)self connectionLineInfo];
    v5 = -[TSDConnectionLineAbstractLayout p_infoForConnectingToInfo:](self, "p_infoForConnectingToInfo:", [v4 connectedFrom]);
    v6 = -[TSDConnectionLineAbstractLayout p_infoForConnectingToInfo:](self, "p_infoForConnectingToInfo:", [v4 connectedTo]);
    v7 = [(TSDAbstractLayout *)self parent];
    v8 = [v3 layoutForInfo:v5 childOfLayout:v7];
    v9 = [v3 layoutForInfo:v6 childOfLayout:v7];
    mConnectedFrom = self->mConnectedFrom;
    if (v8 != mConnectedFrom)
    {
      if (mConnectedFrom)
      {
        [(TSDLayout *)mConnectedFrom removeConnectedLayout:self];
      }

      self->mConnectedFrom = v8;
      if (v8)
      {
        [(TSDLayout *)v8 addConnectedLayout:self];
      }
    }

    mConnectedTo = self->mConnectedTo;
    if (v9 != mConnectedTo)
    {
      if (mConnectedTo)
      {
        [(TSDLayout *)mConnectedTo removeConnectedLayout:self];
      }

      self->mConnectedTo = v9;
      if (v9)
      {
        [(TSDLayout *)v9 addConnectedLayout:self];
      }
    }

    if ((v5 != 0) != (v8 == 0) && (v6 != 0) != (v9 == 0))
    {
      self->mValidConnections = 1;
      [(TSDConnectionLineAbstractLayout *)self updateRepPath];

      [(TSDDrawableLayout *)self invalidateExteriorWrap];
    }
  }
}

- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)clipPath:(id)a3 onLayout:(id)a4 outset:(double)a5 reversed:(BOOL)a6 isValid:(BOOL *)a7
{
  v8 = a6;
  v50[2] = *MEMORY[0x277D85DE8];
  [a3 length];
  v14 = v13;
  v15 = [a4 i_externalWrapPath];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if ([(TSDBezierPath *)v15 isEmpty])
  {
    return 0;
  }

  v48 = a7;
  if (a5 <= 0.0)
  {
    v19 = v16;
  }

  else
  {
    if (self->mCachedFromWrapPath == v16 && self->mCachedFromOutset == a5)
    {
      v21 = 696;
    }

    else
    {
      if (self->mCachedToWrapPath != v16 || self->mCachedToOutset != a5)
      {
        [(TSDBezierPath *)v16 setLineWidth:a5 + a5];
        [(TSDBezierPath *)v16 setLineJoinStyle:1];
        [(TSDBezierPath *)v16 setLineCapStyle:1];
        v50[0] = v16;
        v50[1] = [(TSDBezierPath *)v16 outlineStroke];
        v19 = +[TSDBezierPath uniteBezierPaths:](TSDBezierPath, "uniteBezierPaths:", [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2]);
        if (self->mConnectedFrom == a4)
        {

          self->mCachedFromOutsetWrapPath = v19;
          self->mCachedFromWrapPath = v16;
          v20 = 680;
        }

        else
        {

          self->mCachedToOutsetWrapPath = v19;
          self->mCachedToWrapPath = v16;
          v20 = 688;
        }

        *(&self->super.super.super.super.super.super.isa + v20) = a5;
        goto LABEL_18;
      }

      v21 = 704;
    }

    v19 = *(&self->super.super.super.super.super.super.isa + v21);
  }

LABEL_18:
  v22 = [(TSDBezierPath *)v19 copy];
  v23 = [a4 geometry];
  if (v23)
  {
    [v23 transform];
  }

  else
  {
    memset(v49, 0, sizeof(v49));
  }

  [v22 transformUsingAffineTransform:v49];
  v24 = [MEMORY[0x277CBEB18] array];
  [a3 addIntersectionsWithPath:v22 to:v24 allIntersections:1 reversed:0];
  if (![v24 count])
  {
    goto LABEL_43;
  }

  [v24 sortUsingSelector:sel_compareSegmentAndT_];
  v25 = [v24 count];
  if ((v25 & 0x8000000000000000) != 0)
  {
    [TSDConnectionLineAbstractLayout clipPath:onLayout:outset:reversed:isValid:];
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v8 ? v25 - 1 : 0;
  v27 = v8 ? -1 : 1;
  if (v26 >= v25)
  {
LABEL_43:
    v41 = v48;
    *v48 = 1;
    goto LABEL_44;
  }

  v28 = 1.0 / v14;
  v29 = 1.0 - 1.0 / v14;
  while (1)
  {
    v17 = [v24 objectAtIndex:v26];
    v26 += v27;
    if (v26 >= v25)
    {
      if (v8)
      {
        v31 = 0;
        v33 = 0.0;
      }

      else
      {
        v31 = [a3 elementCount] - 1;
        v33 = 1.0;
      }
    }

    else
    {
      v30 = [v24 objectAtIndex:v26];
      v31 = [v30 segment];
      [v30 t];
      v33 = v32;
    }

    v34 = vcvtd_n_f64_s64([(TSDPathIntersection *)v17 segment]+ v31, 1uLL);
    v35 = ceil(v34);
    v36 = floor(v34);
    if (v8)
    {
      v36 = v35;
    }

    v37 = v36;
    [(TSDPathIntersection *)v17 t];
    [a3 pointAt:v37 fromElement:(v33 + v38) * 0.5];
    if (([v22 containsPoint:?] & 1) == 0)
    {
      [(TSDPathIntersection *)v17 t];
      if (v39 > v28)
      {
        [(TSDPathIntersection *)v17 t];
        if (v40 < v29)
        {
          break;
        }
      }
    }

    if (v26 >= v25)
    {
      goto LABEL_43;
    }
  }

  v41 = v48;
  *v48 = 1;
  if (!v17)
  {
LABEL_44:
    if (v8)
    {
      [a3 pointAt:objc_msgSend(a3 fromElement:{"elementCount") - 1, 0.99}];
      if ([v22 containsPoint:?])
      {
        v42 = [TSDPathIntersection alloc];
        v43 = *MEMORY[0x277CBF348];
        v44 = *(MEMORY[0x277CBF348] + 8);
        v45 = 0.0;
        v46 = 0;
LABEL_49:
        v17 = [(TSDPathIntersection *)v42 initWithSegment:v46 atT:v45 atPoint:v43, v44];
        *v41 = 0;
        return v17;
      }
    }

    else
    {
      [a3 pointAt:1 fromElement:0.01];
      if ([v22 containsPoint:?])
      {
        v47 = [TSDPathIntersection alloc];
        v46 = [a3 elementCount] - 1;
        v43 = *MEMORY[0x277CBF348];
        v44 = *(MEMORY[0x277CBF348] + 8);
        v45 = 1.0;
        v42 = v47;
        goto LABEL_49;
      }
    }

    return 0;
  }

  return v17;
}

- (void)updateConnectedPath
{
  v62 = *MEMORY[0x277D85DE8];
  [(TSDConnectionLineAbstractLayout *)self checkConnections];
  mConnectedFrom = self->mConnectedFrom;
  if (mConnectedFrom && (v4 = [(TSDAbstractLayout *)mConnectedFrom parent], v4 == [(TSDAbstractLayout *)self parent]))
  {
    v5 = self->mConnectedFrom;
  }

  else
  {
    v5 = 0;
  }

  mConnectedTo = self->mConnectedTo;
  if (mConnectedTo && (v7 = [(TSDAbstractLayout *)mConnectedTo parent], v7 == [(TSDAbstractLayout *)self parent]))
  {
    v8 = self->mConnectedTo;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (!self->super.mResizePathSource)
  {
    [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  }

  v9 = TSUDynamicCast();
  mResizeInfoGeometry = self->super.mResizeInfoGeometry;
  if (!mResizeInfoGeometry)
  {
    mResizeInfoGeometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  }

  v11 = MEMORY[0x277CBF348];
  v55 = *MEMORY[0x277CBF348];
  v56 = v55;
  [objc_msgSend(v9 "bezierPath")];
  if (![(TSDConnectionLineAbstractLayout *)self canEndpointsCoincide]&& TSDNearlyEqualPoints(*&v55, *(&v55 + 1), *&v56, *(&v56 + 1)))
  {
    v9 = [TSDConnectionLinePathSource pathSourceOfLength:100.0];
    [objc_msgSend(v9 "bezierPath")];
    v12 = [TSDInfoGeometry alloc];
    [(TSDInfoGeometry *)mResizeInfoGeometry position];
    mResizeInfoGeometry = [TSDInfoGeometry initWithPosition:v12 size:"initWithPosition:size:"];
    if (TSDNearlyEqualPoints(*&v55, *(&v55 + 1), *&v56, *(&v56 + 1)))
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineAbstractLayout updateConnectedPath]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineAbstractLayout.m"), 435, @"head and tail should no longer be equal"}];
    }
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  if (mResizeInfoGeometry)
  {
    [(TSDInfoGeometry *)mResizeInfoGeometry transform];
    v15 = *(&v52 + 1);
    v16 = *&v52;
    v17 = *(&v53 + 1);
    v18 = *&v53;
    v19 = *(&v54 + 1);
    v20 = *&v54;
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v21 = v20 + *(&v56 + 1) * v18 + v16 * *&v56;
  v22 = v19 + *(&v56 + 1) * v17 + v15 * *&v56;
  *&v56 = v21;
  *(&v56 + 1) = v22;
  v23 = v20 + v18 * *(&v55 + 1) + v16 * *&v55;
  v24 = v19 + v17 * *(&v55 + 1) + v15 * *&v55;
  *&v55 = v23;
  *(&v55 + 1) = v24;
  y = v22;
  x = v21;
  if (v5)
  {
    [(TSDLayout *)v5 centerForConnecting];
    x = v27;
    y = v28;
  }

  if (v8)
  {
    [(TSDLayout *)v8 centerForConnecting];
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v32 = *(&v55 + 1);
    v30 = *&v55;
  }

  if (self->mUseResizePoints[0])
  {
    x = self->mResizeControlPoints[0].x;
    y = self->mResizeControlPoints[0].y;
  }

  if (self->mUseResizePoints[2])
  {
    v30 = self->mResizeControlPoints[2].x;
    v32 = self->mResizeControlPoints[2].y;
  }

  if (![(TSDConnectionLineAbstractLayout *)self canEndpointsCoincide]&& TSDNearlyEqualPoints(x, y, v30, v32) || (TSDPointHasNaNComponents() & 1) != 0 || TSDPointHasNaNComponents())
  {
    self->mValidLine = 0;
    self->mVisibleLine = 0;

    self->mConnectedInfoGeometry = mResizeInfoGeometry;
    self->mConnectedPathSource = [v9 copy];

    v33 = +[TSDBezierPath bezierPath];
    self->mClippedBezierPath = v33;
    v34 = *v11;
    v35 = v11[1];
    [(TSDBezierPath *)v33 moveToPoint:*v11, v35];
    [(TSDBezierPath *)self->mClippedBezierPath lineToPoint:v34, v35];
  }

  else
  {
    self->mValidLine = 1;
    v57 = x;
    v58 = y;
    if (self->mUseResizePoints[1])
    {
      v59 = self->mResizeControlPoints[1];
    }

    else
    {
      [(TSDConnectionLineAbstractLayout *)self controlPointForPointA:x pointB:y andOriginalA:v30 originalB:v32, v21, v22, v23, v24];
      v59.x = v36;
      v59.y = v37;
    }

    v60 = v30;
    v61 = v32;
    v38 = [(TSDConnectionLineAbstractLayout *)self createConnectedPathFrom:v5 to:v8 withControlPoints:&v57];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    self->mConnectedInfoGeometry = [[TSDInfoGeometry alloc] initWithPosition:v40 size:v42, v44, v46];
    v47 = +[TSDBezierPath bezierPath];
    [v47 moveToPoint:{v57, v58}];
    [v47 lineToPoint:v59];
    [v47 lineToPoint:{v60, v61}];
    mConnectedInfoGeometry = self->mConnectedInfoGeometry;
    if (mConnectedInfoGeometry)
    {
      [(TSDInfoGeometry *)mConnectedInfoGeometry transform];
    }

    else
    {
      memset(&v50, 0, sizeof(v50));
    }

    CGAffineTransformInvert(&v51, &v50);
    [v47 transformUsingAffineTransform:&v51];

    self->mConnectedPathSource = [[TSDConnectionLinePathSource alloc] initWithBezierPath:v47];
    -[TSDConnectionLinePathSource setType:](self->mConnectedPathSource, "setType:", [v9 type]);
    [v9 outsetFrom];
    [(TSDConnectionLinePathSource *)self->mConnectedPathSource setOutsetFrom:?];
    [v9 outsetTo];
    [(TSDConnectionLinePathSource *)self->mConnectedPathSource setOutsetTo:?];
    v49 = self->mConnectedInfoGeometry;
    if (v49)
    {
      [(TSDInfoGeometry *)v49 transform];
    }

    else
    {
      memset(&v50, 0, sizeof(v50));
    }

    CGAffineTransformInvert(&v51, &v50);
    [v38 transformUsingAffineTransform:&v51];

    self->mClippedBezierPath = v38;
  }
}

- (int)wrapType
{
  if ([(TSDConnectionLineAbstractLayout *)self isInvisible])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDConnectionLineAbstractLayout;
  return [(TSDDrawableLayout *)&v4 wrapType];
}

- (TSDConnectionLinePathSource)connectedPathSource
{
  result = self->mConnectedPathSource;
  if (!result || !self->mValidConnections)
  {
    [(TSDConnectionLineAbstractLayout *)self updateConnectedPath];
    return self->mConnectedPathSource;
  }

  return result;
}

- (id)pathSource
{
  [(TSDConnectionLineAbstractLayout *)self checkConnections];
  v3 = [(TSDConnectionLineAbstractLayout *)self connectedPathSource];

  return v3;
}

- (id)layoutInfoGeometry
{
  mConnectedInfoGeometry = self->mConnectedInfoGeometry;
  if (!mConnectedInfoGeometry || !self->mValidConnections)
  {
    [(TSDConnectionLineAbstractLayout *)self updateConnectedPath];
    mConnectedInfoGeometry = self->mConnectedInfoGeometry;
  }

  v4 = mConnectedInfoGeometry;

  return v4;
}

- (CGRect)boundsForStandardKnobs
{
  [-[TSDConnectionLineAbstractLayout path](self "path")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDShapeLayout *)self pathBounds];
  v12 = -v11;
  v14 = -v13;
  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;

  return CGRectOffset(*&v15, v12, v14);
}

- (void)invalidatePosition
{
  v3.receiver = self;
  v3.super_class = TSDConnectionLineAbstractLayout;
  [(TSDLayout *)&v3 invalidatePosition];

  self->mConnectedInfoGeometry = 0;
}

- (void)invalidatePath
{
  v3.receiver = self;
  v3.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v3 invalidatePath];
  [(TSDDrawableLayout *)self invalidate];
  [(TSDConnectionLineAbstractLayout *)self invalidatePosition];

  self->mConnectedPathSource = 0;
  self->mClippedBezierPath = 0;
}

- (id)path
{
  result = self->mClippedBezierPath;
  if (!result || !self->mValidConnections)
  {
    [(TSDConnectionLineAbstractLayout *)self updateConnectedPath];
    return self->mClippedBezierPath;
  }

  return result;
}

- (CGPoint)unclippedHeadPoint
{
  [(TSDConnectionLineAbstractLayout *)self checkConnections];
  if (self->mConnectedTo)
  {
    v7 = 0.0;
    v8 = 0.0;
    [-[TSDConnectionLinePathSource bezierPath](-[TSDConnectionLineAbstractLayout connectedPathSource](self connectedPathSource];
    v3 = v7;
    v4 = v8;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSDConnectionLineAbstractLayout;
    [(TSDShapeLayout *)&v6 unclippedHeadPoint];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)unclippedTailPoint
{
  [(TSDConnectionLineAbstractLayout *)self checkConnections];
  if (self->mConnectedFrom)
  {
    v7 = 0.0;
    v8 = 0.0;
    [-[TSDConnectionLinePathSource bezierPath](-[TSDConnectionLineAbstractLayout connectedPathSource](self connectedPathSource];
    v3 = v7;
    v4 = v8;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSDConnectionLineAbstractLayout;
    [(TSDShapeLayout *)&v6 unclippedTailPoint];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)beginDynamicOperation
{
  v13.receiver = self;
  v13.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v13 beginDynamicOperation];
  self->mOriginalPathSource = [-[TSDConnectionLineAbstractLayout pathSource](self "pathSource")];

  self->super.mResizePathSource = 0;
  self->super.mResizePathSource = [-[TSDConnectionLineAbstractLayout pathSource](self "pathSource")];

  self->super.mInitialInfoGeometry = [(TSDConnectionLineAbstractLayout *)self layoutInfoGeometry];
  self->mOldConnectedFrom = self->mConnectedFrom;
  self->mOldConnectedTo = self->mConnectedTo;
  self->mAcumulatedDrag = *MEMORY[0x277CBF348];
  p_mLooseEndPosition = &self->mLooseEndPosition;
  if (self->mConnectedTo)
  {
    [(TSDConnectionLineAbstractLayout *)self unclippedTailPoint];
  }

  else
  {
    [(TSDConnectionLineAbstractLayout *)self unclippedHeadPoint];
  }

  p_mLooseEndPosition->x = v4;
  self->mLooseEndPosition.y = v5;
  v6 = [(TSDLayout *)self pureGeometry];
  if (v6)
  {
    [v6 transform];
    v7 = v10;
    v8 = v11;
    v9 = v12;
  }

  else
  {
    v9 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *p_mLooseEndPosition = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, self->mLooseEndPosition.y), v7, p_mLooseEndPosition->x));
  *self->mUseResizePoints = 0;
  self->mUseResizePoints[2] = 0;
}

- (void)endDynamicOperation
{
  v3.receiver = self;
  v3.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v3 endDynamicOperation];

  self->mOriginalPathSource = 0;
  self->mOldConnectedFrom = 0;

  self->mOldConnectedTo = 0;
  *self->mUseResizePoints = 0;
  self->mUseResizePoints[2] = 0;
}

- (CGPoint)i_accumulatedDrag
{
  x = self->mAcumulatedDrag.x;
  y = self->mAcumulatedDrag.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)pauseDynamicTransformation
{
  v20.receiver = self;
  v20.super_class = TSDConnectionLineAbstractLayout;
  [(TSDLayout *)&v20 pauseDynamicTransformation];
  if ([(TSDLayout *)self layoutState]== 2)
  {
    if (self->mConnectedTo)
    {
      [(TSDConnectionLineAbstractLayout *)self unclippedTailPoint];
    }

    else
    {
      [(TSDConnectionLineAbstractLayout *)self unclippedHeadPoint];
    }

    v7 = [(TSDLayout *)self pureGeometry:v5];
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    if (v7)
    {
      [v7 transform];
      v9 = *&v19.a;
      v10 = *&v19.c;
      v8 = *&v19.tx;
    }

    v11 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v10, v16), v9, v17));
    v12 = TSDSubtractPoints(v11.f64[0], v11.f64[1], self->mLooseEndPosition.x);
    self->mAcumulatedDrag.x = v12;
    self->mAcumulatedDrag.y = v13;
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeTranslation(&v19, v12, v13);
    mInitialInfoGeometry = self->super.mInitialInfoGeometry;
    v18 = v19;
    v15 = [(TSDInfoGeometry *)mInitialInfoGeometry geometryByAppendingTransform:&v18];

    self->super.mResizeInfoGeometry = v15;
  }
}

- (BOOL)isStraightLine
{
  objc_opt_class();
  [(TSDConnectionLineAbstractLayout *)self pathSource];
  v3 = TSUDynamicCast();
  [v3 getControlKnobPosition:10];
  v5 = v4;
  v7 = v6;
  [v3 getControlKnobPosition:12];
  v9 = v8;
  v11 = v10;
  [v3 getControlKnobPosition:11];
  v13 = v12;
  v15 = v14;
  v16 = TSDNearlyCollinearPoints(v5, v7, v9, v11, v12, v14);
  if (v16)
  {
    v17 = TSDMultiplyPointScalar(v5, v7, 0.25);
    v18 = TSDSubtractPoints(v9, v11, v17);
    v20 = v19;
    v21 = TSDMultiplyPointScalar(v13, v15, 0.25);
    v22 = TSDSubtractPoints(v18, v20, v21);
    v24 = TSDMultiplyPointScalar(v22, v23, 2.0);
    v26 = v25;
    v27 = TSDSubtractPoints(v5, v7, v24);
    v29 = v28;
    v30 = TSDSubtractPoints(v24, v26, v13);
    LOBYTE(v16) = TSDDotPoints(v27, v29, v30, v31) > 0.0;
  }

  return v16;
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v4 = [(TSDConnectionLineAbstractLayout *)self connectedPathSource];

  [(TSDConnectionLinePathSource *)v4 getControlKnobPosition:a3];
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)p_infoForConnectingToInfo:(id)a3
{
  [objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  v4 = TSUProtocolCast();
  if (!v4)
  {
    return a3;
  }

  return [v4 infoToConnectToForConnectionLineConnectedToInfo:a3];
}

- (uint64_t)clipPath:onLayout:outset:reversed:isValid:.cold.1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineAbstractLayout clipPath:onLayout:outset:reversed:isValid:]"];
  return [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineAbstractLayout.m"), 344, @"Out-of-bounds type assignment was clamped to max"}];
}

@end