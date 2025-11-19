@interface TSDBezierSubpath
- (BOOL)allNodesSelected;
- (BOOL)canDeleteSelectedNodes;
- (BOOL)closeIfEndpointsAreEqual;
- (BOOL)hasSelectedNode;
- (BOOL)isCircular;
- (BOOL)isRectangular;
- (CGRect)nodeBounds;
- (TSDBezierNode)lastNode;
- (TSDBezierPath)bezierPath;
- (TSDBezierSubpath)init;
- (double)distanceToPoint:(CGPoint)a3 elementIndex:(unint64_t *)a4 tValue:(double *)a5 threshold:(double)a6;
- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)insertNodeAtPoint:(CGPoint)a3 tolerance:(double)a4;
- (id)nodeAfterNode:(id)a3;
- (id)nodePriorToNode:(id)a3;
- (id)splitEdgeAtIndex:(unint64_t)a3;
- (void)appendToBezierPath:(id)a3 selectedNodesOnly:(BOOL)a4 fromIndex:(unint64_t)a5;
- (void)convertToHobby;
- (void)dealloc;
- (void)deleteSelectedNodes;
- (void)deselectAllNodes;
- (void)offsetSelectedEdgesByDelta:(CGPoint)a3;
- (void)offsetSelectedNodesByDelta:(CGPoint)a3;
- (void)reverseDirection;
- (void)selectAllNodes;
- (void)smoothNode:(id)a3;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
@end

@implementation TSDBezierSubpath

- (TSDBezierSubpath)init
{
  v4.receiver = self;
  v4.super_class = TSDBezierSubpath;
  v2 = [(TSDBezierSubpath *)&v4 init];
  if (v2)
  {
    v2->mNodes = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setNodes:{objc_msgSend(objc_alloc(MEMORY[0x277CBEB18]), "initWithArray:copyItems:", -[TSDBezierSubpath nodes](self, "nodes"), 1)}];
  [v4 setClosed:self->mClosed];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->mClosed)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@ %p nodes=%p closed=%@>", v5, self, self->mNodes, v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDBezierSubpath;
  [(TSDBezierSubpath *)&v3 dealloc];
}

- (BOOL)isRectangular
{
  v43[4] = *MEMORY[0x277D85DE8];
  v3 = [(TSDBezierSubpath *)self isClosed];
  if (!v3)
  {
    return v3;
  }

  if ([(NSMutableArray *)self->mNodes count]!= 4)
  {
    goto LABEL_23;
  }

  [(NSMutableArray *)self->mNodes getObjects:v43 range:0, 4];
  v4 = 0;
  do
  {
    v3 = [v43[v4] isCollapsed];
    if (v3)
    {
      v5 = v4 >= 3;
    }

    else
    {
      v5 = 1;
    }

    ++v4;
  }

  while (!v5);
  if (v3)
  {
    v6 = 0;
    v7 = v43;
    do
    {
      v8 = &v42[v6 - 1];
      v9 = *v7++;
      [v9 nodePoint];
      *v8 = v10;
      *(v8 + 1) = v11;
      v6 += 2;
    }

    while (v6 != 8);
    v12 = 0;
    v13 = v42;
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v16 = &v42[2 * ((v12 + 1) & 3) - 1];
      v17 = *v16;
      v18 = v16[1];
      v19 = &v42[2 * (v12 ^ 2) - 1];
      v20 = *v19;
      v21 = v19[1];
      v22 = TSDDistance(v14, *v13, v17, v18);
      v23 = TSDDistance(v17, v18, v20, v21);
      v24 = vabdd_f64(TSDDistance(v14, v15, v20, v21), sqrt(v23 * v23 + v22 * v22));
      v13 += 2;
    }

    while (v24 <= 0.00100000005 && v12++ < 3);
    if (v24 <= 0.00100000005)
    {
      v26 = v42;
      v27 = TSDRectWithPoints(v41, v42[0], v42[1]);
      v31 = TSDGrowRectToPoint(v27, v28, v29, v30, v42[3], v42[4]);
      v35 = TSDGrowRectToPoint(v31, v32, v33, v34, v42[5], v42[6]);
      v37 = v36;
      v38 = 3;
      do
      {
        v39 = v38;
        LOBYTE(v3) = TSDNearlyEqualPoints(*(v26 - 1), *v26, v35, v37);
        if (v3)
        {
          break;
        }

        v38 = v39 - 1;
        v26 += 2;
      }

      while (v39);
      return v3;
    }

LABEL_23:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isCircular
{
  v3 = [(TSDBezierSubpath *)self isClosed];
  if (v3)
  {
    v4 = [(TSDBezierSubpath *)self bezierPath];

    LOBYTE(v3) = [(TSDBezierPath *)v4 isCircular];
  }

  return v3;
}

- (TSDBezierPath)bezierPath
{
  v3 = +[TSDBezierPath bezierPath];
  [(TSDBezierSubpath *)self appendToBezierPath:v3 selectedNodesOnly:0 fromIndex:0];
  return v3;
}

- (void)appendToBezierPath:(id)a3 selectedNodesOnly:(BOOL)a4 fromIndex:(unint64_t)a5
{
  v6 = a4;
  v9 = [(NSMutableArray *)self->mNodes count];
  if (v9)
  {
    v10 = v9;
    v11 = a5 == 0 && self->mClosed;
    v12 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:a5];
    [v12 nodePoint];
    v14 = v13;
    v16 = v15;
    [a3 moveToPoint:?];
    v17 = 0;
    v18 = v10 + self->mClosed;
    v19 = a5 + 1;
    do
    {
      if (v19 >= v18)
      {
        break;
      }

      v20 = v16;
      v21 = v14;
      v22 = v12;
      v12 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:v19 % v10];
      [v12 nodePoint];
      v14 = v23;
      v16 = v24;
      if (!v6 || [v22 isSelected] && objc_msgSend(v12, "isSelected"))
      {
        [v22 outControlPoint];
        v26 = v25;
        v28 = v27;
        [v12 inControlPoint];
        v30 = v29;
        v32 = v31;
        if (v17)
        {
          [a3 moveToPoint:{v21, v20}];
        }

        if (TSDNearlyEqualPoints(v21, v20, v26, v28) && TSDNearlyEqualPoints(v30, v32, v14, v16))
        {
          [a3 lineToPoint:{v14, v16}];
        }

        else
        {
          [a3 curveToPoint:v14 controlPoint1:v16 controlPoint2:{v26, v28, v30, v32}];
        }

        v17 = 0;
      }

      else
      {
        v11 = 0;
        v17 = 1;
      }

      ++v19;
    }

    while (v12);
    if (v11)
    {

      [a3 closePath];
    }
  }
}

- (void)reverseDirection
{
  v3 = [(NSMutableArray *)self->mNodes reverseObjectEnumerator];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v5 swapControlPoints];
      [v6 addObject:v5];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [(TSDBezierSubpath *)self setNodes:v6];
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mNodes = self->mNodes;
  v5 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mNodes);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = *&a3->c;
        v11[0] = *&a3->a;
        v11[1] = v10;
        v11[2] = *&a3->tx;
        [v9 transformUsingAffineTransform:v11];
      }

      v6 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)nodePriorToNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mNodes indexOfObject:a3];
  v5 = v4 - 1;
  if (v4 < 1)
  {
    if (self->mClosed)
    {
      mNodes = self->mNodes;

      return [(NSMutableArray *)mNodes lastObject];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = self->mNodes;

    return [(NSMutableArray *)v6 objectAtIndex:v5];
  }
}

- (id)nodeAfterNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mNodes indexOfObject:a3]+ 1;
  if (v4 >= [(NSMutableArray *)self->mNodes count])
  {
    if (!self->mClosed)
    {
      return 0;
    }

    v4 = 0;
  }

  mNodes = self->mNodes;

  return [(NSMutableArray *)mNodes objectAtIndex:v4];
}

- (TSDBezierNode)lastNode
{
  mClosed = self->mClosed;
  mNodes = self->mNodes;
  if (mClosed)
  {
    return [(NSMutableArray *)mNodes objectAtIndex:0];
  }

  else
  {
    return [(NSMutableArray *)mNodes lastObject];
  }
}

- (void)offsetSelectedNodesByDelta:(CGPoint)a3
{
  x = a3.x;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mNodes = self->mNodes;
  v5 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mNodes);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSelected])
        {
          [v9 nodePoint];
          [v9 moveToPoint:{TSDAddPoints(v10, v11, x)}];
        }
      }

      v6 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)a3
{
  x = a3.x;
  v5 = [(NSMutableArray *)self->mNodes objectEnumerator];
  v6 = [-[NSMutableArray lastObject](self->mNodes "lastObject")];
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if ((v6 & 1) != 0 || [v8 isSelected])
      {
        [v8 nodePoint];
        [v8 moveToPoint:{TSDAddPoints(v9, v10, x)}];
        v6 = [v8 isSelected];
      }

      else
      {
        v6 = 0;
      }

      v8 = [v5 nextObject];
    }

    while (v8);
  }
}

- (BOOL)allNodesSelected
{
  v2 = [(NSMutableArray *)self->mNodes reverseObjectEnumerator];
  do
  {
    v3 = [v2 nextObject];
    v4 = v3;
  }

  while (v3 && ([v3 isSelected] & 1) != 0);
  return v4 == 0;
}

- (BOOL)hasSelectedNode
{
  v2 = [(NSMutableArray *)self->mNodes reverseObjectEnumerator];
  do
  {
    v3 = [v2 nextObject];
    v4 = v3;
  }

  while (v3 && ![v3 isSelected]);
  return v4 != 0;
}

- (BOOL)canDeleteSelectedNodes
{
  v2 = [(NSMutableArray *)self->mNodes objectEnumerator];
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [v2 nextObject];
    v6 = v5;
    if (!v5)
    {
      break;
    }

    v7 = [v5 isSelected];
    v3 |= v7;
    v4 += v7 ^ 1u;
  }

  while ((v3 & 1) == 0 || v4 < 2);
  return v6 != 0;
}

- (void)deleteSelectedNodes
{
  v3 = [(NSMutableArray *)self->mNodes objectEnumerator];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v3 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      if (([v6 isSelected] & 1) == 0)
      {
        [(NSMutableArray *)v4 addObject:v6];
      }

      v6 = [v3 nextObject];
    }

    while (v6);
  }

  self->mNodes = v4;
  if ([(NSMutableArray *)v4 count]<= 1)
  {

    [(TSDBezierSubpath *)self setClosed:0];
  }
}

- (void)selectAllNodes
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  mNodes = self->mNodes;
  v3 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(mNodes);
        }

        [*(*(&v7 + 1) + 8 * i) setSelected:1];
      }

      v4 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)deselectAllNodes
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  mNodes = self->mNodes;
  v3 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(mNodes);
        }

        [*(*(&v7 + 1) + 8 * i) setSelected:0];
      }

      v4 = [(NSMutableArray *)mNodes countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (double)distanceToPoint:(CGPoint)a3 elementIndex:(unint64_t *)a4 tValue:(double *)a5 threshold:(double)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = [(NSMutableArray *)self->mNodes count];
  if (!v10)
  {
    return 1.79769313e308;
  }

  v11 = v10;
  v12 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:0];
  [v12 nodePoint];
  v14 = v13;
  v16 = v15;
  v17 = v11 + self->mClosed;
  v44 = a6 * a6;
  if (v17 >= 2 && a6 * a6 < 1.79769313e308)
  {
    v19 = 0;
    v20 = 0.0;
    v21 = 1.79769313e308;
    v23 = 2;
    do
    {
      v46 = v21;
      v47 = v20;
      v24 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:(v23 - 1) % v11, *&v44];
      [v24 nodePoint];
      v26 = v25;
      v28 = v27;
      [v12 outControlPoint];
      v30 = v29;
      v32 = v31;
      [v24 inControlPoint];
      v34 = v33;
      v36 = v35;
      if (TSDNearlyEqualPoints(v14, v16, v30, v32) && TSDNearlyEqualPoints(v34, v36, v26, v28))
      {
        v48.f64[0] = v14;
        v48.f64[1] = v16;
        v49 = v26;
        v50 = v28;
        x = a3.x;
        y = a3.y;
        TSDNearestPointOnLineToPoint(v48.f64, a3.x, a3.y);
        v40 = v39;
        v41 = TSDMixPoints(v48.f64[0], v48.f64[1], v49, v50, v39);
      }

      else
      {
        v48.f64[0] = v14;
        v48.f64[1] = v16;
        v49 = v30;
        v50 = v32;
        v51 = v34;
        v52 = v36;
        v53 = v26;
        v54 = v28;
        x = a3.x;
        y = a3.y;
        v40 = TSDNearestPointOnCurveToPoint(&v48, a3.x, a3.y, 1.0);
        v41 = TSDPointOnCurve(&v48, v40);
      }

      v43 = TSDDistanceSquared(v41, v42, x, y);
      v21 = v46;
      v20 = v47;
      if (v43 < v46)
      {
        v20 = v40;
        v19 = v23 - 2;
        v21 = v43;
      }

      if (v23 >= v17)
      {
        break;
      }

      ++v23;
      v12 = v24;
      v14 = v26;
      v16 = v28;
    }

    while (v21 > v44);
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
    v21 = 1.79769313e308;
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v20;
  }

  return sqrt(v21);
}

- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = [(NSMutableArray *)[(TSDBezierSubpath *)self nodes] objectEnumerator];
  do
  {
    v12 = [v11 nextObject];
    v13 = v12;
    if (!v12)
    {
      break;
    }

    v14 = *&a4->c;
    v16[0] = *&a4->a;
    v16[1] = v14;
    v16[2] = *&a4->tx;
  }

  while (![v12 underPoint:v16 withTransform:a6 andTolerance:x returningType:{y, a5}]);
  return v13;
}

- (id)insertNodeAtPoint:(CGPoint)a3 tolerance:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(NSMutableArray *)[(TSDBezierSubpath *)self nodes] objectEnumerator];
  v9 = +[TSDBezierPath bezierPath];
  v10 = [v8 nextObject];
  v11 = [v8 nextObject];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = v10;
  while (1)
  {
    [v9 removeAllPoints];
    [v13 nodePoint];
    [v9 moveToPoint:?];
    [v12 nodePoint];
    v15 = v14;
    v17 = v16;
    [v13 outControlPoint];
    v19 = v18;
    v21 = v20;
    [v12 inControlPoint];
    [v9 curveToPoint:v15 controlPoint1:v17 controlPoint2:{v19, v21, v22, v23}];
    v9 = [v9 bezierPathByFlatteningPath];
    if ([v9 pointOnPath:x tolerance:{y, a4}])
    {
      break;
    }

    v24 = [v8 nextObject];
    if (v24 || (v25 = [(TSDBezierSubpath *)self isClosed], v24 = v10, v25))
    {
      v13 = v12;
      v12 = v24;
      if (v24)
      {
        continue;
      }
    }

    return 0;
  }

  [v13 nodePoint];
  v28 = v27;
  v30 = v29;
  [v13 outControlPoint];
  if (TSDNearlyEqualPoints(v28, v30, v31, v32) && ([v12 nodePoint], v34 = v33, v36 = v35, objc_msgSend(v12, "outControlPoint"), TSDNearlyEqualPoints(v34, v36, v37, v38)))
  {
    [v13 nodePoint];
    v41 = TSDDistance(x, y, v39, v40);
    [v12 nodePoint];
    v43 = v42;
    v45 = v44;
    [v13 nodePoint];
    v48 = v41 / TSDDistance(v43, v45, v46, v47);
    [v12 nodePoint];
    v50 = v49;
    v52 = v51;
    [v13 nodePoint];
    v54 = TSDSubtractPoints(v50, v52, v53);
    v56 = TSDMultiplyPointScalar(v54, v55, v48);
    [v13 nodePoint];
    v59 = [TSDBezierNode bezierNodeWithPoint:TSDAddPoints(v57, v58, v56)];
  }

  else
  {
    [v13 nodePoint];
    v61 = v60;
    v63 = v62;
    [v13 outControlPoint];
    v65 = v64;
    v67 = v66;
    [v12 inControlPoint];
    v69 = v68;
    v71 = v70;
    [v12 nodePoint];
    v74 = [TSDBezierSegment segmentFromPoint:v61 outPoint:v63 inPoint:v65 toPoint:v67, v69, v71, v72, v73];
    [v74 parametricValueForPoint:{x, y}];
    v98 = 0;
    v99 = 0;
    [v74 splitAtParametricValue:&v99 left:&v98 right:?];
    [v13 nodePoint];
    v76 = v75;
    v78 = v77;
    [v13 outControlPoint];
    if (!TSDNearlyEqualPoints(v76, v78, v79, v80))
    {
      [v99 outPoint];
      [v13 setOutControlPoint:?];
    }

    [v12 nodePoint];
    v82 = v81;
    v84 = v83;
    [v12 outControlPoint];
    if (!TSDNearlyEqualPoints(v82, v84, v85, v86))
    {
      [v98 inPoint];
      [v12 setInControlPoint:?];
    }

    [v99 toPoint];
    v88 = v87;
    v90 = v89;
    [v99 inPoint];
    v92 = v91;
    v94 = v93;
    [v98 outPoint];
    v59 = [TSDBezierNode bezierNodeWithPoint:v88 inControlPoint:v90 outControlPoint:v92, v94, v95, v96];
  }

  v26 = v59;
  [(TSDBezierNode *)v59 setReflectedState:1];
  [(NSMutableArray *)self->mNodes insertObject:v26 atIndex:[(NSMutableArray *)self->mNodes indexOfObject:v12]];
  return v26;
}

- (CGRect)nodeBounds
{
  v3 = MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  if ([(NSMutableArray *)[(TSDBezierSubpath *)self nodes] count])
  {
    v6 = [(NSMutableArray *)[(TSDBezierSubpath *)self nodes] objectEnumerator];
    [objc_msgSend(v6 "nextObject")];
    v8 = v7;
    v10 = v9;
    v11 = [v6 nextObject];
    if (v11)
    {
      v12 = v11;
      do
      {
        [v12 nodePoint];
        v8 = TSDGrowRectToPoint(v8, v10, v4, v5, v13, v14);
        v10 = v15;
        v4 = v16;
        v5 = v17;
        if ([v12 isSelected])
        {
          [v12 inControlPoint];
          v20 = TSDGrowRectToPoint(v8, v10, v4, v5, v18, v19);
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v12 outControlPoint];
          v8 = TSDGrowRectToPoint(v20, v22, v24, v26, v27, v28);
          v10 = v29;
          v4 = v30;
          v5 = v31;
        }

        v12 = [v6 nextObject];
      }

      while (v12);
    }
  }

  else
  {
    v8 = *v3;
    v10 = v3[1];
  }

  v32 = v8;
  v33 = v10;
  v34 = v4;
  v35 = v5;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)smoothNode:(id)a3
{
  v5 = [(TSDBezierSubpath *)self nodePriorToNode:?];
  v6 = [(TSDBezierSubpath *)self nodeAfterNode:a3];
  v7 = v6;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  if (v5)
  {
    [v5 nodePoint];
    v11 = v10;
    v13 = v12;
    [a3 nodePoint];
    v15 = TSDSubtractPoints(v11, v13, v14);
    v17 = v16;
    if (!v7)
    {
      [a3 nodePoint];
      v19 = v18;
      v21 = v20;
      v22 = TSDMultiplyPointScalar(v15, v17, 0.330000013);
      v23 = TSDAddPoints(v19, v21, v22);

      [a3 setInControlPoint:v23];
      return;
    }
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
    if (!v6)
    {
      return;
    }
  }

  [v7 nodePoint];
  v25 = v24;
  v27 = v26;
  [a3 nodePoint];
  v29 = TSDSubtractPoints(v25, v27, v28);
  v31 = v30;
  if (v5)
  {
    if (!TSDNearlyEqualPoints(v15, v17, v8, v9) && !TSDNearlyEqualPoints(v29, v31, v8, v9))
    {
      [a3 inControlPoint];
      v39 = v38;
      v41 = v40;
      [a3 nodePoint];
      if (TSDNearlyEqualPoints(v39, v41, v42, v43))
      {
        [a3 nodePoint];
        v45 = v44;
        v47 = v46;
        v48 = TSDMultiplyPointScalar(v15, v17, 0.100000001);
        [a3 setInControlPoint:{TSDAddPoints(v45, v47, v48)}];
      }

      [a3 outControlPoint];
      v50 = v49;
      v52 = v51;
      [a3 nodePoint];
      if (TSDNearlyEqualPoints(v50, v52, v53, v54))
      {
        [a3 nodePoint];
        v56 = v55;
        v58 = v57;
        v59 = TSDMultiplyPointScalar(v29, v31, 0.100000001);
        [a3 setOutControlPoint:{TSDAddPoints(v56, v58, v59)}];
      }

      [a3 inControlPoint];
      v61 = v60;
      v63 = v62;
      [a3 nodePoint];
      v65 = TSDSubtractPoints(v61, v63, v64);
      v67 = v66;
      v68 = TSDPointLength(v65, v66);
      v115 = TSDMultiplyPointScalar(v65, v67, 1.0 / v68);
      v116 = v69;
      [a3 nodePoint];
      v71 = v70;
      v73 = v72;
      [a3 outControlPoint];
      v75 = TSDSubtractPoints(v71, v73, v74);
      v77 = v76;
      v78 = TSDPointLength(v75, v76);
      v79 = TSDMultiplyPointScalar(v75, v77, 1.0 / v78);
      v81 = v80;
      v82 = TSDPointLength(v15, v17);
      v83 = v82 * 0.5 + (v68 - v82 * 0.5) * 0.699999988;
      v84 = TSDPointLength(v29, v31) * 0.5;
      v85 = v84 + (v78 - v84) * 0.699999988;
      v86 = TSDAddPoints(v115, v116, v79);
      v88 = TSDMultiplyPointScalar(v86, v87, 0.5);
      v90 = v89;
      v91 = TSDPointLength(v88, v89);
      if (v91 >= 0.5)
      {
        v92 = TSDMultiplyPointScalar(v88, v90, 1.0 / v91);
      }

      else
      {
        v92 = TSDRotatePoint90Degrees(0, v79, v81);
      }

      v94 = v92;
      v95 = v93;
      v96 = v83 * TSDDotPoints(v115, v116, v92, v93);
      v97 = -(v85 * TSDDotPoints(v79, v81, v94, v95));
      *v99.i64 = fabs(v96);
      *v100.i64 = v83 * 0.5;
      if (*v99.i64 < v83 * 0.5)
      {
        *v100.i32 = *v100.i64;
        *v99.i32 = v96;
        v101.i64[0] = 0x8000000080000000;
        v101.i64[1] = 0x8000000080000000;
        v100 = vbslq_s8(v101, v100, v99);
        v96 = *v100.i32;
      }

      *v100.i64 = fabs(v97);
      *v98.i64 = v85 * 0.5;
      v102 = *v100.i64 < v85 * 0.5;
      *v98.i32 = v85 * 0.5;
      *v100.i32 = v97;
      v103.i64[0] = 0x8000000080000000;
      v103.i64[1] = 0x8000000080000000;
      *v98.i64 = *vbslq_s8(v103, v98, v100).i32;
      if (v102)
      {
        v104 = *v98.i64;
      }

      else
      {
        v104 = v97;
      }

      [a3 nodePoint];
      v106 = v105;
      v108 = v107;
      v109 = TSDMultiplyPointScalar(v94, v95, v96);
      [a3 setInControlPoint:{TSDAddPoints(v106, v108, v109)}];
      [a3 nodePoint];
      v111 = v110;
      v113 = v112;
      v114 = TSDMultiplyPointScalar(v94, v95, v104);
      [a3 setOutControlPoint:{TSDAddPoints(v111, v113, v114)}];

      [a3 setReflectedState:1];
    }
  }

  else
  {
    [a3 nodePoint];
    v33 = v32;
    v35 = v34;
    v36 = TSDMultiplyPointScalar(v29, v31, 0.330000013);
    v37 = TSDAddPoints(v33, v35, v36);

    [a3 setOutControlPoint:v37];
  }
}

- (BOOL)closeIfEndpointsAreEqual
{
  if ([(TSDBezierSubpath *)self isClosed])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(TSDBezierSubpath *)self firstNode];
    v5 = [(TSDBezierSubpath *)self lastNode];
    [(TSDBezierNode *)v5 nodePoint];
    v7 = v6;
    v9 = v8;
    [(TSDBezierNode *)v4 nodePoint];
    v3 = TSDNearlyEqualPoints(v7, v9, v10, v11);
    if (v3)
    {
      [(TSDBezierNode *)v5 inControlPoint];
      [(TSDBezierNode *)v4 setInControlPoint:?];
      [(TSDBezierSubpath *)self removeLastNode];
      [(TSDBezierSubpath *)self setClosed:1];
    }

    [(TSDBezierNode *)v4 updateReflectedState];
  }

  return v3;
}

- (id)splitEdgeAtIndex:(unint64_t)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:?];
  v6 = a3 + 1;
  v7 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:(a3 + 1) % [(NSMutableArray *)self->mNodes count]];
  [v5 nodePoint];
  v9 = v8;
  v11 = v10;
  v38.f64[0] = v8;
  v38.f64[1] = v10;
  [v5 outControlPoint];
  v13 = v12;
  v15 = v14;
  v39 = v12;
  v40 = v14;
  [v7 inControlPoint];
  v17 = v16;
  v19 = v18;
  v41 = v16;
  v42 = v18;
  [v7 nodePoint];
  v21 = v20;
  v23 = v22;
  v43 = v20;
  v44 = v22;
  if (TSDNearlyEqualPoints(v9, v11, v13, v15) && TSDNearlyEqualPoints(v17, v19, v21, v23))
  {
    v39 = TSDMixPoints(v9, v11, v21, v23, 0.333333333);
    v40 = v24;
    v41 = TSDMixPoints(v9, v11, v21, v23, 0.666666667);
    v42 = v25;
  }

  v26 = [TSDBezierNode bezierNodeWithPoint:TSDPointOnCurve(&v38, 0.5)];
  [(TSDBezierNode *)v26 setReflectedState:2];
  [(TSDBezierNode *)v26 setType:3];
  [(NSMutableArray *)self->mNodes insertObject:v26 atIndex:v6];
  TSDCurveBetween(&v38, v33, 0.0, 0.5);
  TSDCurveBetween(&v38, v28, 0.5, 1.0);
  [v5 setOutControlPoint:{v34, v35}];
  [(TSDBezierNode *)v26 setInControlPoint:v36, v37];
  [(TSDBezierNode *)v26 setOutControlPoint:v29, v30];
  [v7 setInControlPoint:{v31, v32}];
  return v26;
}

- (void)convertToHobby
{
  v3 = [(NSMutableArray *)self->mNodes count];
  if (v3)
  {
    v4 = v3;
    v5 = [(TSDBezierSubpath *)self isClosed]^ 1;
    v6 = v4 - v5;
    if (v4 != v5)
    {
      v7 = 0;
      do
      {
        v8 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:v7];
        v9 = v7 + 1;
        v10 = [(NSMutableArray *)self->mNodes objectAtIndexedSubscript:(v7 + 1) % v4];
        if ([v8 reflectedState])
        {
          [v8 setType:3];
        }

        else if (![v8 reflectedState])
        {
          [v8 setType:1];
          if (![v10 reflectedState])
          {
            [v8 nodePoint];
            v12 = v11;
            v14 = v13;
            [v8 outControlPoint];
            if (!TSDNearlyEqualPoints(v12, v14, v15, v16) || ([v10 nodePoint], v18 = v17, v20 = v19, objc_msgSend(v10, "inControlPoint"), !TSDNearlyEqualPoints(v18, v20, v21, v22)))
            {
              [(TSDBezierSubpath *)self splitEdgeAtIndex:v7];
              ++v6;
              ++v4;
            }
          }
        }

        ++v7;
      }

      while (v9 < v6);
    }
  }
}

@end