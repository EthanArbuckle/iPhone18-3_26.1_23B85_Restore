@interface TSDBezierSubpath
- (BOOL)allNodesSelected;
- (BOOL)canDeleteSelectedNodes;
- (BOOL)closeIfEndpointsAreEqual;
- (BOOL)hasSelectedNode;
- (BOOL)isCircular;
- (BOOL)isRectangular;
- (BOOL)shouldChangePathToOpen:(int64_t)a3;
- (CGRect)nodeBounds;
- (TSDBezierNode)firstNode;
- (TSDBezierNode)lastNode;
- (TSDBezierSubpath)init;
- (TSUBezierPath)bezierPath;
- (double)distanceToPoint:(CGPoint)a3 elementIndex:(unint64_t *)a4 tValue:(double *)a5 threshold:(double)a6;
- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nodeAfterNode:(id)a3;
- (id)nodePriorToNode:(id)a3;
- (id)splitEdgeAtIndex:(unint64_t)a3 atPercentage:(double)a4;
- (void)addNodesToArray:(id)a3;
- (void)appendToBezierPath:(id)a3 selectedNodesOnly:(BOOL)a4 fromIndex:(unint64_t)a5 closed:(BOOL)a6;
- (void)convertToHobby;
- (void)deleteSelectedNodes;
- (void)deselectAllNodes;
- (void)offsetSelectedEdgesByDelta:(CGPoint)a3;
- (void)offsetSelectedNodesByDelta:(CGPoint)a3;
- (void)reverseDirection;
- (void)selectAllNodes;
- (void)setNodes:(id)a3;
- (void)sharpenAllNodes;
- (void)smoothNode:(id)a3;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
- (void)updateReflectedState;
@end

@implementation TSDBezierSubpath

- (TSDBezierSubpath)init
{
  v6.receiver = self;
  v6.super_class = TSDBezierSubpath;
  v2 = [(TSDBezierSubpath *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mNodes = v2->mNodes;
    v2->mNodes = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v8 = objc_msgSend_nodes(self, v6, v7);
  v10 = objc_msgSend_initWithArray_copyItems_(v5, v9, v8, 1);

  objc_msgSend_setNodes_(v4, v11, v10);
  objc_msgSend_setClosed_(v4, v12, self->mClosed);

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = v5;
  if (self->mClosed)
  {
    objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p nodes=%p closed=%@>", v5, self, self->mNodes, @"YES");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p nodes=%p closed=%@>", v5, self, self->mNodes, @"NO");
  }
  v8 = ;

  return v8;
}

- (void)setNodes:(id)a3
{
  v4 = objc_msgSend_mutableCopy(a3, a2, a3);
  mNodes = self->mNodes;
  self->mNodes = v4;
}

- (BOOL)isRectangular
{
  v41 = *MEMORY[0x277D85DE8];
  isClosed = objc_msgSend_isClosed(self, a2, v2);
  if (!isClosed)
  {
    return isClosed;
  }

  v7 = objc_msgSend_nodes(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10 != 4)
  {
    goto LABEL_23;
  }

  memset(v40, 0, sizeof(v40));
  v13 = objc_msgSend_nodes(self, v11, v12);
  objc_msgSend_getObjects_range_(v13, v14, v40, 0, 4);

  v17 = 0;
  do
  {
    isClosed = objc_msgSend_isCollapsed(*(v40 + v17), v15, v16);
    if (isClosed)
    {
      v18 = v17 >= 3;
    }

    else
    {
      v18 = 1;
    }

    ++v17;
  }

  while (!v18);
  if (isClosed)
  {
    v19 = 0;
    v20 = v40;
    do
    {
      v21 = (&v38 + v19);
      v22 = *v20++;
      objc_msgSend_nodePoint(v22, v15, v16);
      *v21 = v23;
      v21[1] = v24;
      v19 += 16;
    }

    while (v19 != 64);
    v25 = 0;
    v26 = &v39;
    do
    {
      TSUDistance();
      v28 = v27;
      TSUDistance();
      v30 = v29;
      TSUDistance();
      v32 = vabdd_f64(v31, sqrt(v30 * v30 + v28 * v28));
      v26 += 2;
    }

    while (v32 <= 0.00100000005 && v25++ < 3);
    if (v32 <= 0.00100000005)
    {
      v34 = &v39;
      TSURectWithPoints();
      TSUGrowRectToPoint();
      TSUGrowRectToPoint();
      v35 = 3;
      do
      {
        v36 = v35;
        LOBYTE(isClosed) = TSUNearlyEqualPoints();
        if (isClosed)
        {
          break;
        }

        v35 = v36 - 1;
        v34 += 2;
      }

      while (v36);
      return isClosed;
    }

LABEL_23:
    LOBYTE(isClosed) = 0;
  }

  return isClosed;
}

- (BOOL)isCircular
{
  isClosed = objc_msgSend_isClosed(self, a2, v2);
  if (isClosed)
  {
    v7 = objc_msgSend_bezierPath(self, v5, v6);
    isCircular = objc_msgSend_isCircular(v7, v8, v9);

    LOBYTE(isClosed) = isCircular;
  }

  return isClosed;
}

- (TSUBezierPath)bezierPath
{
  v4 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_appendToBezierPath_selectedNodesOnly_fromIndex_(self, v5, v4, 0, 0);

  return v4;
}

- (void)appendToBezierPath:(id)a3 selectedNodesOnly:(BOOL)a4 fromIndex:(unint64_t)a5 closed:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v63 = a3;
  v12 = objc_msgSend_nodes(self, v10, v11);
  v15 = objc_msgSend_count(v12, v13, v14);

  if (!v15)
  {
    goto LABEL_24;
  }

  if (a5)
  {
    v18 = 0;
  }

  else
  {
    v18 = v6;
  }

  v19 = objc_msgSend_nodes(self, v16, v17);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, a5);

  objc_msgSend_nodePoint(v21, v22, v23);
  v25 = v24;
  v27 = v26;
  objc_msgSend_moveToPoint_(v63, v28, v29);
  v32 = 0;
  v33 = v15 + v6;
  v34 = a5 + 1;
  while (1)
  {
    v35 = v21;
    if (v34 >= v33)
    {
      break;
    }

    v36 = v27;
    v37 = v25;
    v38 = objc_msgSend_nodes(self, v30, v31);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, v34 % v15);

    objc_msgSend_nodePoint(v21, v40, v41);
    v25 = v44;
    v27 = v45;
    if (!v8 || objc_msgSend_isSelected(v35, v42, v43) && objc_msgSend_isSelected(v21, v46, v47))
    {
      objc_msgSend_outControlPoint(v35, v42, v43);
      v49 = v48;
      v51 = v50;
      objc_msgSend_inControlPoint(v21, v52, v53);
      v57 = v56;
      v59 = v58;
      if (v32)
      {
        objc_msgSend_moveToPoint_(v63, v54, v55, v37, v36);
      }

      if (TSUNearlyEqualPoints())
      {
        v61 = TSUNearlyEqualPoints();
        v62 = v63;
        if (v61)
        {
          objc_msgSend_lineToPoint_(v63, v63, v60, v25, v27);
LABEL_18:
          v32 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v62 = v63;
      }

      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v62, v62, v60, v25, v27, v49, v51, v57, v59);
      goto LABEL_18;
    }

    v18 = 0;
    v32 = 1;
LABEL_19:

    ++v34;
    if (!v21)
    {
      v35 = 0;
      break;
    }
  }

  if (v18)
  {
    objc_msgSend_closePath(v63, v30, v31);
  }

LABEL_24:
}

- (void)updateReflectedState
{
  v4 = objc_msgSend_nodes(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_updateReflectedState);
}

- (void)reverseDirection
{
  v4 = objc_msgSend_nodes(self, a2, v2);
  v18 = objc_msgSend_reverseObjectEnumerator(v4, v5, v6);

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_nextObject(v18, v8, v9);
  if (v10)
  {
    v13 = v10;
    do
    {
      objc_msgSend_swapControlPoints(v13, v11, v12);
      objc_msgSend_addObject_(v7, v14, v13);
      v17 = objc_msgSend_nextObject(v18, v15, v16);

      v13 = v17;
    }

    while (v17);
  }

  objc_msgSend_setNodes_(self, v11, v7);
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_nodes(self, a2, a3);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = *&a3->c;
        v13[0] = *&a3->a;
        v13[1] = v12;
        v13[2] = *&a3->tx;
        objc_msgSend_transformUsingAffineTransform_(v11, v7, v13);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
    }

    while (v8);
  }
}

- (id)nodePriorToNode:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_nodes(self, v5, v6);
  v9 = objc_msgSend_indexOfObject_(v7, v8, v4);

  if (v9 >= 1)
  {
    v12 = objc_msgSend_nodes(self, v10, v11);
    v14 = objc_msgSend_objectAtIndex_(v12, v13, v9 - 1);
LABEL_5:
    v17 = v14;

    goto LABEL_6;
  }

  if (self->mClosed)
  {
    v12 = objc_msgSend_nodes(self, v10, v11);
    v14 = objc_msgSend_lastObject(v12, v15, v16);
    goto LABEL_5;
  }

  v17 = 0;
LABEL_6:

  return v17;
}

- (id)nodeAfterNode:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_nodes(self, v5, v6);
  v9 = objc_msgSend_indexOfObject_(v7, v8, v4);

  v10 = v9 + 1;
  v13 = objc_msgSend_nodes(self, v11, v12);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (v10 < v16)
  {
    v19 = objc_msgSend_nodes(self, v17, v18);
    objc_msgSend_objectAtIndex_(v19, v20, v10);
    v22 = LABEL_5:;

    goto LABEL_7;
  }

  if (self->mClosed)
  {
    v19 = objc_msgSend_nodes(self, v17, v18);
    objc_msgSend_objectAtIndex_(v19, v21, 0);
    goto LABEL_5;
  }

  v22 = 0;
LABEL_7:

  return v22;
}

- (TSDBezierNode)firstNode
{
  v3 = objc_msgSend_nodes(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  return v6;
}

- (TSDBezierNode)lastNode
{
  mClosed = self->mClosed;
  v4 = objc_msgSend_nodes(self, a2, v2);
  v7 = v4;
  if (mClosed)
  {
    objc_msgSend_objectAtIndex_(v4, v5, 0);
  }

  else
  {
    objc_msgSend_lastObject(v4, v5, v6);
  }
  v8 = ;

  return v8;
}

- (void)offsetSelectedNodesByDelta:(CGPoint)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_nodes(self, a2, v3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_isSelected(v12, v7, v8))
        {
          objc_msgSend_nodePoint(v12, v7, v8);
          TSUAddPoints();
          objc_msgSend_moveToPoint_(v12, v13, v14);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v9);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)a3
{
  v5 = objc_msgSend_nodes(self, a2, v3);
  v28 = objc_msgSend_objectEnumerator(v5, v6, v7);

  v10 = objc_msgSend_nodes(self, v8, v9);
  v13 = objc_msgSend_lastObject(v10, v11, v12);

  isSelected = objc_msgSend_isSelected(v13, v14, v15);
  v19 = objc_msgSend_nextObject(v28, v17, v18);
  if (v19)
  {
    v22 = v19;
    do
    {
      if ((isSelected & 1) != 0 || objc_msgSend_isSelected(v22, v20, v21))
      {
        objc_msgSend_nodePoint(v22, v20, v21);
        TSUAddPoints();
        objc_msgSend_moveToPoint_(v22, v23, v24);
        isSelected = objc_msgSend_isSelected(v22, v25, v26);
      }

      else
      {
        isSelected = 0;
      }

      v27 = objc_msgSend_nextObject(v28, v20, v21);

      v22 = v27;
    }

    while (v27);
  }
}

- (BOOL)allNodesSelected
{
  v3 = objc_msgSend_nodes(self, a2, v2);
  v6 = objc_msgSend_reverseObjectEnumerator(v3, v4, v5);

  v9 = 0;
  do
  {
    v10 = v9;
    v9 = objc_msgSend_nextObject(v6, v7, v8);
  }

  while (v9 && (objc_msgSend_isSelected(v9, v11, v12) & 1) != 0);

  return v9 == 0;
}

- (BOOL)hasSelectedNode
{
  v3 = objc_msgSend_nodes(self, a2, v2);
  v6 = objc_msgSend_reverseObjectEnumerator(v3, v4, v5);

  v9 = 0;
  do
  {
    v10 = v9;
    v9 = objc_msgSend_nextObject(v6, v7, v8);
  }

  while (v9 && !objc_msgSend_isSelected(v9, v11, v12));

  return v9 != 0;
}

- (BOOL)canDeleteSelectedNodes
{
  v3 = objc_msgSend_nodes(self, a2, v2);
  v6 = objc_msgSend_objectEnumerator(v3, v4, v5);

  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v11;
    v11 = objc_msgSend_nextObject(v6, v7, v8);

    if (!v11)
    {
      break;
    }

    isSelected = objc_msgSend_isSelected(v11, v13, v14);
    v9 |= isSelected;
    v10 += isSelected ^ 1u;
  }

  while ((v9 & 1) == 0 || v10 < 2);

  return v11 != 0;
}

- (BOOL)shouldChangePathToOpen:(int64_t)a3
{
  v5 = objc_msgSend_nodes(self, a2, a3);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (a3 != 3 || v8 != 2 || !objc_msgSend_isClosed(self, v9, v10))
  {
    return 0;
  }

  v13 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v11, v12);
  objc_msgSend_appendToBezierPath_selectedNodesOnly_fromIndex_closed_(self, v14, v13, 0, 0, 0);
  isLineSegment = objc_msgSend_isLineSegment(v13, v15, v16);

  return isLineSegment;
}

- (void)deleteSelectedNodes
{
  v4 = objc_msgSend_nodes(self, a2, v2);
  v30 = objc_msgSend_objectEnumerator(v4, v5, v6);

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_nextObject(v30, v8, v9);
  if (v10)
  {
    v13 = v10;
    do
    {
      if ((objc_msgSend_isSelected(v13, v11, v12) & 1) == 0)
      {
        objc_msgSend_addObject_(v7, v14, v13);
      }

      v16 = objc_msgSend_nextObject(v30, v14, v15);

      v13 = v16;
    }

    while (v16);
  }

  v17 = objc_msgSend_nodes(self, v11, v12);
  v20 = objc_msgSend_count(v17, v18, v19);

  objc_msgSend_setNodes_(self, v21, v7);
  v24 = objc_msgSend_nodes(self, v22, v23);
  if (objc_msgSend_count(v24, v25, v26) >= 2)
  {
    v29 = objc_msgSend_shouldChangePathToOpen_(self, v27, v20);

    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  objc_msgSend_setClosed_(self, v28, 0);
LABEL_10:
}

- (void)selectAllNodes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = objc_msgSend_nodes(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setSelected_(*(*(&v10 + 1) + 8 * v9++), v6, 1);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)deselectAllNodes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = objc_msgSend_nodes(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setSelected_(*(*(&v10 + 1) + 8 * v9++), v6, 0);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v10, v14, 16);
    }

    while (v7);
  }
}

- (double)distanceToPoint:(CGPoint)a3 elementIndex:(unint64_t *)a4 tValue:(double *)a5 threshold:(double)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_nodes(self, a2, a4);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (!v13)
  {
    return 1.79769313e308;
  }

  v16 = objc_msgSend_nodes(self, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, 0);

  objc_msgSend_nodePoint(v18, v19, v20);
  v25 = 0;
  v26 = v13 + self->mClosed;
  v27 = 0.0;
  v28 = 1.79769313e308;
  v60 = a5;
  if (v26 < 2 || (v29 = v23, v30 = v24, v31 = a6 * a6, v32 = 1.79769313e308, v61 = a6 * a6, a6 * a6 >= 1.79769313e308))
  {
    v33 = v18;
    v57 = 0;
LABEL_19:
    if (!a4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v33 = 0;
    v25 = 0;
    v28 = 1.79769313e308;
    v34 = 2;
    while (1)
    {
      v63 = v28;
      v64 = v27;
      v35 = objc_msgSend_nodes(self, v21, v22, v32, v31, v60);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, (v34 - 1) % v13);

      objc_msgSend_nodePoint(v37, v38, v39);
      v41 = v40;
      v43 = v42;
      objc_msgSend_outControlPoint(v18, v44, v45);
      v47 = v46;
      v49 = v48;
      objc_msgSend_inControlPoint(v37, v50, v51);
      v53 = v52;
      v55 = v54;
      if (TSUNearlyEqualPoints() && TSUNearlyEqualPoints())
      {
        v65.f64[0] = v29;
        v65.f64[1] = v30;
        v66 = v41;
        v67 = v43;
        v27 = sub_276667504(v65.f64);
        TSUMixPoints();
      }

      else
      {
        v65.f64[0] = v29;
        v65.f64[1] = v30;
        v66 = v47;
        v67 = v49;
        v68 = v53;
        v69 = v55;
        v70 = v41;
        v71 = v43;
        v27 = sub_2766675CC(&v65, a3.x, a3.y, 1.0);
        TSDPointOnCurve(&v65, v27);
      }

      TSUDistanceSquared();
      v28 = v63;
      if (v56 < v63)
      {
        v25 = v34 - 2;
      }

      else
      {
        v27 = v64;
      }

      if (v56 < v63)
      {
        v28 = v56;
      }

      v33 = v37;

      if (v34 >= v26)
      {
        break;
      }

      ++v34;
      v32 = v61;
      v57 = v33;
      v18 = v33;
      v29 = v41;
      v30 = v43;
      if (v28 <= v61)
      {
        goto LABEL_19;
      }
    }

    v57 = v33;
    if (!a4)
    {
      goto LABEL_21;
    }
  }

  *a4 = v25;
LABEL_21:
  if (v60)
  {
    *v60 = v27;
  }

  v58 = sqrt(v28);

  return v58;
}

- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = objc_msgSend_nodes(self, a2, a4);
  v14 = objc_msgSend_objectEnumerator(v11, v12, v13);

  v17 = 0;
  while (1)
  {
    v18 = v17;
    v17 = objc_msgSend_nextObject(v14, v15, v16);

    if (!v17)
    {
      break;
    }

    v20 = *&a4->c;
    v23[0] = *&a4->a;
    v23[1] = v20;
    v23[2] = *&a4->tx;
    if (objc_msgSend_underPoint_withTransform_andTolerance_returningType_(v17, v19, v23, a6, x, y, a5))
    {
      v21 = v17;
      break;
    }
  }

  return v17;
}

- (CGRect)nodeBounds
{
  v4 = MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = objc_msgSend_nodes(self, a2, v2);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_nodes(self, v11, v12);
    v16 = objc_msgSend_objectEnumerator(v13, v14, v15);

    v19 = objc_msgSend_nextObject(v16, v17, v18);
    objc_msgSend_nodePoint(v19, v20, v21);
    v23 = v22;
    v25 = v24;
    v28 = objc_msgSend_nextObject(v16, v26, v27);

    if (v28)
    {
      do
      {
        objc_msgSend_nodePoint(v28, v29, v30);
        TSUGrowRectToPoint();
        v23 = v31;
        v25 = v32;
        v5 = v33;
        v6 = v34;
        if (objc_msgSend_isSelected(v28, v35, v36))
        {
          objc_msgSend_inControlPoint(v28, v37, v38);
          TSUGrowRectToPoint();
          objc_msgSend_outControlPoint(v28, v39, v40);
          TSUGrowRectToPoint();
          v23 = v41;
          v25 = v42;
          v5 = v43;
          v6 = v44;
        }

        v45 = objc_msgSend_nextObject(v16, v37, v38);

        v28 = v45;
      }

      while (v45);
    }
  }

  else
  {
    v23 = *v4;
    v25 = v4[1];
  }

  v46 = v23;
  v47 = v25;
  v48 = v5;
  v49 = v6;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

- (void)sharpenAllNodes
{
  v4 = objc_msgSend_nodes(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_collapse);
}

- (void)smoothNode:(id)a3
{
  v51 = a3;
  v5 = objc_msgSend_nodePriorToNode_(self, v4, v51);
  v7 = objc_msgSend_nodeAfterNode_(self, v6, v51);
  v10 = v7;
  if (v5)
  {
    objc_msgSend_nodePoint(v5, v8, v9);
    objc_msgSend_nodePoint(v51, v11, v12);
    TSUSubtractPoints();
    if (!v10)
    {
      objc_msgSend_nodePoint(v51, v8, v9);
      TSUMultiplyPointScalar();
      TSUAddPoints();
      objc_msgSend_setInControlPoint_(v51, v13, v14);
      goto LABEL_17;
    }
  }

  else if (!v7)
  {
    goto LABEL_17;
  }

  objc_msgSend_nodePoint(v10, v8, v9);
  objc_msgSend_nodePoint(v51, v15, v16);
  TSUSubtractPoints();
  if (v5)
  {
    if ((TSUNearlyEqualPoints() & 1) == 0 && (TSUNearlyEqualPoints() & 1) == 0)
    {
      objc_msgSend_inControlPoint(v51, v19, v20);
      objc_msgSend_nodePoint(v51, v21, v22);
      if (TSUNearlyEqualPoints())
      {
        objc_msgSend_nodePoint(v51, v23, v24);
        TSUMultiplyPointScalar();
        TSUAddPoints();
        objc_msgSend_setInControlPoint_(v51, v25, v26);
      }

      objc_msgSend_outControlPoint(v51, v23, v24);
      objc_msgSend_nodePoint(v51, v27, v28);
      if (TSUNearlyEqualPoints())
      {
        objc_msgSend_nodePoint(v51, v29, v30);
        TSUMultiplyPointScalar();
        TSUAddPoints();
        objc_msgSend_setOutControlPoint_(v51, v31, v32);
      }

      objc_msgSend_inControlPoint(v51, v29, v30);
      objc_msgSend_nodePoint(v51, v33, v34);
      TSUSubtractPoints();
      TSUPointLength();
      TSUMultiplyPointScalar();
      objc_msgSend_nodePoint(v51, v35, v36);
      objc_msgSend_outControlPoint(v51, v37, v38);
      TSUSubtractPoints();
      TSUPointLength();
      TSUMultiplyPointScalar();
      TSUPointLength();
      TSUPointLength();
      TSUAddPoints();
      TSUMultiplyPointScalar();
      TSUPointLength();
      if (v39 >= 0.5)
      {
        TSUMultiplyPointScalar();
      }

      else
      {
        TSURotatePoint90Degrees();
      }

      TSUDotPoints();
      TSUDotPoints();
      objc_msgSend_nodePoint(v51, v42, v43);
      TSUMultiplyPointScalar();
      TSUAddPoints();
      objc_msgSend_setInControlPoint_(v51, v44, v45);
      objc_msgSend_nodePoint(v51, v46, v47);
      TSUMultiplyPointScalar();
      TSUAddPoints();
      objc_msgSend_setOutControlPoint_(v51, v48, v49);
      objc_msgSend_setReflectedState_(v51, v50, 1);
    }
  }

  else
  {
    objc_msgSend_nodePoint(v51, v17, v18);
    TSUMultiplyPointScalar();
    TSUAddPoints();
    objc_msgSend_setOutControlPoint_(v51, v40, v41);
  }

LABEL_17:
}

- (BOOL)closeIfEndpointsAreEqual
{
  if (objc_msgSend_isClosed(self, a2, v2))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = objc_msgSend_firstNode(self, v4, v5);
    v10 = objc_msgSend_lastNode(self, v8, v9);
    objc_msgSend_nodePoint(v10, v11, v12);
    objc_msgSend_nodePoint(v7, v13, v14);
    v6 = TSUNearlyEqualPoints();
    if (v6)
    {
      objc_msgSend_inControlPoint(v10, v15, v16);
      objc_msgSend_setInControlPoint_(v7, v17, v18);
      objc_msgSend_removeLastNode(self, v19, v20);
      objc_msgSend_setClosed_(self, v21, 1);
    }

    objc_msgSend_updateReflectedState(v7, v15, v16);
  }

  return v6;
}

- (void)addNodesToArray:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_nodes(self, v5, v6);
  objc_msgSend_addObjectsFromArray_(v4, v7, v8);
}

- (id)splitEdgeAtIndex:(unint64_t)a3 atPercentage:(double)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_nodes(self, a2, a3);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, a3);

  v11 = objc_msgSend_nodes(self, v9, v10);
  v12 = a3 + 1;
  v15 = objc_msgSend_nodes(self, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, (a3 + 1) % v18);

  objc_msgSend_nodePoint(v8, v21, v22);
  v75.f64[0] = v23;
  v75.f64[1] = v24;
  objc_msgSend_outControlPoint(v8, v25, v26);
  v76 = v27;
  v77 = v28;
  objc_msgSend_inControlPoint(v20, v29, v30);
  v78 = v31;
  v79 = v32;
  objc_msgSend_nodePoint(v20, v33, v34);
  v80 = v35;
  v81 = v36;
  if (TSUNearlyEqualPoints() && TSUNearlyEqualPoints())
  {
    TSUMixPoints();
    v76 = v37;
    v77 = v38;
    TSUMixPoints();
    v78 = v39;
    v79 = v40;
  }

  v41 = TSDPointOnCurve(&v75, a4);
  v44 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v42, v43, v41);
  objc_msgSend_setReflectedState_(v44, v45, 2);
  objc_msgSend_setType_(v44, v46, 3);
  v49 = objc_msgSend_nodes(self, v47, v48);
  v52 = objc_msgSend_mutableCopy(v49, v50, v51);

  objc_msgSend_insertObject_atIndex_(v52, v53, v44, v12);
  objc_msgSend_setNodes_(self, v54, v52);
  sub_276667338(&v75, v70, 0.0, a4);
  sub_276667338(&v75, v65, a4, 1.0);
  objc_msgSend_setOutControlPoint_(v8, v55, v56, v71, v72);
  objc_msgSend_setInControlPoint_(v44, v57, v58, v73, v74);
  objc_msgSend_setOutControlPoint_(v44, v59, v60, v66, v67);
  objc_msgSend_setInControlPoint_(v20, v61, v62, v68, v69);

  return v44;
}

- (void)convertToHobby
{
  v4 = objc_msgSend_nodes(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v12 = objc_msgSend_isClosed(self, v8, v9) ^ 1;
    v13 = v7 - v12;
    if (v7 != v12)
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_nodes(self, v10, v11);
        v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, v14);

        v20 = objc_msgSend_nodes(self, v18, v19);
        v21 = v14 + 1;
        v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v22, (v14 + 1) % v7);

        if (objc_msgSend_reflectedState(v17, v24, v25))
        {
          objc_msgSend_setType_(v17, v26, 3);
        }

        else if (!objc_msgSend_reflectedState(v17, v26, v27))
        {
          objc_msgSend_setType_(v17, v28, 1);
          if (!objc_msgSend_reflectedState(v23, v29, v30))
          {
            objc_msgSend_nodePoint(v17, v31, v32);
            objc_msgSend_outControlPoint(v17, v33, v34);
            if (!TSUNearlyEqualPoints() || (objc_msgSend_nodePoint(v23, v35, v36), objc_msgSend_inControlPoint(v23, v37, v38), (TSUNearlyEqualPoints() & 1) == 0))
            {
              v39 = objc_msgSend_splitEdgeAtIndex_atPercentage_(self, v35, v14, 0.5);
              ++v13;
              ++v7;
            }
          }
        }

        ++v14;
      }

      while (v21 < v13);
    }
  }
}

@end