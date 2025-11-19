@interface TSDEditableBezierPathSource
+ (TSDEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)a3;
+ (TSDEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)a3;
+ (id)editableBezierPathSource;
- (BOOL)allNodesSelected;
- (BOOL)bezierPathUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 tolerance:(double)a5;
- (BOOL)canCloseSelectedNodes;
- (BOOL)canCutAtSelectedNodes;
- (BOOL)canDeleteSelectedNodes;
- (BOOL)closeIfEndpointsAreEqual;
- (BOOL)deletingSelectedNodesWillDeleteShape;
- (BOOL)hasSelectedNode;
- (BOOL)isCircular;
- (BOOL)isClosed;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRectangular;
- (CGAffineTransform)pathFlipTransform;
- (CGPath)pathWithoutFlips;
- (CGPath)subpathForSelection;
- (CGRect)nodeBounds;
- (CGSize)naturalSize;
- (NSArray)nodeTypes;
- (NSMutableArray)nodes;
- (TSDBezierNode)firstNode;
- (TSDBezierNode)lastNode;
- (TSDEditableBezierPathSource)init;
- (double)distanceToPoint:(CGPoint)a3 subpathIndex:(unint64_t *)a4 elementIndex:(unint64_t *)a5 tValue:(double *)a6 threshold:(double)a7;
- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)insertNodeAtPoint:(CGPoint)a3 tolerance:(double)a4;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)nodeAfterNode:(id)a3;
- (id)nodePriorToNode:(id)a3;
- (id)splitEdge:(int64_t)a3 at:(double)a4 fromSubpath:(int64_t)a5;
- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)a3 andSecondPathFirstNode:(BOOL *)a4;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)addNode:(id)a3;
- (void)alignToOrigin;
- (void)closePath;
- (void)closeSelectedNodes;
- (void)connectSelectedNodes;
- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)cutAtSelectedNodes;
- (void)dealloc;
- (void)deleteSelectedEdges;
- (void)deleteSelectedNodesForced:(BOOL)a3;
- (void)lineToPoint:(CGPoint)a3;
- (void)moveToPoint:(CGPoint)a3;
- (void)offsetSelectedEdgesByDelta:(CGPoint)a3;
- (void)offsetSelectedNodesByDelta:(CGPoint)a3;
- (void)removeLastNode;
- (void)removeNode:(id)a3;
- (void)reverseDirection;
- (void)selectSubpathForNode:(id)a3 toggle:(BOOL)a4;
- (void)setBezierPath:(id)a3;
- (void)setClosed:(BOOL)a3;
- (void)setLockedFlipTransform:(BOOL)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setNodeTypes:(id)a3;
- (void)setNodes:(id)a3;
- (void)smoothCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)smoothNode:(id)a3;
- (void)splitSelectedEdges;
- (void)splitSelectedNodes;
- (void)toggleNode:(id)a3 toType:(int)a4 prevNode:(id)a5 nextNode:(id)a6;
- (void)toggleSelectedNodesToType:(int)a3;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
@end

@implementation TSDEditableBezierPathSource

- (TSDEditableBezierPathSource)init
{
  v5.receiver = self;
  v5.super_class = TSDEditableBezierPathSource;
  v2 = [(TSDEditableBezierPathSource *)&v5 init];
  if (v2)
  {
    v2->mSubpaths = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = objc_alloc_init(TSDBezierSubpath);
    [(NSMutableArray *)v2->mSubpaths addObject:v3];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p subpaths=%p>", NSStringFromClass(v4), self, self->mSubpaths];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setHasHorizontalFlip:{-[TSDPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
  [v4 setHasVerticalFlip:{-[TSDPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:-[TSDEditableBezierPathSource subpaths](self copyItems:{"subpaths"), 1}];
  [v4 setSubpaths:v5];
  v6 = v5;
  return v4;
}

+ (id)editableBezierPathSource
{
  v2 = objc_alloc_init(TSDEditableBezierPathSource);

  return v2;
}

+ (TSDEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)a3
{
  v4 = [a3 bezierPath];

  return [a1 editableBezierPathSourceWithBezierPath:v4];
}

+ (TSDEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)a3
{
  v4 = +[TSDEditableBezierPathSource editableBezierPathSource];
  [(TSDEditableBezierPathSource *)v4 setBezierPath:a3];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v11.receiver = self;
    v11.super_class = TSDEditableBezierPathSource;
    v7 = [(TSDPathSource *)&v11 isEqual:?];
    if (v7)
    {
      v8 = [-[TSDPathSource bezierPath](self "bezierPath")];
      v9 = [objc_msgSend(a3 "bezierPath")];
      if (v8 == v9 || (v7 = CGPathEqualToPath(v8, v9)) != 0)
      {
        LOBYTE(v7) = 1;
      }
    }
  }

  return v7;
}

- (BOOL)closeIfEndpointsAreEqual
{
  v2 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  return [v2 closeIfEndpointsAreEqual];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDEditableBezierPathSource;
  [(TSDEditableBezierPathSource *)&v3 dealloc];
}

- (BOOL)isRectangular
{
  if ([(NSMutableArray *)self->mSubpaths count]!= 1)
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->mSubpaths lastObject];

  return [v3 isRectangular];
}

- (BOOL)isCircular
{
  if ([(NSMutableArray *)self->mSubpaths count]!= 1)
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->mSubpaths lastObject];

  return [v3 isCircular];
}

- (id)bezierPathWithoutFlips
{
  v3 = +[TSDBezierPath bezierPath];
  [v3 moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [(NSMutableArray *)self->mSubpaths makeObjectsPerformSelector:sel_appendToBezierPath_ withObject:v3];
  return v3;
}

- (CGPath)pathWithoutFlips
{
  v2 = [(TSDEditableBezierPathSource *)self bezierPathWithoutFlips];

  return [v2 CGPath];
}

- (void)setBezierPath:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [a3 elementCount];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy__18;
  v39 = __Block_byref_object_dispose__18;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__18;
  v33 = __Block_byref_object_dispose__18;
  v34 = 0;

  mSubpaths = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->mSubpaths = mSubpaths;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __45__TSDEditableBezierPathSource_setBezierPath___block_invoke;
  v25 = &unk_279D49678;
  v26 = self;
  v27 = &v29;
  v28 = &v35;
  if (v5 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = [a3 elementAtIndex:v7 associatedPoints:{&v41, v22, v23}];
      if (v36[5])
      {
        v24(&v22);
      }

      v9 = [v30[5] lastNode];
      if (v8 > 1)
      {
        break;
      }

      if (!v8)
      {
        v21 = [TSDBezierNode bezierNodeWithPoint:v41, v42];
        v36[5] = v21;
        if (v7)
        {
          v30[5] = 0;
        }

        else
        {
          v24(&v22);
        }

        goto LABEL_22;
      }

      if (v8 == 1)
      {
        v10 = [TSDBezierNode bezierNodeWithPoint:v41, v42];
LABEL_21:
        [v30[5] addNode:v10];
      }

LABEL_22:
      if (v5 == ++v7)
      {
        mSubpaths = self->mSubpaths;
        goto LABEL_25;
      }
    }

    v11 = v9;
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v12 = [v30[5] firstNode];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [v11 nodePoint];
          v16 = v15;
          v18 = v17;
          [v13 nodePoint];
          if (TSDNearlyEqualPoints(v16, v18, v19, v20))
          {
            [v11 inControlPoint];
            [v13 setInControlPoint:?];
            [v30[5] removeLastNode];
          }
        }

        [v30[5] setClosed:1];
      }

      goto LABEL_22;
    }

    [v9 setOutControlPoint:{v41, v42}];
    [v11 setType:2];
    v10 = [TSDBezierNode bezierNodeWithPoint:v45 inControlPoint:v46 outControlPoint:v43, v44, v45, v46];
    goto LABEL_21;
  }

LABEL_25:
  [(NSMutableArray *)mSubpaths makeObjectsPerformSelector:sel_updateReflectedState, v22, v23];
  if (([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] & 1) == 0)
  {
    [(TSDEditableBezierPathSource *)self convertToHobby];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
}

uint64_t __45__TSDEditableBezierPathSource_setBezierPath___block_invoke(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (!v2)
  {
    *(*(a1[5] + 8) + 40) = objc_alloc_init(TSDBezierSubpath);
    [*(a1[4] + 16) addObject:*(*(a1[5] + 8) + 40)];

    v2 = *(*(a1[5] + 8) + 40);
  }

  result = [v2 addNode:*(*(a1[6] + 8) + 40)];
  *(*(a1[6] + 8) + 40) = 0;
  return result;
}

- (void)setNodes:(id)a3
{
  self->mSubpaths = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(TSDBezierSubpath);
  [(NSMutableArray *)self->mSubpaths addObject:v5];

  [(TSDBezierSubpath *)v5 setNodes:a3];
}

- (NSMutableArray)nodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSMutableArray *)self->mSubpaths makeObjectsPerformSelector:sel_addNodesToArray_ withObject:v3];

  return v3;
}

- (void)reverseDirection
{
  v2 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  [v2 reverseDirection];
}

- (void)setLockedFlipTransform:(BOOL)a3
{
  p_mLockedFlipTransform = &self->mLockedFlipTransform;
  v7[0].receiver = self;
  v7[0].super_class = TSDEditableBezierPathSource;
  [(objc_super *)v7 pathFlipTransform];
  v6 = v7[2];
  *&p_mLockedFlipTransform->a = v7[1];
  *&p_mLockedFlipTransform->c = v6;
  *&p_mLockedFlipTransform->tx = v7[3];
  self->mHasLockedFlipTransform = a3;
}

- (CGAffineTransform)pathFlipTransform
{
  if (LOBYTE(self->tx) == 1)
  {
    v5 = *&self[1].b;
    *&retstr->a = *&self->ty;
    *&retstr->c = v5;
    *&retstr->tx = *&self[1].d;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = TSDEditableBezierPathSource;
    return [(CGAffineTransform *)&v6 pathFlipTransform];
  }

  return self;
}

- (CGSize)naturalSize
{
  v2 = [(TSDEditableBezierPathSource *)self bezierPathWithoutFlips];
  v3 = v2;
  if (v2)
  {
    [v2 bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = [v3 isLineSegment];
  v9 = 1.0;
  if (v5 >= 1.0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 1.0;
  }

  if (v7 >= 1.0)
  {
    v9 = v7;
  }

  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = v10;
  }

  result.height = v11;
  result.width = v12;
  return result;
}

- (void)setNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v48 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)[(TSDEditableBezierPathSource *)self nodes] count]>= 2)
  {
    [(TSDEditableBezierPathSource *)self naturalSize];
    if (v6 <= 0.0)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = width / v6;
    }

    if (v7 <= 0.0)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = height / v7;
    }

    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *&v45.a = *MEMORY[0x277CBF2C0];
    *&v45.c = v10;
    *&v45.tx = *(MEMORY[0x277CBF2C0] + 32);
    v31 = v10;
    v33 = *&v45.a;
    *&v44.a = *&v45.a;
    *&v44.c = v10;
    v29 = *&v45.tx;
    *&v44.tx = *&v45.tx;
    CGAffineTransformScale(&v45, &v44, v8, v9);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    mSubpaths = self->mSubpaths;
    v12 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(mSubpaths);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          v44 = v45;
          [v16 transformUsingAffineTransform:{&v44, v29, v31, v33}];
        }

        v13 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v13);
    }

    [(TSDEditableBezierPathSource *)self naturalSize:v29];
    v18 = v17;
    v20 = v19;
    if (!TSDNearlyEqualSizes(v17, v19, width, height))
    {
      v21 = width / v18;
      v22 = 1.0;
      if (v18 <= 0.0)
      {
        v21 = 1.0;
      }

      *&v45.a = v34;
      *&v45.c = v32;
      *&v45.tx = v30;
      if (v20 > 0.0)
      {
        v22 = height / v20;
      }

      *&v39.a = v34;
      *&v39.c = v32;
      *&v39.tx = v30;
      CGAffineTransformScale(&v44, &v39, v21, v22);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = self->mSubpaths;
      v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v46 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v35 + 1) + 8 * j);
            v44 = v45;
            [v28 transformUsingAffineTransform:&v44];
          }

          v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v46 count:16];
        }

        while (v25);
      }
    }
  }
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mSubpaths = self->mSubpaths;
  v5 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(mSubpaths);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = *&a3->c;
        v11[0] = *&a3->a;
        v11[1] = v10;
        v11[2] = *&a3->tx;
        [v9 transformUsingAffineTransform:v11];
      }

      v6 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)alignToOrigin
{
  v22 = *MEMORY[0x277D85DE8];
  [-[TSDEditableBezierPathSource bezierPathWithoutFlips](self "bezierPathWithoutFlips")];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  memset(&v20, 0, sizeof(v20));
  v7 = -CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  CGAffineTransformMakeTranslation(&v20, v7, -MinY);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mSubpaths = self->mSubpaths;
  v10 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = v20;
        [v14 transformUsingAffineTransform:&v15];
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)addNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  [v4 addNode:a3];
}

- (void)removeLastNode
{
  v2 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  [v2 removeLastNode];
}

- (id)nodePriorToNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  return [v4 nodePriorToNode:a3];
}

- (id)nodeAfterNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  return [v4 nodeAfterNode:a3];
}

- (TSDBezierNode)firstNode
{
  v2 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  return [v2 firstNode];
}

- (TSDBezierNode)lastNode
{
  v2 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  return [v2 lastNode];
}

- (void)offsetSelectedNodesByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mSubpaths = self->mSubpaths;
  v6 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mSubpaths);
        }

        [*(*(&v10 + 1) + 8 * i) offsetSelectedNodesByDelta:{x, y}];
      }

      v7 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mSubpaths = self->mSubpaths;
  v6 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mSubpaths);
        }

        [*(*(&v10 + 1) + 8 * i) offsetSelectedEdgesByDelta:{x, y}];
      }

      v7 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)hasSelectedNode
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) hasSelectedNode];
      }

      v4 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)allNodesSelected
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(mSubpaths);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) allNodesSelected];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)removeNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mSubpaths objectAtIndex:self->mActiveSubpath];

  [v4 removeNode:a3];
}

- (BOOL)canDeleteSelectedNodes
{
  v3 = [(TSDEditableBezierPathSource *)self isCompound];
  mSubpaths = self->mSubpaths;
  if (v3)
  {
    v5 = [(NSMutableArray *)mSubpaths objectEnumerator];
    v6 = [v5 nextObject];
    if (!v6)
    {
      return 1;
    }

    v7 = v6;
    while (![v7 hasSelectedNode] || objc_msgSend(v7, "canDeleteSelectedNodes"))
    {
      v7 = [v5 nextObject];
      if (!v7)
      {
        return 1;
      }
    }

    v11 = [(NSMutableArray *)self->mSubpaths objectEnumerator];
    do
    {
      v12 = [v11 nextObject];
      v8 = v12 != 0;
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (![v12 hasSelectedNode])
      {
        break;
      }
    }

    while (![v13 canDeleteSelectedNodes]);
    return v8;
  }

  else
  {
    v10 = [(NSMutableArray *)mSubpaths lastObject];

    return [v10 canDeleteSelectedNodes];
  }
}

- (BOOL)deletingSelectedNodesWillDeleteShape
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v7 "nodes")] >= 3)
        {
          v8 = [v7 hasSelectedNode];
          if (!v8)
          {
            return v8;
          }

          if ([v7 canDeleteSelectedNodes])
          {
            LOBYTE(v8) = 0;
            return v8;
          }
        }
      }

      v4 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v8) = 1;
  return v8;
}

- (void)deleteSelectedNodesForced:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mSubpaths = self->mSubpaths;
  v7 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 canDeleteSelectedNodes])
        {
          [v11 deleteSelectedNodes];
        }

        else if (a3 || [v11 allNodesSelected])
        {
          if ([v11 hasSelectedNode])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->mSubpaths removeObjectsInArray:v5];
}

- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = [(NSMutableArray *)[(TSDEditableBezierPathSource *)self subpaths] objectEnumerator];
  do
  {
    result = [v11 nextObject];
    if (!result)
    {
      break;
    }

    v13 = *&a4->c;
    v14[0] = *&a4->a;
    v14[1] = v13;
    v14[2] = *&a4->tx;
    result = [result bezierNodeUnderPoint:v14 withTransform:a6 andTolerance:x returningType:{y, a5}];
  }

  while (!result);
  return result;
}

- (double)distanceToPoint:(CGPoint)a3 subpathIndex:(unint64_t *)a4 elementIndex:(unint64_t *)a5 tValue:(double *)a6 threshold:(double)a7
{
  y = a3.y;
  x = a3.x;
  v14 = [(NSMutableArray *)self->mSubpaths count];
  if (v14)
  {
    v15 = a7 < 1.79769313e308;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v20 = v14;
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 1.79769313e308;
    v21 = 1;
    do
    {
      v22 = [(NSMutableArray *)self->mSubpaths objectAtIndexedSubscript:v21 - 1];
      v25 = 0;
      v26 = 0;
      [v22 distanceToPoint:&v26 elementIndex:&v25 tValue:x threshold:{y, a7}];
      if (v23 < v19)
      {
        v17 = v26;
        v18 = v25;
        v16 = v21 - 1;
        v19 = v23;
      }

      if (v21 >= v20)
      {
        break;
      }

      ++v21;
    }

    while (v19 > a7);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1.79769313e308;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v18;
  }

  return v19;
}

- (BOOL)bezierPathUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 tolerance:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [(TSDEditableBezierPathSource *)self bezierPathWithoutFlips];
  v10 = *&a4->c;
  v12[0] = *&a4->a;
  v12[1] = v10;
  v12[2] = *&a4->tx;
  [v9 transformUsingAffineTransform:v12];
  return [v9 pointOnPath:x tolerance:{y, a5}];
}

- (id)insertNodeAtPoint:(CGPoint)a3 tolerance:(double)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(NSMutableArray *)self->mSubpaths objectEnumerator];
  while (1)
  {
    result = [v7 nextObject];
    if (!result)
    {
      break;
    }

    v9 = result;
    if ([objc_msgSend(result "bezierPath")])
    {

      return [v9 insertNodeAtPoint:x tolerance:{y, a4}];
    }
  }

  return result;
}

- (CGRect)nodeBounds
{
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v6 = [(NSMutableArray *)[(TSDEditableBezierPathSource *)self subpaths] objectEnumerator];
  for (i = v6; ; v6 = i)
  {
    v8 = [v6 nextObject];
    if (!v8)
    {
      break;
    }

    [v8 nodeBounds];
    v20.origin.x = v9;
    v20.origin.y = v10;
    v20.size.width = v11;
    v20.size.height = v12;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectUnion(v17, v20);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)toggleNode:(id)a3 toType:(int)a4 prevNode:(id)a5 nextNode:(id)a6
{
  if ([a3 type] != a4)
  {
    switch(a4)
    {
      case 1:
        [a3 setType:1];
        if ([a6 type] == 1)
        {
          [a3 nodePoint];
          [a3 setOutControlPoint:?];
          [a6 nodePoint];
          [a6 setInControlPoint:?];
        }

        if ([a5 type] == 1)
        {
          [a3 nodePoint];
          [a3 setInControlPoint:?];
          [a5 nodePoint];

          [a5 setOutControlPoint:?];
        }

        break;
      case 3:

        [a3 setType:3];
        break;
      case 2:
        [a3 nodePoint];
        v11 = v10;
        v13 = v12;
        [a3 outControlPoint];
        if (TSDNearlyEqualPoints(v11, v13, v14, v15))
        {
          [a6 nodePoint];
          v17 = v16;
          v19 = v18;
          [a6 inControlPoint];
          if (TSDNearlyEqualPoints(v17, v19, v20, v21))
          {
            [a3 nodePoint];
            v23 = v22;
            v25 = v24;
            [a6 nodePoint];
            [a3 setOutControlPoint:{TSDMixPoints(v23, v25, v26, v27, 0.333333333)}];
            [a3 nodePoint];
            v29 = v28;
            v31 = v30;
            [a6 nodePoint];
            [a6 setInControlPoint:{TSDMixPoints(v29, v31, v32, v33, 0.666666667)}];
          }
        }

        [a3 nodePoint];
        v35 = v34;
        v37 = v36;
        [a3 inControlPoint];
        if (TSDNearlyEqualPoints(v35, v37, v38, v39))
        {
          [a5 nodePoint];
          v41 = v40;
          v43 = v42;
          [a5 outControlPoint];
          if (TSDNearlyEqualPoints(v41, v43, v44, v45))
          {
            [a3 nodePoint];
            v47 = v46;
            v49 = v48;
            [a5 nodePoint];
            [a3 setInControlPoint:{TSDMixPoints(v47, v49, v50, v51, 0.333333333)}];
            [a3 nodePoint];
            v53 = v52;
            v55 = v54;
            [a5 nodePoint];
            [a5 setOutControlPoint:{TSDMixPoints(v53, v55, v56, v57, 0.666666667)}];
          }
        }

        [a3 setType:2];

        [a3 updateReflectedState];
        break;
    }
  }
}

- (void)toggleSelectedNodesToType:(int)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->mSubpaths;
  v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v18)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v6 = [v5 nodes];
        if ([v6 count])
        {
          v7 = [v5 isClosed];
          v8 = v7 ? [v6 lastObject] : 0;
          v9 = [v6 objectAtIndexedSubscript:0];
          v10 = [v6 count];
          if (v10)
          {
            v11 = v10;
            v12 = 1;
            v13 = v10;
            do
            {
              if (((v12 >= v11) & ~v7) != 0)
              {
                v15 = 0;
              }

              else
              {
                if (v13 == 1)
                {
                  v14 = 0;
                }

                else
                {
                  v14 = v12;
                }

                v15 = [v6 objectAtIndexedSubscript:v14];
              }

              if ([v9 isSelected])
              {
                [(TSDEditableBezierPathSource *)self toggleNode:v9 toType:a3 prevNode:v8 nextNode:v15];
              }

              ++v12;
              v8 = v9;
              v9 = v15;
              --v13;
            }

            while (v13);
          }
        }
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v18);
  }
}

- (void)smoothNode:(id)a3
{
  v4 = [(NSMutableArray *)self->mSubpaths objectEnumerator];
  while (1)
  {
    v5 = [v4 nextObject];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    if ([objc_msgSend(v5 "nodes")])
    {

      [v6 smoothNode:a3];
      return;
    }
  }
}

- (BOOL)isClosed
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "nodes")] && (objc_msgSend(v7, "isClosed") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)setClosed:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSubpaths = self->mSubpaths;
  v5 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(mSubpaths);
        }

        [*(*(&v9 + 1) + 8 * i) setClosed:v3];
      }

      v6 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)selectSubpathForNode:(id)a3 toggle:(BOOL)a4
{
  v4 = a4;
  v6 = [(NSMutableArray *)self->mSubpaths objectEnumerator];
  while (1)
  {
    v7 = [v6 nextObject];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    if ([objc_msgSend(v7 "nodes")])
    {
      if (v4 && [v8 allNodesSelected])
      {

        [v8 deselectAllNodes];
      }

      else
      {

        [v8 selectAllNodes];
      }

      return;
    }
  }
}

- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)a3 andSecondPathFirstNode:(BOOL *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *a4 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mSubpaths = self->mSubpaths;
  result = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (([v12 isClosed] & 1) == 0 && objc_msgSend(objc_msgSend(v12, "nodes"), "count"))
        {
          if ([objc_msgSend(v12 "firstNode")])
          {
            if (v9)
            {
              *a4 = 1;
LABEL_18:
              if (!v12)
              {
                return 0;
              }

              v17[0] = v9;
              v17[1] = v12;
              return [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
            }

            *a3 = 1;
            v9 = v12;
          }

          if ([objc_msgSend(v12 "lastNode")])
          {
            if (v9)
            {
              goto LABEL_18;
            }

            v9 = v12;
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      result = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v13 objects:v18 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)connectSelectedNodes
{
  v12 = 0;
  v3 = [(TSDEditableBezierPathSource *)self subpathsForConnectingUsingFirstSubpathFirstNode:&v12 + 1 andSecondPathFirstNode:&v12];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    if (v5 != v6)
    {
      v7 = v6;
      if ((v12 & 0x100) != 0)
      {
        if ((v12 & 1) == 0)
        {
          [objc_msgSend(v6 "nodes")];
          mSubpaths = self->mSubpaths;
          v11 = v5;
          goto LABEL_13;
        }

        [v6 reverseDirection];
        v8 = [v5 nodes];
        v9 = [v7 nodes];
        [v8 insertObjects:v9 atIndexes:{objc_msgSend(MEMORY[0x277CCAA78], "indexSetWithIndexesInRange:", 0, objc_msgSend(objc_msgSend(v7, "nodes"), "count"))}];
      }

      else
      {
        if (!v12)
        {
          [v6 reverseDirection];
        }

        [objc_msgSend(v5 "nodes")];
      }

      mSubpaths = self->mSubpaths;
      v11 = v7;
LABEL_13:
      [(NSMutableArray *)mSubpaths removeObjectIdenticalTo:v11];
      return;
    }

    if (HIBYTE(v12) != v12)
    {
      [v5 setClosed:1];
    }
  }
}

- (BOOL)canCloseSelectedNodes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 isClosed] & 1) == 0 && objc_msgSend(objc_msgSend(v7, "nodes"), "count") && ((objc_msgSend(objc_msgSend(v7, "firstNode"), "isSelected") & 1) != 0 || (objc_msgSend(objc_msgSend(v7, "lastNode"), "isSelected")))
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)closeSelectedNodes
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isClosed] & 1) == 0 && objc_msgSend(objc_msgSend(v7, "nodes"), "count") && ((objc_msgSend(objc_msgSend(v7, "firstNode"), "isSelected") & 1) != 0 || objc_msgSend(objc_msgSend(v7, "lastNode"), "isSelected")))
        {
          if ([objc_msgSend(v7 "firstNode")] == 3)
          {
            [objc_msgSend(v7 "firstNode")];
          }

          [v7 setClosed:1];
        }
      }

      v4 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)deleteSelectedEdges
{
  v24 = [(NSMutableArray *)self->mSubpaths copy];
  v2 = [v24 objectEnumerator];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = v2;
  v4 = [v2 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [objc_msgSend(v5 "nodes")];
      v7 = [v6 count];
      if ([objc_msgSend(v6 "lastObject")])
      {
        [v5 setClosed:0];
      }

      if (v7 < 1)
      {
        goto LABEL_23;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [v6 objectAtIndex:v11];
        if (v12 && [v12 isSelected])
        {
          if (v11 - v10 >= 2)
          {
            v14 = objc_alloc_init(TSDBezierSubpath);
            -[TSDBezierSubpath setNodes:](v14, "setNodes:", [v6 objectsAtIndexes:{objc_msgSend(MEMORY[0x277CCAA78], "indexSetWithIndexesInRange:", v10, v11 - v10)}]);
            [(NSMutableArray *)v3 addObject:v14];

            v15 = [(NSMutableArray *)[(TSDBezierSubpath *)v14 nodes] lastObject];
            [v15 nodePoint];
            [v15 setOutControlPoint:?];
            if (v9 || ([v5 isClosed] & 1) == 0)
            {
              v16 = [(NSMutableArray *)[(TSDBezierSubpath *)v14 nodes] objectAtIndex:0];
              [v16 nodePoint];
              [v16 setInControlPoint:?];
            }

            if (!v9)
            {
              v9 = v14;
            }
          }

          v8 = 1;
          v10 = v11;
        }

        ++v11;
        v12 = v13;
      }

      while (v7 != v11);
      if (v8)
      {
        v17 = v7 - v10;
        if (v17 > 1 || (v18 = [v5 isClosed], v17 == 1) && v18)
        {
          v19 = objc_alloc_init(TSDBezierSubpath);
          -[TSDBezierSubpath setNodes:](v19, "setNodes:", [v6 objectsAtIndexes:{objc_msgSend(MEMORY[0x277CCAA78], "indexSetWithIndexesInRange:", v10, v17)}]);
          [(NSMutableArray *)v3 addObject:v19];

          v20 = [v5 isClosed];
          v21 = [(TSDBezierSubpath *)v19 nodes];
          if (v20)
          {
            [(NSMutableArray *)v21 addObjectsFromArray:[(TSDBezierSubpath *)v9 nodes]];
            [(NSMutableArray *)v3 removeObjectIdenticalTo:v9];
          }

          else
          {
            v22 = [(NSMutableArray *)v21 objectAtIndex:0];
            [v22 nodePoint];
            [v22 setInControlPoint:?];
            v23 = [(NSMutableArray *)[(TSDBezierSubpath *)v19 nodes] lastObject];
            [v23 nodePoint];
            [v23 setOutControlPoint:?];
          }
        }
      }

      else
      {
LABEL_23:
        [(NSMutableArray *)v3 addObject:v5];
      }

      v5 = [v26 nextObject];
    }

    while (v5);
  }

  self->mSubpaths = v3;
}

- (id)splitEdge:(int64_t)a3 at:(double)a4 fromSubpath:(int64_t)a5
{
  v52[8] = *MEMORY[0x277D85DE8];
  v7 = [-[NSMutableArray objectAtIndex:](self->mSubpaths objectAtIndex:{a5), "nodes"}];
  v8 = v7;
  if (a3 <= 0)
  {
    v9 = [v7 lastObject];
    v10 = [v8 objectAtIndex:0];
    a3 = [v8 count];
  }

  else
  {
    v9 = [v7 objectAtIndex:a3 - 1];
    v10 = [v8 objectAtIndex:a3];
  }

  [v10 nodePoint];
  v12 = v11;
  v14 = v13;
  [v10 inControlPoint];
  if (TSDNearlyEqualPoints(v12, v14, v15, v16) && ([v9 nodePoint], v18 = v17, v20 = v19, objc_msgSend(v9, "outControlPoint"), TSDNearlyEqualPoints(v18, v20, v21, v22)))
  {
    [v9 nodePoint];
    v24 = v23;
    v26 = v25;
    [v10 nodePoint];
    v29 = [TSDBezierNode bezierNodeWithPoint:(1.0 - a4) * v24 + a4 * v27, (1.0 - a4) * v26 + a4 * v28];
  }

  else
  {
    [v9 nodePoint];
    v40.f64[0] = v30;
    v40.f64[1] = v31;
    [v9 outControlPoint];
    v41 = v32;
    v42 = v33;
    [v10 inControlPoint];
    v43 = v34;
    v44 = v35;
    [v10 nodePoint];
    v45 = v36;
    v46 = v37;
    TSDCurveBetween(&v40, v47, 0.0, a4);
    TSDCurveBetween(&v40, v52, a4, 1.0);
    [v9 setOutControlPoint:{v48, v49}];
    [v10 setInControlPoint:{v52[4], v52[5]}];
    v29 = [TSDBezierNode bezierNodeWithPoint:v52[0] inControlPoint:v52[1] outControlPoint:v50, v51, v52[2], v52[3]];
  }

  v38 = v29;
  [(TSDBezierNode *)v29 setSelected:1];
  [v8 insertObject:v38 atIndex:a3];
  return v38;
}

- (void)splitSelectedEdges
{
  v3 = [(NSMutableArray *)self->mSubpaths count];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [-[NSMutableArray objectAtIndex:](self->mSubpaths objectAtIndex:{i), "nodes"}];
      v7 = [v6 count];
      if (v7 >= 1)
      {
        v8 = v7;
        v9 = 0;
        for (j = 0; j < v8; ++j)
        {
          v11 = [v6 objectAtIndex:j];
          if (v9)
          {
            if ([v9 isSelected])
            {
              [(TSDEditableBezierPathSource *)self splitEdge:j++ at:i fromSubpath:0.5];
              ++v8;
            }
          }

          v9 = v11;
        }
      }
    }
  }
}

- (void)splitSelectedNodes
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v7 = [*(*(&v23 + 1) + 8 * i) nodes];
        v8 = [v7 count];
        if (v8)
        {
          v9 = v8;
          for (j = 0; j < v9; ++j)
          {
            v11 = [v7 objectAtIndex:j];
            if ([v11 isSelected])
            {
              [v11 nodePoint];
              v13 = v12;
              v15 = v14;
              [v11 nodePoint];
              v17 = v16;
              v19 = v18;
              [v11 outControlPoint];
              v22 = [TSDBezierNode bezierNodeWithPoint:v13 inControlPoint:v15 outControlPoint:v17, v19, v20, v21];
              [(TSDBezierNode *)v22 setSelected:0];
              [v11 nodePoint];
              [v11 setOutControlPoint:?];
              [v7 insertObject:v22 atIndex:++j];
              ++v9;
            }
          }
        }
      }

      v4 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }
}

- (BOOL)canCutAtSelectedNodes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mSubpaths = self->mSubpaths;
  v3 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(mSubpaths);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 nodes];
        v9 = [v7 isClosed];
        v10 = [v8 count];
        if (v10)
        {
          v11 = v9 ^ 1u;
          v12 = v10 - ([v7 isClosed] ^ 1);
          if (v12 > v11)
          {
            while (([objc_msgSend(v8 objectAtIndexedSubscript:{v11), "isSelected"}] & 1) == 0)
            {
              if (v12 == ++v11)
              {
                goto LABEL_10;
              }
            }

            LOBYTE(v3) = 1;
            return v3;
          }
        }

LABEL_10:
        ;
      }

      v4 = [(NSMutableArray *)mSubpaths countByEnumeratingWithState:&v14 objects:v18 count:16];
      LOBYTE(v3) = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)cutAtSelectedNodes
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self;
  obj = self->mSubpaths;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v7 nodes];
        if ([v8 count])
        {
          if ([v7 isClosed])
          {
            v9 = [v8 count];
            while (v9)
            {
              v10 = [v8 objectAtIndexedSubscript:--v9];
              if ([v10 isSelected])
              {
                [v10 setSelected:0];
                if (v9)
                {
                  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v11 addObjectsFromArray:{objc_msgSend(v8, "subarrayWithRange:", v9, objc_msgSend(v8, "count") - v9)}];
                  [v11 addObjectsFromArray:{objc_msgSend(v8, "subarrayWithRange:", 0, v9)}];
                  [v7 setNodes:v11];

                  v8 = v11;
                }

                v12 = [v10 copy];
                [objc_msgSend(v7 "nodes")];

                [v7 setClosed:0];
                break;
              }
            }
          }

          if (([v7 isClosed] & 1) == 0)
          {
            v13 = [v8 count];
            v14 = v13 - 1;
            if ((v13 - 1) >= 2)
            {
              v15 = 1 - v13;
              do
              {
                v16 = v14 - 1;
                v17 = [v8 objectAtIndexedSubscript:v14 - 1];
                if ([v17 isSelected])
                {
                  [v17 setSelected:0];
                  v18 = objc_alloc_init(TSDBezierSubpath);
                  v19 = [v17 copy];
                  [(NSMutableArray *)[(TSDBezierSubpath *)v18 nodes] addObject:v19];

                  -[NSMutableArray addObjectsFromArray:](-[TSDBezierSubpath nodes](v18, "nodes"), "addObjectsFromArray:", [v8 subarrayWithRange:{v14, objc_msgSend(v8, "count") + v15}]);
                  [v8 removeObjectsInRange:{v14, objc_msgSend(v8, "count") + v15}];
                  [v3 addObject:v18];
                }

                ++v15;
                --v14;
              }

              while (v16 > 1);
            }
          }
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)v20->mSubpaths addObjectsFromArray:v3];
}

- (CGPath)subpathForSelection
{
  v3 = +[TSDBezierPath bezierPath];
  v4 = [(NSMutableArray *)self->mSubpaths objectEnumerator];
  for (i = v4; ; v4 = i)
  {
    v6 = [v4 nextObject];
    if (!v6)
    {
      break;
    }

    [v6 appendToBezierPath:v3 selectedNodesOnly:1 fromIndex:0];
  }

  return [v3 CGPath];
}

- (NSArray)nodeTypes
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->mSubpaths;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 nodes];
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              -[NSArray addObject:](v3, "addObject:", [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(*(*(&v16 + 1) + 8 * j), "type")}]);
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)setNodeTypes:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->mSubpaths;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 nodes];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * v14++) setType:{objc_msgSend(objc_msgSend(a3, "objectAtIndex:", v6++), "intValue")}];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(NSMutableArray *)self->mSubpaths lastObject];
  if ([objc_msgSend(v6 "nodes")])
  {
    if ([objc_msgSend(v6 "nodes")] == 1)
    {
      v7 = [objc_msgSend(v6 "nodes")];

      [v7 setNodePoint:{x, y}];
    }

    else
    {
      v9 = objc_alloc_init(TSDBezierSubpath);
      [(NSMutableArray *)self->mSubpaths addObject:v9];
    }
  }

  else
  {
    v8 = [TSDBezierNode bezierNodeWithPoint:x, y];

    [v6 addNode:v8];
  }
}

- (void)lineToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(NSMutableArray *)self->mSubpaths lastObject];
  if (![objc_msgSend(v5 "nodes")])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditableBezierPathSource lineToPoint:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditableBezierPathSource.m"), 2291, @"cannot add line to subpath without move first"}];
  }

  v8 = [TSDBezierNode bezierNodeWithPoint:x, y];

  [v5 addNode:v8];
}

- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = [(NSMutableArray *)self->mSubpaths lastObject];
  if (![objc_msgSend(v11 "nodes")])
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditableBezierPathSource curveToPoint:controlPoint1:controlPoint2:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditableBezierPathSource.m"), 2299, @"cannot add line to subpath without move first"}];
  }

  [objc_msgSend(objc_msgSend(v11 "nodes")];
  v14 = [TSDBezierNode bezierNodeWithPoint:v10 inControlPoint:v9 outControlPoint:x, y, v10, v9];

  [v11 addNode:v14];
}

- (void)smoothCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  [(TSDEditableBezierPathSource *)self curveToPoint:a3.x controlPoint1:a3.y controlPoint2:a4.x, a4.y, a5.x, a5.y];
  v6 = [objc_msgSend(-[NSMutableArray lastObject](self->mSubpaths "lastObject")];

  [v6 setType:3];
}

- (void)closePath
{
  v3 = [(NSMutableArray *)self->mSubpaths lastObject];
  if ([objc_msgSend(v3 "nodes")] <= 1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditableBezierPathSource closePath]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditableBezierPathSource.m"), 2320, @"cannot close subpath without a line or curve segment"}];
  }

  [v3 setClosed:1];
  v6 = [objc_msgSend(v3 "nodes")];
  v7 = [objc_msgSend(v3 "nodes")];
  [v6 nodePoint];
  v9 = v8;
  v11 = v10;
  [v7 nodePoint];
  if (TSDNearlyEqualPoints(v9, v11, v12, v13))
  {
    [v7 inControlPoint];
    [v6 setInControlPoint:?];
    [objc_msgSend(v3 "nodes")];
  }

  v14 = objc_alloc_init(TSDBezierSubpath);
  [(NSMutableArray *)self->mSubpaths addObject:v14];
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TSDEditableBezierPathSource_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48B38;
  v4[4] = a3;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __52__TSDEditableBezierPathSource_mixingTypeWithObject___block_invoke()
{
  objc_opt_class();
  if (!TSUDynamicCast())
  {
    v0 = [MEMORY[0x277D6C290] currentHandler];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditableBezierPathSource mixingTypeWithObject:]_block_invoke"];
    [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditableBezierPathSource.m"), 2344, @"nil object after cast"}];
  }

  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__TSDEditableBezierPathSource_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D496A0;
  v5[4] = self;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

@end