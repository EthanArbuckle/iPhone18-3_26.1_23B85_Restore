@interface TSDEditableBezierPathSource
+ (TSDEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)a3;
+ (TSDEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)a3;
+ (id)editableBezierPathSource;
- (BOOL)allNodesSelected;
- (BOOL)canCloseSelectedNodes;
- (BOOL)canConnectSelectedNodes;
- (BOOL)canCutAtSelectedNodes;
- (BOOL)canDeleteSelectedNodes;
- (BOOL)closeIfEndpointsAreEqual;
- (BOOL)deletingSelectedNodesWillDeleteShape;
- (BOOL)hasSelectedNode;
- (BOOL)isCircular;
- (BOOL)isClosed;
- (BOOL)isCompound;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualWithStrictComparison:(id)a3;
- (BOOL)isRectangular;
- (CGAffineTransform)pathFlipTransform;
- (CGPath)pathWithoutFlips;
- (CGPath)subpathForSelection;
- (CGPoint)p_calculateNewStartPointLocationFromOffsetDistance:(double)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5;
- (CGRect)nodeBounds;
- (CGSize)naturalSize;
- (NSArray)nodeTypes;
- (NSArray)nodes;
- (TSDBezierNode)firstNode;
- (TSDBezierNode)lastNode;
- (TSDEditableBezierPathSource)init;
- (TSDEditableBezierPathSource)initWithArchive:(const void *)a3;
- (double)distanceToPoint:(CGPoint)a3 subpathIndex:(unint64_t *)a4 elementIndex:(unint64_t *)a5 tValue:(double *)a6 threshold:(double)a7;
- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)nodeAfterNode:(id)a3;
- (id)nodePriorToNode:(id)a3;
- (id)splitEdge:(int64_t)a3 at:(double)a4 fromSubpath:(int64_t)a5;
- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)a3 andSecondPathFirstNode:(BOOL *)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)addNode:(id)a3;
- (void)alignToOrigin;
- (void)beginNewSubpath;
- (void)closePath;
- (void)closeSelectedNodes;
- (void)connectSelectedNodes;
- (void)convertToHobby;
- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)cutAtSelectedNodesWithOffset:(BOOL)a3;
- (void)deleteSelectedEdges;
- (void)deleteSelectedNodesForced:(BOOL)a3;
- (void)deselectAllNodes;
- (void)lineToPoint:(CGPoint)a3;
- (void)moveToPoint:(CGPoint)a3;
- (void)offsetSelectedEdgesByDelta:(CGPoint)a3;
- (void)offsetSelectedNodesByDelta:(CGPoint)a3;
- (void)p_offsetSubpathsFromNodes:(id)a3 endNodeOne:(id)a4 startNodeTwo:(id)a5 endNodeTwo:(id)a6 offsetDistance:(double)a7;
- (void)removeLastNode;
- (void)removeNode:(id)a3;
- (void)reverseDirection;
- (void)saveToArchive:(void *)a3;
- (void)selectAllNodes;
- (void)selectSubpathForNode:(id)a3 toggle:(BOOL)a4;
- (void)setBezierPath:(id)a3;
- (void)setClosed:(BOOL)a3;
- (void)setLockedFlipTransform:(BOOL)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setNodeTypes:(id)a3;
- (void)setNodes:(id)a3;
- (void)sharpenAllNodes;
- (void)smoothAllNodes;
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
  v9.receiver = self;
  v9.super_class = TSDEditableBezierPathSource;
  v2 = [(TSDEditableBezierPathSource *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSDBezierSubpath);
    v4 = objc_alloc(MEMORY[0x277CBEA60]);
    v6 = objc_msgSend_initWithObjects_(v4, v5, v3, 0);
    mSubpaths = v2->mSubpaths;
    v2->mSubpaths = v6;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p subpaths=%p>", v5, self, self->mSubpaths);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  hasHorizontalFlip = objc_msgSend_hasHorizontalFlip(self, v5, v6);
  objc_msgSend_setHasHorizontalFlip_(v4, v8, hasHorizontalFlip);
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v9, v10);
  objc_msgSend_setHasVerticalFlip_(v4, v12, hasVerticalFlip);
  v13 = objc_alloc(MEMORY[0x277CBEA60]);
  v16 = objc_msgSend_subpaths(self, v14, v15);
  v18 = objc_msgSend_initWithArray_copyItems_(v13, v17, v16, 1);

  objc_msgSend_setSubpaths_(v4, v19, v18);
  return v4;
}

+ (id)editableBezierPathSource
{
  v2 = objc_alloc_init(TSDEditableBezierPathSource);

  return v2;
}

+ (TSDEditableBezierPathSource)editableBezierPathSourceWithPathSource:(id)a3
{
  v4 = objc_msgSend_bezierPath(a3, a2, a3);
  v6 = objc_msgSend_editableBezierPathSourceWithBezierPath_(a1, v5, v4);

  return v6;
}

+ (TSDEditableBezierPathSource)editableBezierPathSourceWithBezierPath:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_editableBezierPathSource(TSDEditableBezierPathSource, v4, v5);
  objc_msgSend_setBezierPath_(v6, v7, v3);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqual = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSDEditableBezierPathSource;
    if ([(TSDPathSource *)&v15 isEqual:v4])
    {
      v5 = v4;
      v8 = objc_msgSend_bezierPath(self, v6, v7);
      v11 = objc_msgSend_bezierPath(v5, v9, v10);

      isEqual = objc_msgSend_isEqual_(v8, v12, v11);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_bezierPath(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6) != 0;

  v10 = v7;
  v9.receiver = self;
  v9.super_class = TSDEditableBezierPathSource;
  [(TSDPathSource *)&v9 hash];
  return TSUHashWithSeed();
}

- (BOOL)isEqualWithStrictComparison:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v20 = 1;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSDEditableBezierPathSource;
    if ([(TSDPathSource *)&v22 isEqual:v4])
    {
      v5 = v4;
      v8 = objc_msgSend_bezierPath(self, v6, v7);
      v9 = v8;
      v12 = objc_msgSend_CGPath(v9, v10, v11);

      v15 = objc_msgSend_bezierPath(v5, v13, v14);
      v16 = v15;
      v19 = objc_msgSend_CGPath(v16, v17, v18);

      v20 = v12 == v19 || CGPathEqualToPath(v12, v19);
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (BOOL)closeIfEndpointsAreEqual
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  v6 = objc_msgSend_objectAtIndex_(v4, v5, self->mActiveSubpath);
  v9 = objc_msgSend_closeIfEndpointsAreEqual(v6, v7, v8);

  return v9;
}

- (BOOL)isRectangular
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_subpaths(self, v7, v8);
    v12 = objc_msgSend_lastObject(v9, v10, v11);
    isRectangular = objc_msgSend_isRectangular(v12, v13, v14);
  }

  else
  {
    isRectangular = 0;
  }

  return isRectangular;
}

- (BOOL)isCircular
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_subpaths(self, v7, v8);
    v12 = objc_msgSend_lastObject(v9, v10, v11);
    isCircular = objc_msgSend_isCircular(v12, v13, v14);
  }

  else
  {
    isCircular = 0;
  }

  return isCircular;
}

- (id)bezierPathWithoutFlips
{
  v4 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_moveToPoint_(v4, v5, v6, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  v9 = objc_msgSend_subpaths(self, v7, v8);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v9, v10, sel_appendToBezierPath_, v4);

  return v4;
}

- (CGPath)pathWithoutFlips
{
  v3 = objc_msgSend_bezierPathWithoutFlips(self, a2, v2);
  v4 = v3;
  v7 = objc_msgSend_CGPath(v4, v5, v6);

  return v7;
}

- (void)convertToHobby
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_convertToHobby);
}

- (void)setBezierPath:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_elementCount(v4, v5, v6);
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_276688300;
  v68 = sub_276688310;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_276688300;
  v62 = sub_276688310;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_276688300;
  v56 = sub_276688310;
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_276688318;
  v51[3] = &unk_27A6CC970;
  v51[4] = &v58;
  v51[5] = &v52;
  v51[6] = &v64;
  v9 = MEMORY[0x277C9C8B0](v51);
  if (v7 >= 1)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v14 = objc_msgSend_elementAtIndex_associatedPoints_(v4, v8, v10, &v70);
      if (v65[5])
      {
        v9[2](v9);
      }

      v15 = objc_msgSend_lastNode(v59[5], v12, v13);
      v18 = v15;
      if (v14 <= 1)
      {
        break;
      }

      if (v14 == 2)
      {
        objc_msgSend_setOutControlPoint_(v15, v16, v17, v70, v71);
        objc_msgSend_setType_(v18, v35, 2);
        v38 = objc_msgSend_bezierNodeWithPoint_inControlPoint_outControlPoint_(TSDBezierNode, v36, v37, v74, v75, v72, v73, v74, v75);

        objc_msgSend_addNode_(v59[5], v39, v38);
        v11 = v38;
        goto LABEL_23;
      }

      if (v14 == 3)
      {
        v21 = objc_msgSend_firstNode(v59[5], v16, v17);
        v24 = v21;
        if (v18)
        {
          v25 = v21 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          objc_msgSend_nodePoint(v18, v22, v23);
          objc_msgSend_nodePoint(v24, v26, v27);
          if (TSUNearlyEqualPoints())
          {
            objc_msgSend_inControlPoint(v18, v22, v28);
            objc_msgSend_setInControlPoint_(v24, v29, v30);
            objc_msgSend_removeLastNode(v59[5], v31, v32);
          }
        }

        objc_msgSend_setClosed_(v59[5], v22, 1);
LABEL_20:
      }

LABEL_23:

      if (v7 == ++v10)
      {
        goto LABEL_26;
      }
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v19 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v16, v17, v70, v71);

        objc_msgSend_addNode_(v59[5], v20, v19);
        v11 = v19;
      }

      goto LABEL_23;
    }

    v33 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v16, v17, v70, v71);
    v34 = v65[5];
    v65[5] = v33;

    if (!v10)
    {
      v9[2](v9);
      goto LABEL_23;
    }

    v24 = v59[5];
    v59[5] = 0;
    goto LABEL_20;
  }

  v11 = 0;
LABEL_26:
  objc_msgSend_setSubpaths_(self, v8, v53[5]);
  v42 = objc_msgSend_subpaths(self, v40, v41);
  objc_msgSend_makeObjectsPerformSelector_(v42, v43, sel_updateReflectedState);

  v46 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v44, v45);
  v48 = objc_msgSend_BOOLForKey_(v46, v47, @"TSDCreateBezierNodesByDefault");

  if ((v48 & 1) == 0)
  {
    objc_msgSend_convertToHobby(self, v49, v50);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
}

- (void)setNodes:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(TSDBezierSubpath);
  objc_msgSend_setNodes_(v5, v6, v4);

  v10[0] = v5;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v10, 1);
  objc_msgSend_setSubpaths_(self, v9, v8);
}

- (NSArray)nodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_subpaths(self, v4, v5);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v6, v7, sel_addNodesToArray_, v3);

  v10 = objc_msgSend_copy(v3, v8, v9);

  return v10;
}

- (void)reverseDirection
{
  v8 = objc_msgSend_subpaths(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v8, v4, self->mActiveSubpath);
  objc_msgSend_reverseDirection(v5, v6, v7);
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

- (void)beginNewSubpath
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  v5 = objc_alloc_init(TSDBezierSubpath);
  v7 = objc_msgSend_arrayByAddingObject_(v4, v6, v5);
  objc_msgSend_setSubpaths_(self, v8, v7);

  v13 = objc_msgSend_subpaths(self, v9, v10);
  self->mActiveSubpath = objc_msgSend_count(v13, v11, v12) - 1;
}

- (CGAffineTransform)pathFlipTransform
{
  if (LOBYTE(self[1].b) == 1)
  {
    v5 = *&self[1].tx;
    *&retstr->a = *&self[1].c;
    *&retstr->c = v5;
    *&retstr->tx = *&self[2].a;
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
  v3 = objc_msgSend_bezierPathWithoutFlips(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_bounds(v3, v4, v5);
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_nodes(self, a2, v3);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10 >= 2)
  {
    objc_msgSend_naturalSize(self, v11, v12);
    if (v13 <= 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = width / v13;
    }

    memset(&v32.c, 0, 32);
    if (v14 <= 0.0)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = height / v14;
    }

    *&v32.a = 0uLL;
    CGAffineTransformMakeScale(&v32, v15, v16);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = objc_msgSend_subpaths(self, v17, v18);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v33, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v28 + 1) + 8 * i);
          v27 = v32;
          objc_msgSend_transformUsingAffineTransform_(v26, v22, &v27);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v28, v33, 16);
      }

      while (v23);
    }
  }
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_subpaths(self, a2, a3);
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

- (void)alignToOrigin
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_bezierPath(self, a2, v2);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v44.origin.x = v8;
  v44.origin.y = v10;
  v44.size.width = v12;
  v44.size.height = v14;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v8;
  v45.origin.y = v10;
  v45.size.width = v12;
  v45.size.height = v14;
  MinY = CGRectGetMinY(v45);
  LODWORD(v4) = objc_msgSend_hasHorizontalFlip(self, v15, v16);
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v17, v18);
  v20 = 1.0;
  if (v4)
  {
    v21 = -1.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (hasVerticalFlip)
  {
    v20 = -1.0;
  }

  CGAffineTransformMakeScale(&v41, v21, v20);
  v22 = vaddq_f64(*&v41.tx, vmlaq_n_f64(vmulq_n_f64(*&v41.c, MinY), *&v41.a, MinX));
  v23 = vmovn_s64(vceqq_f64(v22, *MEMORY[0x277CBF348]));
  if ((v23.i32[0] & v23.i32[1] & 1) == 0)
  {
    memset(&v41, 0, sizeof(v41));
    CGAffineTransformMakeTranslation(&v41, -v22.f64[0], -v22.f64[1]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = objc_msgSend_subpaths(self, v24, v25);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v42, 16);
    if (v28)
    {
      v30 = v28;
      v31 = *v38;
      do
      {
        v32 = 0;
        do
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v37 + 1) + 8 * v32);
          v36 = v41;
          objc_msgSend_transformUsingAffineTransform_(v33, v29, &v36);
          ++v32;
        }

        while (v30 != v32);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v37, v42, 16);
      }

      while (v30);
    }
  }
}

- (void)addNode:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_subpaths(self, v5, v6);
  v8 = objc_msgSend_objectAtIndex_(v10, v7, self->mActiveSubpath);
  objc_msgSend_addNode_(v8, v9, v4);
}

- (void)removeLastNode
{
  v8 = objc_msgSend_subpaths(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v8, v4, self->mActiveSubpath);
  objc_msgSend_removeLastNode(v5, v6, v7);
}

- (id)nodePriorToNode:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_subpaths(self, v5, v6);
  v9 = objc_msgSend_objectAtIndex_(v7, v8, self->mActiveSubpath);
  v11 = objc_msgSend_nodePriorToNode_(v9, v10, v4);

  return v11;
}

- (id)nodeAfterNode:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_subpaths(self, v5, v6);
  v9 = objc_msgSend_objectAtIndex_(v7, v8, self->mActiveSubpath);
  v11 = objc_msgSend_nodeAfterNode_(v9, v10, v4);

  return v11;
}

- (TSDBezierNode)firstNode
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  v6 = objc_msgSend_objectAtIndex_(v4, v5, self->mActiveSubpath);
  v9 = objc_msgSend_firstNode(v6, v7, v8);

  return v9;
}

- (TSDBezierNode)lastNode
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  v6 = objc_msgSend_objectAtIndex_(v4, v5, self->mActiveSubpath);
  v9 = objc_msgSend_lastNode(v6, v7, v8);

  return v9;
}

- (void)offsetSelectedNodesByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = objc_msgSend_subpaths(self, a2, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_offsetSelectedNodesByDelta_(*(*(&v14 + 1) + 8 * v13++), v9, v10, x, y);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)offsetSelectedEdgesByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = objc_msgSend_subpaths(self, a2, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_offsetSelectedEdgesByDelta_(*(*(&v14 + 1) + 8 * v13++), v9, v10, x, y);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
    }

    while (v11);
  }
}

- (BOOL)hasSelectedNode
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_hasSelectedNode(*(*(&v11 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)allNodesSelected
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_allNodesSelected(*(*(&v13 + 1) + 8 * i), v6, v7))
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)removeNode:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_subpaths(self, v5, v6);
  v8 = objc_msgSend_objectAtIndex_(v10, v7, self->mActiveSubpath);
  objc_msgSend_removeNode_(v8, v9, v4);
}

- (BOOL)isCompound
{
  v3 = objc_msgSend_subpaths(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) > 1;

  return v6;
}

- (BOOL)canDeleteSelectedNodes
{
  isCompound = objc_msgSend_isCompound(self, a2, v2);
  v7 = objc_msgSend_subpaths(self, v5, v6);
  v10 = v7;
  if ((isCompound & 1) == 0)
  {
    v17 = objc_msgSend_lastObject(v7, v8, v9);
    v21 = objc_msgSend_canDeleteSelectedNodes(v17, v22, v23);
LABEL_9:

    v11 = v10;
    goto LABEL_10;
  }

  v11 = objc_msgSend_objectEnumerator(v7, v8, v9);

  v14 = objc_msgSend_nextObject(v11, v12, v13);
  if (v14)
  {
    v17 = v14;
    while (!objc_msgSend_hasSelectedNode(v17, v15, v16) || objc_msgSend_canDeleteSelectedNodes(v17, v18, v19))
    {
      v20 = objc_msgSend_nextObject(v11, v18, v19);

      v17 = v20;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    v25 = objc_msgSend_subpaths(self, v18, v19);
    v10 = objc_msgSend_objectEnumerator(v25, v26, v27);

    do
    {
      v30 = v17;
      v17 = objc_msgSend_nextObject(v10, v28, v29);

      v21 = v17 != 0;
    }

    while (v17 && objc_msgSend_hasSelectedNode(v17, v31, v32) && !objc_msgSend_canDeleteSelectedNodes(v17, v33, v34));
    goto LABEL_9;
  }

LABEL_7:
  v21 = 1;
LABEL_10:

  return v21;
}

- (BOOL)deletingSelectedNodesWillDeleteShape
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v22, v26, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = objc_msgSend_nodes(v11, v6, v7);
        if (objc_msgSend_count(v12, v13, v14) < 3)
        {
        }

        else
        {
          if (!objc_msgSend_hasSelectedNode(v11, v15, v16))
          {

LABEL_15:
            v20 = 0;
            goto LABEL_16;
          }

          v19 = objc_msgSend_canDeleteSelectedNodes(v11, v17, v18);

          if (v19)
          {
            goto LABEL_15;
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v22, v26, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_16:

  return v20;
}

- (void)deleteSelectedNodesForced:(BOOL)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = objc_msgSend_subpaths(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_canDeleteSelectedNodes(v16, v11, v12))
        {
          objc_msgSend_deleteSelectedNodes(v16, v11, v12);
        }

        else if (a3 || objc_msgSend_allNodesSelected(v16, v11, v12))
        {
          if (objc_msgSend_hasSelectedNode(v16, v11, v12))
          {
            objc_msgSend_addObject_(v5, v11, v16);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v25, v29, 16);
    }

    while (v13);
  }

  v19 = objc_msgSend_subpaths(self, v17, v18);
  v22 = objc_msgSend_mutableCopy(v19, v20, v21);

  objc_msgSend_removeObjectsInArray_(v22, v23, v5);
  objc_msgSend_setSubpaths_(self, v24, v22);
}

- (void)selectAllNodes
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_selectAllNodes);
}

- (void)deselectAllNodes
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_deselectAllNodes);
}

- (id)bezierNodeUnderPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = objc_msgSend_subpaths(self, a2, a4);
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
    v24[0] = *&a4->a;
    v24[1] = v20;
    v24[2] = *&a4->tx;
    v21 = objc_msgSend_bezierNodeUnderPoint_withTransform_andTolerance_returningType_(v17, v19, v24, a6, x, y, a5);
    if (v21)
    {
      v22 = v21;
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:

  return v22;
}

- (double)distanceToPoint:(CGPoint)a3 subpathIndex:(unint64_t *)a4 elementIndex:(unint64_t *)a5 tValue:(double *)a6 threshold:(double)a7
{
  y = a3.y;
  x = a3.x;
  v13 = objc_msgSend_subpaths(self, a2, a4);
  v16 = objc_msgSend_count(v13, v14, v15);

  v19 = 0;
  v20 = 0;
  v21 = 1.79769313e308;
  if (v16)
  {
    v22 = 0;
    if (a7 < 1.79769313e308)
    {
      v22 = 0;
      v19 = 0;
      v21 = 1.79769313e308;
      v23 = 1;
      do
      {
        v24 = objc_msgSend_subpaths(self, v17, v18);
        v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, v23 - 1);

        v31 = 0;
        v32 = 0;
        objc_msgSend_distanceToPoint_elementIndex_tValue_threshold_(v26, v27, &v32, &v31, x, y, a7);
        if (v28 < v21)
        {
          v22 = v32;
          v20 = v31;
          v19 = v23 - 1;
          v21 = v28;
        }

        if (v23 >= v16)
        {
          break;
        }

        ++v23;
      }

      while (v21 > a7);
    }

    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    if (a4)
    {
LABEL_9:
      *a4 = v19;
    }
  }

  if (a5)
  {
    *a5 = v22;
  }

  if (a6)
  {
    *a6 = v20;
  }

  return v21;
}

- (CGRect)nodeBounds
{
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v7 = objc_msgSend_subpaths(self, a2, v2);
  v10 = objc_msgSend_objectEnumerator(v7, v8, v9);

  v13 = objc_msgSend_nextObject(v10, v11, v12);
  if (v13)
  {
    v16 = v13;
    do
    {
      objc_msgSend_nodeBounds(v16, v14, v15);
      v31.origin.x = v17;
      v31.origin.y = v18;
      v31.size.width = v19;
      v31.size.height = v20;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v29 = CGRectUnion(v28, v31);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      v23 = objc_msgSend_nextObject(v10, v21, v22);

      v16 = v23;
    }

    while (v23);
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)toggleNode:(id)a3 toType:(int)a4 prevNode:(id)a5 nextNode:(id)a6
{
  v68 = a3;
  v9 = a5;
  v10 = a6;
  if (objc_msgSend_type(v68, v11, v12) != a4)
  {
    switch(a4)
    {
      case 1:
        objc_msgSend_setType_(v68, v13, 1);
        if (objc_msgSend_type(v10, v50, v51) == 1)
        {
          objc_msgSend_nodePoint(v68, v52, v53);
          objc_msgSend_setOutControlPoint_(v68, v54, v55);
          objc_msgSend_nodePoint(v10, v56, v57);
          objc_msgSend_setInControlPoint_(v10, v58, v59);
        }

        if (objc_msgSend_type(v9, v52, v53) == 1)
        {
          objc_msgSend_nodePoint(v68, v60, v61);
          objc_msgSend_setInControlPoint_(v68, v62, v63);
          objc_msgSend_nodePoint(v9, v64, v65);
          objc_msgSend_setOutControlPoint_(v9, v66, v67);
        }

        break;
      case 3:
        objc_msgSend_setType_(v68, v13, 3);
        break;
      case 2:
        objc_msgSend_nodePoint(v68, v13, v14);
        objc_msgSend_outControlPoint(v68, v15, v16);
        if (TSUNearlyEqualPoints())
        {
          objc_msgSend_nodePoint(v10, v17, v18);
          objc_msgSend_inControlPoint(v10, v19, v20);
          if (TSUNearlyEqualPoints())
          {
            objc_msgSend_nodePoint(v68, v17, v18);
            objc_msgSend_nodePoint(v10, v21, v22);
            TSUMixPoints();
            objc_msgSend_setOutControlPoint_(v68, v23, v24);
            objc_msgSend_nodePoint(v68, v25, v26);
            objc_msgSend_nodePoint(v10, v27, v28);
            TSUMixPoints();
            objc_msgSend_setInControlPoint_(v10, v29, v30);
          }
        }

        objc_msgSend_nodePoint(v68, v17, v18);
        objc_msgSend_inControlPoint(v68, v31, v32);
        if (TSUNearlyEqualPoints())
        {
          objc_msgSend_nodePoint(v9, v33, v34);
          objc_msgSend_outControlPoint(v9, v35, v36);
          if (TSUNearlyEqualPoints())
          {
            objc_msgSend_nodePoint(v68, v33, v37);
            objc_msgSend_nodePoint(v9, v38, v39);
            TSUMixPoints();
            objc_msgSend_setInControlPoint_(v68, v40, v41);
            objc_msgSend_nodePoint(v68, v42, v43);
            objc_msgSend_nodePoint(v9, v44, v45);
            TSUMixPoints();
            objc_msgSend_setOutControlPoint_(v9, v46, v47);
          }
        }

        objc_msgSend_setType_(v68, v33, 2);
        objc_msgSend_updateReflectedState(v68, v48, v49);
        break;
    }
  }
}

- (void)toggleSelectedNodesToType:(int)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = objc_msgSend_subpaths(self, a2, *&a3);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v34, v38, 16);
  if (v31)
  {
    v30 = *v35;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = objc_msgSend_nodes(v7, v4, v5);
        if (objc_msgSend_count(v8, v9, v10))
        {
          isClosed = objc_msgSend_isClosed(v7, v11, v12);
          if (isClosed)
          {
            v16 = objc_msgSend_lastObject(v8, v13, v14);
          }

          else
          {
            v16 = 0;
          }

          v17 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, 0);
          v20 = objc_msgSend_count(v8, v18, v19);
          if (v20)
          {
            v23 = v20;
            v24 = 1;
            v25 = v20;
            do
            {
              if (((v24 >= v23) & ~isClosed) != 0)
              {
                v26 = 0;
              }

              else
              {
                if (v25 == 1)
                {
                  objc_msgSend_objectAtIndexedSubscript_(v8, v21, 0);
                }

                else
                {
                  objc_msgSend_objectAtIndexedSubscript_(v8, v21, v24);
                }
                v26 = ;
              }

              if (objc_msgSend_isSelected(v17, v21, v22))
              {
                objc_msgSend_toggleNode_toType_prevNode_nextNode_(self, v27, v17, a3, v16, v26);
              }

              v28 = v17;

              ++v24;
              v16 = v28;
              v17 = v26;
              --v25;
            }

            while (v25);
          }

          else
          {
            v26 = v17;
            v28 = v16;
          }
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v34, v38, 16);
    }

    while (v31);
  }
}

- (void)sharpenAllNodes
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_sharpenAllNodes);
}

- (void)smoothNode:(id)a3
{
  v19 = a3;
  v6 = objc_msgSend_subpaths(self, v4, v5);
  v9 = objc_msgSend_objectEnumerator(v6, v7, v8);

  v12 = 0;
  while (1)
  {
    v13 = v12;
    v12 = objc_msgSend_nextObject(v9, v10, v11);

    if (!v12)
    {
      break;
    }

    v16 = objc_msgSend_nodes(v12, v14, v15);
    v18 = objc_msgSend_containsObject_(v16, v17, v19);

    if (v18)
    {
      objc_msgSend_smoothNode_(v12, v10, v19);
      break;
    }
  }
}

- (void)smoothAllNodes
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v4, v3, sel_smoothAllNodes);
}

- (BOOL)isClosed
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v22, 16);
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_msgSend_nodes(v10, v5, v6);
        if (objc_msgSend_count(v11, v12, v13))
        {
          isClosed = objc_msgSend_isClosed(v10, v14, v15);

          if (isClosed)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v18, v22, 16);
    }

    while (v7);
  }

LABEL_12:

  return v7;
}

- (void)setClosed:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_subpaths(self, a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_setClosed_(*(*(&v11 + 1) + 8 * v10++), v7, v3);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (void)selectSubpathForNode:(id)a3 toggle:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  v8 = objc_msgSend_subpaths(self, v6, v7);
  v11 = objc_msgSend_objectEnumerator(v8, v9, v10);

  v14 = 0;
  while (1)
  {
    v15 = v14;
    v14 = objc_msgSend_nextObject(v11, v12, v13);

    if (!v14)
    {
      break;
    }

    v18 = objc_msgSend_nodes(v14, v16, v17);
    v20 = objc_msgSend_containsObject_(v18, v19, v21);

    if (v20)
    {
      if (v4 && objc_msgSend_allNodesSelected(v14, v12, v13))
      {
        objc_msgSend_deselectAllNodes(v14, v12, v13);
      }

      else
      {
        objc_msgSend_selectAllNodes(v14, v12, v13);
      }

      break;
    }
  }
}

- (id)subpathsForConnectingUsingFirstSubpathFirstNode:(BOOL *)a3 andSecondPathFirstNode:(BOOL *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *a4 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = objc_msgSend_subpaths(self, a2, a3);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v41, 16);
  if (!v8)
  {
    v12 = 0;
LABEL_18:
    v32 = 0;
LABEL_22:

    goto LABEL_24;
  }

  v11 = v8;
  v35 = a4;
  v12 = 0;
  v13 = *v37;
LABEL_3:
  v14 = 0;
  while (1)
  {
    if (*v37 != v13)
    {
      objc_enumerationMutation(v6);
    }

    v15 = *(*(&v36 + 1) + 8 * v14);
    if (objc_msgSend_isClosed(v15, v9, v10))
    {
      goto LABEL_14;
    }

    v16 = objc_msgSend_nodes(v15, v9, v10);
    v19 = objc_msgSend_count(v16, v17, v18);

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = objc_msgSend_firstNode(v15, v9, v10);
    isSelected = objc_msgSend_isSelected(v20, v21, v22);

    if (isSelected)
    {
      break;
    }

LABEL_11:
    v27 = objc_msgSend_lastNode(v15, v24, v25);
    v30 = objc_msgSend_isSelected(v27, v28, v29);

    if (v30)
    {
      v31 = v15;
      if (v12)
      {
        goto LABEL_20;
      }

      v12 = v31;
    }

LABEL_14:
    if (v11 == ++v14)
    {
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v36, v41, 16);
      if (v11)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }
  }

  v26 = v15;
  if (!v12)
  {
    *a3 = 1;
    v12 = v26;
    goto LABEL_11;
  }

  *v35 = 1;
LABEL_20:

  if (v15)
  {
    v40[0] = v12;
    v40[1] = v15;
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, v40, 2);
    v6 = v15;
    goto LABEL_22;
  }

  v32 = 0;
LABEL_24:

  return v32;
}

- (BOOL)canConnectSelectedNodes
{
  v5 = 0;
  v2 = objc_msgSend_subpathsForConnectingUsingFirstSubpathFirstNode_andSecondPathFirstNode_(self, a2, &v5 + 1, &v5);
  v3 = v2 != 0;

  return v3;
}

- (void)connectSelectedNodes
{
  v54 = 0;
  v3 = objc_msgSend_subpathsForConnectingUsingFirstSubpathFirstNode_andSecondPathFirstNode_(self, a2, &v54 + 1, &v54);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, 0);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v5, v7, 1);
    if (v6 == v10)
    {
      if (HIBYTE(v54) != v54)
      {
        objc_msgSend_setClosed_(v6, v8, 1);
      }

      goto LABEL_14;
    }

    v11 = objc_msgSend_subpaths(self, v8, v9);
    v14 = objc_msgSend_mutableCopy(v11, v12, v13);

    if ((v54 & 0x100) != 0)
    {
      if ((v54 & 1) == 0)
      {
        v44 = objc_msgSend_nodes(v10, v15, v16);
        v22 = objc_msgSend_mutableCopy(v44, v45, v46);

        v49 = objc_msgSend_nodes(v6, v47, v48);
        objc_msgSend_addObjectsFromArray_(v22, v50, v49);

        objc_msgSend_setNodes_(v10, v51, v22);
        objc_msgSend_removeObjectIdenticalTo_(v14, v52, v6);
        goto LABEL_13;
      }

      objc_msgSend_reverseDirection(v10, v15, v16);
      v19 = objc_msgSend_nodes(v6, v17, v18);
      v22 = objc_msgSend_mutableCopy(v19, v20, v21);

      v25 = objc_msgSend_nodes(v10, v23, v24);
      v26 = MEMORY[0x277CCAA78];
      v29 = objc_msgSend_nodes(v10, v27, v28);
      v32 = objc_msgSend_count(v29, v30, v31);
      v34 = objc_msgSend_indexSetWithIndexesInRange_(v26, v33, 0, v32);
      objc_msgSend_insertObjects_atIndexes_(v22, v35, v25, v34);
    }

    else
    {
      if (!v54)
      {
        objc_msgSend_reverseDirection(v10, v15, v16);
      }

      v36 = objc_msgSend_nodes(v6, v15, v16);
      v22 = objc_msgSend_mutableCopy(v36, v37, v38);

      v25 = objc_msgSend_nodes(v10, v39, v40);
      objc_msgSend_addObjectsFromArray_(v22, v41, v25);
    }

    objc_msgSend_setNodes_(v6, v42, v22);
    objc_msgSend_removeObjectIdenticalTo_(v14, v43, v10);
LABEL_13:

    objc_msgSend_setSubpaths_(self, v53, v14);
LABEL_14:
  }
}

- (BOOL)canCloseSelectedNodes
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v25, v29, 16);
  if (v7)
  {
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ((objc_msgSend_isClosed(v10, v5, v6) & 1) == 0)
        {
          v11 = objc_msgSend_nodes(v10, v5, v6);
          v14 = objc_msgSend_count(v11, v12, v13);

          if (v14)
          {
            v15 = objc_msgSend_firstNode(v10, v5, v6);
            if (objc_msgSend_isSelected(v15, v16, v17))
            {

LABEL_14:
              LOBYTE(v7) = 1;
              goto LABEL_15;
            }

            v20 = objc_msgSend_lastNode(v10, v18, v19);
            isSelected = objc_msgSend_isSelected(v20, v21, v22);

            if (isSelected)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v25, v29, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v7;
}

- (void)closeSelectedNodes
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v33, v37, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if ((objc_msgSend_isClosed(v11, v6, v7) & 1) == 0)
        {
          v12 = objc_msgSend_nodes(v11, v6, v7);
          v15 = objc_msgSend_count(v12, v13, v14);

          if (v15)
          {
            v16 = objc_msgSend_firstNode(v11, v6, v7);
            if (objc_msgSend_isSelected(v16, v17, v18))
            {
            }

            else
            {
              v21 = objc_msgSend_lastNode(v11, v19, v20);
              isSelected = objc_msgSend_isSelected(v21, v22, v23);

              if (!isSelected)
              {
                continue;
              }
            }

            v25 = objc_msgSend_firstNode(v11, v6, v7);
            v28 = objc_msgSend_type(v25, v26, v27);

            if (v28 == 3)
            {
              v31 = objc_msgSend_firstNode(v11, v29, v30);
              objc_msgSend_setType_(v31, v32, 1);
            }

            objc_msgSend_setClosed_(v11, v29, 1);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v33, v37, 16);
    }

    while (v8);
  }
}

- (void)deleteSelectedEdges
{
  v3 = objc_msgSend_subpaths(self, a2, v2);
  v108 = objc_msgSend_copy(v3, v4, v5);

  v8 = objc_msgSend_objectEnumerator(v108, v6, v7);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v109 = v8;
  v12 = objc_msgSend_nextObject(v8, v10, v11);
  if (!v12)
  {
    goto LABEL_31;
  }

  v15 = v12;
  do
  {
    v16 = objc_msgSend_nodes(v15, v13, v14);
    v19 = objc_msgSend_mutableCopy(v16, v17, v18);

    v22 = objc_msgSend_count(v19, v20, v21);
    v25 = objc_msgSend_lastObject(v19, v23, v24);
    isSelected = objc_msgSend_isSelected(v25, v26, v27);

    if (isSelected)
    {
      objc_msgSend_setClosed_(v15, v29, 0);
    }

    if (v22 < 1)
    {
      v31 = 0;
      v34 = 0;
LABEL_27:
      objc_msgSend_addObject_(v9, v29, v15);
      goto LABEL_30;
    }

    v110 = v15;
    v111 = v22;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = v34;
      v36 = objc_msgSend_objectAtIndex_(v19, v29, v33);

      if (v35 && objc_msgSend_isSelected(v35, v37, v38))
      {
        if (v33 - v32 < 2)
        {
LABEL_16:
          v30 = 1;
          v32 = v33;
          goto LABEL_17;
        }

        v39 = objc_alloc_init(TSDBezierSubpath);
        v41 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v40, v32, v33 - v32);
        v43 = objc_msgSend_objectsAtIndexes_(v19, v42, v41);
        objc_msgSend_setNodes_(v39, v44, v43);

        objc_msgSend_addObject_(v9, v45, v39);
        v48 = objc_msgSend_nodes(v39, v46, v47);
        v51 = objc_msgSend_lastObject(v48, v49, v50);

        objc_msgSend_nodePoint(v51, v52, v53);
        objc_msgSend_setOutControlPoint_(v51, v54, v55);
        if (v31 || (objc_msgSend_isClosed(v110, v56, v57) & 1) == 0)
        {
          objc_msgSend_nodes(v39, v56, v57);
          v59 = v19;
          v60 = v31;
          v62 = v61 = v9;
          v58 = objc_msgSend_objectAtIndex_(v62, v63, 0);

          v9 = v61;
          v31 = v60;
          v19 = v59;
          v22 = v111;
          objc_msgSend_nodePoint(v58, v64, v65);
          objc_msgSend_setInControlPoint_(v58, v66, v67);
          if (v31)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v58 = v51;
        }

        v31 = v39;
        goto LABEL_15;
      }

LABEL_17:
      v34 = v36;

      ++v33;
    }

    while (v22 != v33);
    v15 = v110;
    if ((v30 & 1) == 0)
    {
      goto LABEL_27;
    }

    v69 = v22 - v32;
    if (v22 - v32 > 1 || (isClosed = objc_msgSend_isClosed(v110, v29, v68), v69 == 1) && isClosed)
    {
      v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v73 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v72, v32, v69);
      v75 = objc_msgSend_objectsAtIndexes_(v19, v74, v73);
      objc_msgSend_addObjectsFromArray_(v71, v76, v75);

      if (objc_msgSend_isClosed(v110, v77, v78))
      {
        v81 = objc_msgSend_nodes(v31, v79, v80);
        v84 = objc_msgSend_count(v81, v82, v83);

        if (v84)
        {
          v87 = objc_msgSend_nodes(v31, v85, v86);
          objc_msgSend_addObjectsFromArray_(v71, v88, v87);
        }

        objc_msgSend_removeObjectIdenticalTo_(v9, v85, v31);
      }

      else
      {
        v89 = objc_msgSend_objectAtIndex_(v71, v79, 0);
        objc_msgSend_nodePoint(v89, v90, v91);
        objc_msgSend_setInControlPoint_(v89, v92, v93);
        v96 = objc_msgSend_lastObject(v71, v94, v95);

        objc_msgSend_nodePoint(v96, v97, v98);
        objc_msgSend_setOutControlPoint_(v96, v99, v100);
      }

      v101 = objc_alloc_init(TSDBezierSubpath);
      objc_msgSend_setNodes_(v101, v102, v71);
      objc_msgSend_addObject_(v9, v103, v101);
    }

LABEL_30:

    v106 = objc_msgSend_nextObject(v109, v104, v105);

    v15 = v106;
  }

  while (v106);
LABEL_31:
  objc_msgSend_setSubpaths_(self, v13, v9);
}

- (id)splitEdge:(int64_t)a3 at:(double)a4 fromSubpath:(int64_t)a5
{
  v7 = a3;
  v82[8] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_subpaths(self, a2, a3);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, a5);

  v13 = objc_msgSend_nodes(v10, v11, v12);
  v16 = v13;
  if (v7 <= 0)
  {
    v17 = objc_msgSend_lastObject(v13, v14, v15);
    v21 = objc_msgSend_objectAtIndex_(v16, v22, 0);
    v7 = objc_msgSend_count(v16, v23, v24);
  }

  else
  {
    v17 = objc_msgSend_objectAtIndex_(v13, v14, v7 - 1);
    v21 = objc_msgSend_objectAtIndex_(v16, v18, v7);
  }

  objc_msgSend_nodePoint(v21, v19, v20);
  objc_msgSend_inControlPoint(v21, v25, v26);
  if (TSUNearlyEqualPoints() && (objc_msgSend_nodePoint(v17, v27, v28), objc_msgSend_outControlPoint(v17, v29, v30), TSUNearlyEqualPoints()))
  {
    objc_msgSend_nodePoint(v17, v27, v28);
    v32 = v31;
    v34 = v33;
    objc_msgSend_nodePoint(v21, v35, v36);
    v41 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v39, v40, (1.0 - a4) * v32 + a4 * v37, (1.0 - a4) * v34 + a4 * v38);
  }

  else
  {
    objc_msgSend_nodePoint(v17, v27, v28);
    v70.f64[0] = v43;
    v70.f64[1] = v44;
    objc_msgSend_outControlPoint(v17, v45, v46);
    v71 = v47;
    v72 = v48;
    objc_msgSend_inControlPoint(v21, v49, v50);
    v73 = v51;
    v74 = v52;
    objc_msgSend_nodePoint(v21, v53, v54);
    v75 = v55;
    v76 = v56;
    sub_276667338(&v70, v77, 0.0, a4);
    sub_276667338(&v70, v82, a4, 1.0);
    objc_msgSend_setOutControlPoint_(v17, v57, v58, v78, v79);
    objc_msgSend_setInControlPoint_(v21, v59, v60, v82[4], v82[5]);
    v41 = objc_msgSend_bezierNodeWithPoint_inControlPoint_outControlPoint_(TSDBezierNode, v61, v62, v82[0], v82[1], v80, v81, v82[2], v82[3]);
  }

  v63 = v41;
  objc_msgSend_setSelected_(v41, v42, 1);
  v66 = objc_msgSend_mutableCopy(v16, v64, v65);
  objc_msgSend_insertObject_atIndex_(v66, v67, v63, v7);
  objc_msgSend_setNodes_(v10, v68, v66);

  return v63;
}

- (void)splitSelectedEdges
{
  v4 = objc_msgSend_subpaths(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v11 = objc_msgSend_subpaths(self, v8, v9);
      v13 = objc_msgSend_objectAtIndex_(v11, v12, i);
      v16 = objc_msgSend_nodes(v13, v14, v15);

      v19 = objc_msgSend_count(v16, v17, v18);
      if (v19 >= 1)
      {
        v21 = v19;
        v22 = 0;
        for (j = 0; j < v21; ++j)
        {
          v24 = v22;
          v25 = objc_msgSend_objectAtIndex_(v16, v20, j);

          if (v24)
          {
            if (objc_msgSend_isSelected(v24, v26, v27))
            {
              v29 = objc_msgSend_splitEdge_at_fromSubpath_(self, v28, j++, i, 0.5);
              ++v21;
            }
          }

          v22 = v25;
        }
      }
    }
  }
}

- (void)splitSelectedNodes
{
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = objc_msgSend_subpaths(self, a2, v2);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v50, v54, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v11 = objc_msgSend_nodes(v10, v5, v6);
        v14 = objc_msgSend_mutableCopy(v11, v12, v13);

        v17 = objc_msgSend_count(v14, v15, v16);
        if (v17)
        {
          v19 = v17;
          v20 = 0;
          for (j = 0; j < v19; ++j)
          {
            v22 = v20;
            v20 = objc_msgSend_objectAtIndex_(v14, v18, j);

            if (objc_msgSend_isSelected(v20, v23, v24))
            {
              objc_msgSend_nodePoint(v20, v18, v25);
              v27 = v26;
              v29 = v28;
              objc_msgSend_nodePoint(v20, v30, v31);
              v33 = v32;
              v35 = v34;
              objc_msgSend_outControlPoint(v20, v36, v37);
              v42 = objc_msgSend_bezierNodeWithPoint_inControlPoint_outControlPoint_(TSDBezierNode, v38, v39, v27, v29, v33, v35, v40, v41);
              objc_msgSend_setSelected_(v42, v43, 0);
              objc_msgSend_nodePoint(v20, v44, v45);
              objc_msgSend_setOutControlPoint_(v20, v46, v47);
              objc_msgSend_insertObject_atIndex_(v14, v48, v42, ++j);
              ++v19;
            }
          }
        }

        objc_msgSend_setNodes_(v10, v18, v14);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v50, v54, 16);
    }

    while (v7);
  }
}

- (BOOL)canCutAtSelectedNodes
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = objc_msgSend_subpaths(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v30, v34, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = objc_msgSend_nodes(v11, v6, v7);
        isClosed = objc_msgSend_isClosed(v11, v13, v14);
        v18 = objc_msgSend_count(v12, v16, v17);
        if (v18)
        {
          v21 = isClosed ^ 1u;
          v23 = v18 - (objc_msgSend_isClosed(v11, v19, v20) ^ 1);
          if (v23 > v21)
          {
            while (1)
            {
              v24 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, v21);
              isSelected = objc_msgSend_isSelected(v24, v25, v26);

              if (isSelected)
              {
                break;
              }

              if (v23 == ++v21)
              {
                goto LABEL_10;
              }
            }

            v28 = 1;
            goto LABEL_15;
          }
        }

LABEL_10:
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v30, v34, 16);
      v28 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_15:

  return v28;
}

- (void)cutAtSelectedNodesWithOffset:(BOOL)a3
{
  v100 = a3;
  v106 = *MEMORY[0x277D85DE8];
  v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v5 = objc_msgSend_subpaths(self, v3, v4);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v101, v105, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v102;
    v95 = *v102;
    v96 = v5;
    do
    {
      v12 = 0;
      v97 = v10;
      do
      {
        if (*v102 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v101 + 1) + 8 * v12);
        v14 = objc_msgSend_nodes(v13, v8, v9, v95, v96);
        v17 = objc_msgSend_mutableCopy(v14, v15, v16);

        if (objc_msgSend_count(v17, v18, v19))
        {
          if (objc_msgSend_isClosed(v13, v20, v21))
          {
            v24 = objc_msgSend_count(v17, v22, v23);
            if (v24)
            {
              v25 = v24 - 1;
              while (1)
              {
                v26 = objc_msgSend_objectAtIndexedSubscript_(v17, v22, v25);
                if (objc_msgSend_isSelected(v26, v27, v28))
                {
                  break;
                }

                if (--v25 == -1)
                {
                  goto LABEL_18;
                }
              }

              objc_msgSend_setSelected_(v26, v29, 0);
              if (v25)
              {
                v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v35 = objc_msgSend_count(v17, v33, v34);
                v37 = objc_msgSend_subarrayWithRange_(v17, v36, v25, v35 - v25);
                objc_msgSend_addObjectsFromArray_(v32, v38, v37);

                v10 = v97;
                v40 = objc_msgSend_subarrayWithRange_(v17, v39, 0, v25);
                objc_msgSend_addObjectsFromArray_(v32, v41, v40);

                objc_msgSend_setNodes_(v13, v42, v32);
                v17 = v32;
              }

              v45 = objc_msgSend_copy(v26, v30, v31);
              if (v100)
              {
                v46 = objc_msgSend_count(v17, v43, v44);
                v48 = objc_msgSend_objectAtIndexedSubscript_(v17, v47, v46 - 1);
                v50 = objc_msgSend_objectAtIndexedSubscript_(v17, v49, 1);
                objc_msgSend_p_offsetSubpathsFromNodes_endNodeOne_startNodeTwo_endNodeTwo_offsetDistance_(self, v51, v45, v48, v26, v50, 10.0);

                v10 = v97;
              }

              objc_msgSend_addObject_(v17, v43, v45);
              objc_msgSend_setClosed_(v13, v52, 0);
              objc_msgSend_setNodes_(v13, v53, v17);
            }
          }

LABEL_18:
          if ((objc_msgSend_isClosed(v13, v22, v23) & 1) == 0)
          {
            v56 = objc_msgSend_count(v17, v54, v55);
            v58 = v56 - 1;
            if ((v56 - 1) >= 2)
            {
              v59 = 1 - v56;
              do
              {
                v60 = v58 - 1;
                v61 = objc_msgSend_objectAtIndexedSubscript_(v17, v57, v58 - 1);
                if (objc_msgSend_isSelected(v61, v62, v63))
                {
                  objc_msgSend_setSelected_(v61, v64, 0);
                  v68 = objc_msgSend_copy(v61, v65, v66);
                  if (v100)
                  {
                    v69 = objc_msgSend_objectAtIndexedSubscript_(v17, v67, v58);
                    v71 = objc_msgSend_objectAtIndexedSubscript_(v17, v70, v58 - 2);
                    objc_msgSend_p_offsetSubpathsFromNodes_endNodeOne_startNodeTwo_endNodeTwo_offsetDistance_(self, v72, v68, v69, v61, v71, 10.0);
                  }

                  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  objc_msgSend_addObject_(v73, v74, v68);
                  v77 = objc_msgSend_count(v17, v75, v76);
                  v79 = objc_msgSend_subarrayWithRange_(v17, v78, v58, v77 + v59);
                  objc_msgSend_addObjectsFromArray_(v73, v80, v79);

                  v81 = objc_alloc_init(TSDBezierSubpath);
                  objc_msgSend_setNodes_(v81, v82, v73);
                  v85 = objc_msgSend_count(v17, v83, v84);
                  objc_msgSend_removeObjectsInRange_(v17, v86, v58, v85 + v59);
                  objc_msgSend_setNodes_(v13, v87, v17);
                  objc_msgSend_addObject_(v99, v88, v81);
                }

                ++v59;
                --v58;
              }

              while (v60 > 1);
              v11 = v95;
              v5 = v96;
              v10 = v97;
            }
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v101, v105, 16);
    }

    while (v10);
  }

  v91 = objc_msgSend_subpaths(self, v89, v90);
  v93 = objc_msgSend_arrayByAddingObjectsFromArray_(v91, v92, v99);
  objc_msgSend_setSubpaths_(self, v94, v93);
}

- (void)p_offsetSubpathsFromNodes:(id)a3 endNodeOne:(id)a4 startNodeTwo:(id)a5 endNodeTwo:(id)a6 offsetDistance:(double)a7
{
  v51 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a4;
  objc_msgSend_nodePoint(v51, v15, v16);
  v18 = v17;
  v20 = v19;
  objc_msgSend_nodePoint(v14, v21, v22);
  v24 = v23;
  v26 = v25;

  objc_msgSend_p_calculateNewStartPointLocationFromOffsetDistance_startPoint_endPoint_(self, v27, v28, a7, v18, v20, v24, v26);
  v30 = v29;
  v32 = v31;
  objc_msgSend_nodePoint(v51, v33, v34);
  if (TSUNearlyEqualPoints())
  {
    objc_msgSend_nodePoint(v12, v35, v36);
    v38 = v37;
    v40 = v39;
    objc_msgSend_nodePoint(v13, v41, v42);
    objc_msgSend_p_calculateNewStartPointLocationFromOffsetDistance_startPoint_endPoint_(self, v43, v44, a7, v38, v40, v45, v46);
    objc_msgSend_setNodePoint_(v12, v47, v48, v49, v50);
  }

  else
  {
    objc_msgSend_setNodePoint_(v51, v35, v36, v30, v32);
  }
}

- (CGPoint)p_calculateNewStartPointLocationFromOffsetDistance:(double)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5
{
  y = a4.y;
  x = a4.x;
  TSUDistance();
  if (v8 >= a3)
  {
    TSUMixPoints();
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPath)subpathForSelection
{
  v4 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  v7 = objc_msgSend_subpaths(self, v5, v6);
  v10 = objc_msgSend_objectEnumerator(v7, v8, v9);

  v13 = objc_msgSend_nextObject(v10, v11, v12);
  if (v13)
  {
    v15 = v13;
    do
    {
      objc_msgSend_appendToBezierPath_selectedNodesOnly_fromIndex_(v15, v14, v4, 1, 0);
      v18 = objc_msgSend_nextObject(v10, v16, v17);

      v15 = v18;
    }

    while (v18);
  }

  v19 = v4;
  v22 = objc_msgSend_CGPath(v19, v20, v21);

  return v22;
}

- (NSArray)nodeTypes
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = objc_msgSend_subpaths(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v34, v39, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = objc_msgSend_nodes(v14, v9, v10);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v30, v38, 16);
        if (v17)
        {
          v20 = v17;
          v21 = *v31;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v15);
              }

              v23 = MEMORY[0x277CCABB0];
              v24 = objc_msgSend_type(*(*(&v30 + 1) + 8 * j), v18, v19);
              v26 = objc_msgSend_numberWithChar_(v23, v25, v24);
              objc_msgSend_addObject_(v4, v27, v26);
            }

            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v30, v38, 16);
          }

          while (v20);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v34, v39, 16);
    }

    while (v11);
  }

  return v4;
}

- (void)setNodeTypes:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = objc_msgSend_subpaths(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v34, v39, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v29 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = objc_msgSend_nodes(v14, v9, v10);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v30, v38, 16);
        if (v17)
        {
          v19 = v17;
          v20 = *v31;
          do
          {
            v21 = 0;
            do
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(*(&v30 + 1) + 8 * v21);
              v23 = objc_msgSend_objectAtIndex_(v4, v18, v12);
              v26 = objc_msgSend_intValue(v23, v24, v25);
              objc_msgSend_setType_(v22, v27, v26);

              ++v12;
              ++v21;
            }

            while (v19 != v21);
            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v30, v38, 16);
          }

          while (v19);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v34, v39, 16);
    }

    while (v11);
  }
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7 = objc_msgSend_subpaths(self, a2, v3);
  v37 = objc_msgSend_lastObject(v7, v8, v9);

  v12 = objc_msgSend_nodes(v37, v10, v11);
  v15 = objc_msgSend_count(v12, v13, v14);

  if (v15)
  {
    v18 = objc_msgSend_nodes(v37, v16, v17);
    v21 = objc_msgSend_count(v18, v19, v20);

    if (v21 == 1)
    {
      v24 = objc_msgSend_nodes(v37, v22, v23);
      v27 = objc_msgSend_lastObject(v24, v25, v26);

      objc_msgSend_setNodePoint_(v27, v28, v29, x, y);
    }

    else
    {
      v27 = objc_alloc_init(TSDBezierSubpath);
      v33 = objc_msgSend_subpaths(self, v31, v32);
      v35 = objc_msgSend_arrayByAddingObject_(v33, v34, v27);
      objc_msgSend_setSubpaths_(self, v36, v35);
    }
  }

  else
  {
    v27 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v16, v17, x, y);
    objc_msgSend_addNode_(v37, v30, v27);
  }
}

- (void)lineToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_msgSend_subpaths(self, a2, v3);
  v26 = objc_msgSend_lastObject(v6, v7, v8);

  v11 = objc_msgSend_nodes(v26, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);

  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDEditableBezierPathSource lineToPoint:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDEditableBezierPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 2105, 0, "cannot add line to subpath without move first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v15, v16, x, y);
  objc_msgSend_addNode_(v26, v25, v24);
}

- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4.y;
  v9 = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = objc_msgSend_subpaths(self, a2, v5);
  v40 = objc_msgSend_lastObject(v12, v13, v14);

  v17 = objc_msgSend_nodes(v40, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (!v20)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDEditableBezierPathSource curveToPoint:controlPoint1:controlPoint2:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDEditableBezierPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 2112, 0, "cannot add line to subpath without move first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = objc_msgSend_nodes(v40, v21, v22);
  v33 = objc_msgSend_lastObject(v30, v31, v32);

  objc_msgSend_setOutControlPoint_(v33, v34, v35, v9, v8);
  v38 = objc_msgSend_bezierNodeWithPoint_inControlPoint_outControlPoint_(TSDBezierNode, v36, v37, v11, v10, x, y, v11, v10);
  objc_msgSend_addNode_(v40, v39, v38);
}

- (void)smoothCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(self, a2, v5, a3.x, a3.y, a4.x, a4.y, a5.x, a5.y);
  v9 = objc_msgSend_subpaths(self, v7, v8);
  v19 = objc_msgSend_lastObject(v9, v10, v11);

  v14 = objc_msgSend_nodes(v19, v12, v13);
  v17 = objc_msgSend_lastObject(v14, v15, v16);

  objc_msgSend_setType_(v17, v18, 3);
}

- (void)closePath
{
  v3 = objc_msgSend_subpaths(self, a2, v2);
  v47 = objc_msgSend_lastObject(v3, v4, v5);

  v8 = objc_msgSend_nodes(v47, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11 <= 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDEditableBezierPathSource closePath]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDEditableBezierPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 2131, 0, "cannot close subpath without a line or curve segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  objc_msgSend_setClosed_(v47, v12, 1);
  v22 = objc_msgSend_nodes(v47, v20, v21);
  v24 = objc_msgSend_objectAtIndex_(v22, v23, 0);

  v27 = objc_msgSend_nodes(v47, v25, v26);
  v30 = objc_msgSend_lastObject(v27, v28, v29);

  objc_msgSend_nodePoint(v24, v31, v32);
  objc_msgSend_nodePoint(v30, v33, v34);
  if (TSUNearlyEqualPoints())
  {
    objc_msgSend_inControlPoint(v30, v35, v36);
    objc_msgSend_setInControlPoint_(v24, v37, v38);
    v41 = objc_msgSend_nodes(v47, v39, v40);
    v44 = objc_msgSend_mutableCopy(v41, v42, v43);

    objc_msgSend_removeLastObject(v44, v45, v46);
  }
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDEditableBezierPathSource mixingTypeWithObject:context:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDEditableBezierPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 2148, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  return 1;
}

- (id)inferredAccessibilityDescription
{
  v3 = objc_msgSend_bezierPath(self, a2, v2);
  v6 = objc_msgSend_inferredAccessibilityDescription(v3, v4, v5);

  return v6;
}

- (TSDEditableBezierPathSource)initWithArchive:(const void *)a3
{
  v37.receiver = self;
  v37.super_class = TSDEditableBezierPathSource;
  v4 = [(TSDEditableBezierPathSource *)&v37 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_loadSharedFromArchive_(v4, v6, a3);
    if (*(a3 + 10))
    {
      v8 = *(a3 + 10);
    }

    else
    {
      v8 = &TSD::_EditableBezierPathSourceArchive_default_instance_;
    }

    if (v8[2])
    {
      TSPCGSizeCreateFromMessage(v8[6]);
      objc_msgSend_setNaturalSize_(v4, v9, v10);
    }

    v34 = v4;
    v36 = *(v8 + 8);
    if (v36 >= 1)
    {
      v11 = 0;
      v12 = MEMORY[0x277D809F0];
      v35 = v5;
      do
      {
        v13 = v8[5][v11 + 1];
        v14 = objc_alloc_init(TSDBezierSubpath);
        objc_msgSend_addObject_(v5, v15, v14);
        objc_msgSend_setClosed_(v14, v16, *(v13 + 48));
        v19 = *(v13 + 32);
        if (v19 >= 1)
        {
          v20 = 8;
          do
          {
            v21 = *(*(v13 + 40) + v20);
            v22 = *(v21 + 32);
            if (!v22)
            {
              v22 = v12;
            }

            v23 = *(v22 + 24);
            v24 = *(v22 + 28);
            if (*(v21 + 24))
            {
              v25 = *(v21 + 24);
            }

            else
            {
              v25 = v12;
            }

            v26 = *(v25 + 24);
            v27 = *(v25 + 28);
            v28 = *(v21 + 40);
            if (!v28)
            {
              v28 = v12;
            }

            v29 = objc_msgSend_bezierNodeWithPoint_inControlPoint_outControlPoint_(TSDBezierNode, v17, v18, v23, v24, v26, v27, *(v28 + 24), *(v28 + 28));
            objc_msgSend_addNode_(v14, v30, v29);
            v32 = *(v21 + 48);
            if ((v32 - 1) < 3)
            {
              objc_msgSend_setType_(v29, v31, v32);
            }

            v20 += 8;
            --v19;
          }

          while (v19);
        }

        ++v11;
        v5 = v35;
      }

      while (v11 != v36);
    }

    v4 = v34;
    objc_msgSend_setSubpaths_(v34, v7, v5);
  }

  return v4;
}

- (void)saveToArchive:(void *)a3
{
  v94 = *MEMORY[0x277D85DE8];
  objc_msgSend_saveSharedToArchive_(self, a2, a3);
  *(a3 + 4) |= 0x80u;
  v7 = *(a3 + 10);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive>(v8);
    *(a3 + 10) = v7;
  }

  objc_msgSend_naturalSize(self, v5, v6);
  v10 = v9;
  v12 = v11;
  *(v7 + 16) |= 1u;
  v13 = *(v7 + 48);
  if (!v13)
  {
    v14 = *(v7 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C9BAD0](v14);
    *(v7 + 48) = v13;
  }

  v80 = v7;
  v95.width = v10;
  v95.height = v12;
  TSPCGSizeCopyToMessage(v95, v13);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = objc_msgSend_subpaths(self, v15, v16);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v88, v93, 16);
  if (v20)
  {
    v21 = *v89;
    v79 = *v89;
    do
    {
      v82 = v20;
      for (i = 0; i != v82; ++i)
      {
        if (*v89 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v88 + 1) + 8 * i);
        v23 = objc_msgSend_nodes(v22, v18, v19);
        v26 = objc_msgSend_count(v23, v24, v25) < 2;

        if (!v26)
        {
          v27 = *(v80 + 40);
          if (!v27)
          {
            goto LABEL_20;
          }

          v28 = *(v80 + 32);
          v29 = *v27;
          if (v28 < *v27)
          {
            *(v80 + 32) = v28 + 1;
            v30 = *&v27[2 * v28 + 2];
            goto LABEL_22;
          }

          if (v29 == *(v80 + 36))
          {
LABEL_20:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v80 + 24));
            v27 = *(v80 + 40);
            v29 = *v27;
          }

          *v27 = v29 + 1;
          v30 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive_Subpath>(*(v80 + 24));
          v31 = *(v80 + 32);
          v32 = *(v80 + 40) + 8 * v31;
          *(v80 + 32) = v31 + 1;
          *(v32 + 8) = v30;
LABEL_22:
          isClosed = objc_msgSend_isClosed(v22, v18, v19);
          *(v30 + 16) |= 1u;
          *(v30 + 48) = isClosed;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v36 = objc_msgSend_nodes(v22, v34, v35);
          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v84, v92, 16);
          if (!v40)
          {
            goto LABEL_55;
          }

          v41 = *v85;
LABEL_24:
          v42 = 0;
LABEL_25:
          if (*v85 != v41)
          {
            objc_enumerationMutation(v36);
          }

          v43 = *(*(&v84 + 1) + 8 * v42);
          v44 = *(v30 + 40);
          if (!v44)
          {
            goto LABEL_32;
          }

          v45 = *(v30 + 32);
          v46 = *v44;
          if (v45 < *v44)
          {
            *(v30 + 32) = v45 + 1;
            v47 = *&v44[2 * v45 + 2];
            goto LABEL_34;
          }

          if (v46 == *(v30 + 36))
          {
LABEL_32:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v30 + 24));
            v44 = *(v30 + 40);
            v46 = *v44;
          }

          *v44 = v46 + 1;
          v47 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive_Node>(*(v30 + 24));
          v48 = *(v30 + 32);
          v49 = *(v30 + 40) + 8 * v48;
          *(v30 + 32) = v48 + 1;
          *(v49 + 8) = v47;
LABEL_34:
          v50 = objc_msgSend_type(v43, v38, v39);
          if (v50 < 2)
          {
            v53 = *(v47 + 16) | 8;
            *(v47 + 16) = v53;
            *(v47 + 48) = 1;
          }

          else if (v50 - 3 >= 2)
          {
            if (v50 == 2)
            {
              v53 = *(v47 + 16) | 8;
              *(v47 + 16) = v53;
              *(v47 + 48) = 2;
            }

            else
            {
              v53 = *(v47 + 16);
            }
          }

          else
          {
            v53 = *(v47 + 16) | 8;
            *(v47 + 16) = v53;
            *(v47 + 48) = 3;
          }

          *(v47 + 16) = v53 | 1;
          v54 = *(v47 + 24);
          if (!v54)
          {
            v55 = *(v47 + 8);
            if (v55)
            {
              v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
            }

            v54 = MEMORY[0x277C9BB00](v55);
            *(v47 + 24) = v54;
          }

          objc_msgSend_inControlPoint(v43, v51, v52);
          *&v56 = v56;
          *(v54 + 16) |= 1u;
          *(v54 + 24) = LODWORD(v56);
          objc_msgSend_inControlPoint(v43, v57, v58);
          v62 = v61;
          *(v54 + 16) |= 2u;
          *(v54 + 28) = v62;
          *(v47 + 16) |= 2u;
          v63 = *(v47 + 32);
          if (!v63)
          {
            v64 = *(v47 + 8);
            if (v64)
            {
              v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
            }

            v63 = MEMORY[0x277C9BB00](v64);
            *(v47 + 32) = v63;
          }

          objc_msgSend_nodePoint(v43, v59, v60);
          *&v65 = v65;
          *(v63 + 16) |= 1u;
          *(v63 + 24) = LODWORD(v65);
          objc_msgSend_nodePoint(v43, v66, v67);
          v71 = v70;
          *(v63 + 16) |= 2u;
          *(v63 + 28) = v71;
          *(v47 + 16) |= 4u;
          v72 = *(v47 + 40);
          if (!v72)
          {
            v73 = *(v47 + 8);
            if (v73)
            {
              v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
            }

            v72 = MEMORY[0x277C9BB00](v73);
            *(v47 + 40) = v72;
          }

          objc_msgSend_outControlPoint(v43, v68, v69);
          *&v74 = v74;
          *(v72 + 16) |= 1u;
          *(v72 + 24) = LODWORD(v74);
          objc_msgSend_outControlPoint(v43, v75, v76);
          v78 = v77;
          *(v72 + 16) |= 2u;
          *(v72 + 28) = v78;
          if (v40 == ++v42)
          {
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v84, v92, 16);
            if (!v40)
            {
LABEL_55:

              v21 = v79;
              continue;
            }

            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v88, v93, 16);
    }

    while (v20);
  }
}

@end