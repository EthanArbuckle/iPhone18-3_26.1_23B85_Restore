@interface TSDGroupInfo
+ (id)groupGeometryFromChildrenInfos:(id)a3;
+ (id)p_drawablesToInsertForGroup:(id)a3 filteredWithTarget:(id)a4 action:(SEL)a5 didUngroup:(BOOL *)a6;
- (id)allNestedChildrenInfos;
- (id)allNestedChildrenInfosIncludingGroups;
- (id)copyWithContext:(id)a3;
- (id)groupedGeometryForChildInfo:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)onlyChild;
- (id)ungroupedGeometryForChildInfo:(id)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)addChildInfo:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)dealloc;
- (void)didCopy;
- (void)ensureGeometryFitsChildren;
- (void)insertChildInfo:(id)a3 above:(id)a4;
- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChildInfo:(id)a3 below:(id)a4;
- (void)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometry;
- (void)moveChildren:(id)a3 toIndexes:(id)a4;
- (void)processSelectedStoragesWithStatisticsController:(id)a3;
- (void)removeAllChildrenInDocument:(BOOL)a3;
- (void)replaceChildInfo:(id)a3 with:(id)a4;
- (void)setChildInfos:(id)a3;
- (void)setGeometry:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
- (void)willCopyWithOtherDrawables:(id)a3;
@end

@implementation TSDGroupInfo

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mChildInfos = self->mChildInfos;
  v4 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mChildInfos);
        }

        [*(*(&v9 + 1) + 8 * i) clearBackPointerToParentInfoIfNeeded:self];
      }

      v5 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v8 dealloc];
}

- (void)setGeometry:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo setGeometry:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 94, @"invalid nil value for '%s'", "newGeometry"}];
  }

  if (([a3 isEqual:self->super.mGeometry] & 1) == 0)
  {
    [(TSPObject *)self willModify];
    if ([a3 isEqualExceptForPosition:self->super.mGeometry])
    {
      v7 = 513;
    }

    else
    {
      v7 = 512;
    }

    [(TSDDrawableInfo *)self willChangeProperty:v7];

    self->super.mGeometry = a3;
  }
}

- (id)copyWithContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSDGroupInfo;
  v5 = [(TSDDrawableInfo *)&v17 copyWithContext:?];
  if (v5)
  {
    if ([(NSMutableArray *)self->mChildInfos count])
    {
      *(v5 + 18) = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{-[TSDGroupInfo zone](self, "zone")), "initWithCapacity:", -[NSMutableArray count](self->mChildInfos, "count")}];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      mChildInfos = self->mChildInfos;
      v7 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(mChildInfos);
            }

            v11 = [*(*(&v13 + 1) + 8 * i) copyWithContext:a3];
            [v11 setParentInfo:v5];
            [*(v5 + 18) addObject:v11];
          }

          v8 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v8);
      }
    }

    *(v5 + 152) = self->mIsInDocument;
  }

  return v5;
}

- (id)allNestedChildrenInfos
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TSDGroupInfo *)self childInfos];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObjectsFromArray:{objc_msgSend(v9, "allNestedChildrenInfos")}];
        }

        else
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)onlyChild
{
  if ([(NSMutableArray *)self->mChildInfos count]!= 1)
  {
    return 0;
  }

  mChildInfos = self->mChildInfos;

  return [(NSMutableArray *)mChildInfos lastObject];
}

- (id)allNestedChildrenInfosIncludingGroups
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 addObject:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TSDGroupInfo *)self childInfos];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObjectsFromArray:{objc_msgSend(v9, "allNestedChildrenInfosIncludingGroups")}];
        }

        [v3 addObject:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setChildInfos:(id)a3
{
  v3 = self;
  v65 = *MEMORY[0x277D85DE8];
  mChildInfos = self->mChildInfos;
  if (mChildInfos != a3 && ([(NSMutableArray *)mChildInfos isEqual:?]& 1) == 0)
  {
    [(TSPObject *)v3 willModify];
    [(TSDDrawableInfo *)v3 willChangeProperty:514];
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:a3];
    }

    else
    {
      v6 = 0;
    }

    if (v3->mIsInDocument)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = [(TSPObject *)v3 documentRoot];
    }

    else
    {
      v8 = 0;
      v43 = 0;
      v7 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v9 = v3->mChildInfos;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v58;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v57 + 1) + 8 * i);
          if (([v6 containsObject:v14] & 1) == 0)
          {
            if (v3->mIsInDocument)
            {
              [v7 addObject:v14];
              [v14 willBeRemovedFromDocumentRoot:v8];
            }

            [v14 setParentInfo:0];
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v11);
    }

    v42 = v7;
    if (v3->mChildInfos)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3->mChildInfos];
    }

    else
    {
      v15 = 0;
    }

    v16 = a3;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v17 = [a3 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0x279D44000uLL;
      v20 = *v54;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v53 + 1) + 8 * j);
          objc_opt_class();
          if (!TSUDynamicCast())
          {
            v44 = [MEMORY[0x277D6C290] currentHandler];
            v23 = v18;
            v24 = v20;
            v25 = v15;
            v26 = v3;
            v27 = v8;
            v28 = v19;
            v29 = v16;
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo setChildInfos:]"];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"];
            v32 = v30;
            v16 = v29;
            v19 = v28;
            v8 = v27;
            v3 = v26;
            v15 = v25;
            v20 = v24;
            v18 = v23;
            [v44 handleFailureInFunction:v32 file:v31 lineNumber:231 description:@"Group children must be TSDDrawableInfos."];
          }

          if (([v15 containsObject:v22] & 1) == 0)
          {
            [v22 parentInfo];
            [TSUProtocolCast() removeChildInfo:v22];
            if (v3->mIsInDocument)
            {
              [v43 addObject:v22];
              [v22 willBeAddedToDocumentRoot:v8 context:0];
            }

            [v22 setParentInfo:v3];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v18);
    }

    v33 = [v16 mutableCopy];
    v3->mChildInfos = v33;
    if (v3->mIsInDocument)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v34 = [v42 countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v50;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v50 != v36)
            {
              objc_enumerationMutation(v42);
            }

            [*(*(&v49 + 1) + 8 * k) wasRemovedFromDocumentRoot:v8];
          }

          v35 = [v42 countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v35);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v38 = [v43 countByEnumeratingWithState:&v45 objects:v61 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v46;
        do
        {
          for (m = 0; m != v39; ++m)
          {
            if (*v46 != v40)
            {
              objc_enumerationMutation(v43);
            }

            [*(*(&v45 + 1) + 8 * m) wasAddedToDocumentRoot:v8 context:0];
          }

          v39 = [v43 countByEnumeratingWithState:&v45 objects:v61 count:16];
        }

        while (v39);
      }
    }
  }
}

- (void)addChildInfo:(id)a3
{
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v6 = [(NSMutableArray *)mChildInfos count];
  }

  else
  {
    v6 = 0;
  }

  [(TSDGroupInfo *)self insertChildInfo:a3 atIndex:v6];
}

- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    objc_opt_class();
    if (!TSUDynamicCast())
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo insertChildInfo:atIndex:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 276, @"Group children must be TSDDrawableInfos."}];
    }

    [(TSPObject *)self willModify];
    [(TSDDrawableInfo *)self willChangeProperty:514];
    [a3 parentInfo];
    v8 = TSUProtocolCast();
    if (v8)
    {
      v9 = a3;
      [v8 removeChildInfo:a3];
    }

    if (!self->mChildInfos)
    {
      self->mChildInfos = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [a3 setParentInfo:self];
    if (self->mIsInDocument)
    {
      [a3 willBeAddedToDocumentRoot:-[TSPObject documentRoot](self context:{"documentRoot"), 0}];
    }

    [(NSMutableArray *)self->mChildInfos insertObject:a3 atIndex:a4];
    if (self->mIsInDocument)
    {
      [a3 wasAddedToDocumentRoot:-[TSPObject documentRoot](self context:{"documentRoot"), 0}];
    }

    if (v8)
    {
    }
  }
}

- (void)insertChildInfo:(id)a3 below:(id)a4
{
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v7 = [(NSMutableArray *)mChildInfos indexOfObjectIdenticalTo:a4];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDGroupInfo *)self insertChildInfo:a3 atIndex:v7];
    }
  }
}

- (void)insertChildInfo:(id)a3 above:(id)a4
{
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v7 = [(NSMutableArray *)mChildInfos indexOfObjectIdenticalTo:a4];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDGroupInfo *)self insertChildInfo:a3 atIndex:v7 + 1];
    }
  }
}

- (void)moveChildren:(id)a3 toIndexes:(id)a4
{
  v7 = [a3 count];
  v8 = [a4 count];
  v9 = [a4 lastIndex];
  v10 = [(NSMutableArray *)self->mChildInfos count];
  v11 = v10;
  if (v7 == v8)
  {
    if (v9 < v10)
    {
      v20 = [(NSMutableArray *)self->mChildInfos mutableCopy];
      [v20 removeObjectsInArray:a3];
      v12 = v11 - v7;
      if ([v20 count] != v12)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo moveChildren:toIndexes:]"];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 345, @"Can't move drawables to indexes, not all drawables are in this group."}];
      }

      if ([v20 count] == v12)
      {
        [v20 insertObjects:a3 atIndexes:a4];
        [(TSDGroupInfo *)self setChildInfos:v20];
      }

      return;
    }
  }

  else
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo moveChildren:toIndexes:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 338, @"Can't move drawables to indexes, counts don't match."}];
    if (v9 < v11)
    {
      return;
    }
  }

  v17 = [MEMORY[0x277D6C290] currentHandler];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo moveChildren:toIndexes:]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"];

  [v17 handleFailureInFunction:v18 file:v19 lineNumber:339 description:{@"Can't move drawables to indexes, one or more indexes out of range."}];
}

- (void)removeAllChildrenInDocument:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  [(TSPObject *)self willModify];
  mChildInfos = self->mChildInfos;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(mChildInfos);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if (v3)
        {
          [v10 willBeRemovedFromDocumentRoot:{-[TSPObject documentRoot](self, "documentRoot")}];
        }

        [v10 setParentInfo:0];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  self->mChildInfos = 0;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(mChildInfos);
          }

          [*(*(&v15 + 1) + 8 * v14++) wasRemovedFromDocumentRoot:{-[TSPObject documentRoot](self, "documentRoot")}];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (id)groupedGeometryForChildInfo:(id)a3
{
  v4 = [a3 geometry];
  v5 = [(TSDGroupInfo *)self geometry];

  return [v4 geometryRelativeToGeometry:v5];
}

- (id)ungroupedGeometryForChildInfo:(id)a3
{
  if (([(NSMutableArray *)self->mChildInfos containsObject:?]& 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo ungroupedGeometryForChildInfo:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 385, @"Can't get ungrouped geometry for a drawable which isn't a child of the group."}];
  }

  v7 = [a3 geometry];
  v8 = [(TSDGroupInfo *)self geometry];

  return [v7 geometryWithParentGeometry:v8];
}

+ (id)groupGeometryFromChildrenInfos:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (v12)
        {
          [v12 computeLayoutFullTransform];
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        v21.origin.x = 0.0;
        v21.origin.y = 0.0;
        v21.size.width = 1.0;
        v21.size.height = 1.0;
        v24 = CGRectApplyAffineTransform(v21, &v14);
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23 = CGRectUnion(v22, v24);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return [[TSDInfoGeometry alloc] initWithPosition:x size:y, fmax(width, 1.0), fmax(height, 1.0)];
}

- (void)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometry
{
  v13 = *MEMORY[0x277D85DE8];
  [(TSDGroupInfo *)self setGeometry:[TSDGroupInfo groupGeometryFromChildrenInfos:self->mChildInfos]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  mChildInfos = self->mChildInfos;
  v4 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mChildInfos);
        }

        [*(*(&v8 + 1) + 8 * i) setGeometry:{-[TSDGroupInfo groupedGeometryForChildInfo:](self, "groupedGeometryForChildInfo:", *(*(&v8 + 1) + 8 * i))}];
      }

      v5 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)replaceChildInfo:(id)a3 with:(id)a4
{
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v8 = [(NSMutableArray *)mChildInfos indexOfObjectIdenticalTo:?];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [(TSPObject *)self willModify];
      [(TSDDrawableInfo *)self willChangeProperty:514];
      v10 = a3;
      if (self->mIsInDocument)
      {
        [a3 willBeRemovedFromDocumentRoot:{-[TSPObject documentRoot](self, "documentRoot")}];
      }

      [(NSMutableArray *)self->mChildInfos removeObjectAtIndex:v9];
      [a3 setParentInfo:0];

      if (self->mIsInDocument)
      {
        [a3 wasRemovedFromDocumentRoot:{-[TSPObject documentRoot](self, "documentRoot")}];
      }

      [(TSDGroupInfo *)self insertChildInfo:a4 atIndex:v9];
    }
  }
}

- (void)ensureGeometryFitsChildren
{
  v39 = *MEMORY[0x277D85DE8];
  if ([-[TSDGroupInfo childInfos](self "childInfos")])
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = [(TSDGroupInfo *)self childInfos];
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          if (v12)
          {
            [v12 computeFullTransform];
          }

          else
          {
            memset(&v32, 0, sizeof(v32));
          }

          v40.origin.x = 0.0;
          v40.origin.y = 0.0;
          v40.size.width = 1.0;
          v40.size.height = 1.0;
          v43 = CGRectApplyAffineTransform(v40, &v32);
          v41.origin.x = x;
          v41.origin.y = y;
          v41.size.width = width;
          v41.size.height = height;
          v42 = CGRectUnion(v41, v43);
          x = v42.origin.x;
          y = v42.origin.y;
          width = v42.size.width;
          height = v42.size.height;
        }

        v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    [(TSDInfoGeometry *)[(TSDGroupInfo *)self geometry] size];
    v14 = fmax(v13, 1.0);
    v16 = fmax(v15, 1.0);
    memset(&v32, 0, sizeof(v32));
    CGAffineTransformMakeScale(&v32, fmax(width, 1.0) / v14, fmax(height, 1.0) / v16);
    CGAffineTransformMakeTranslation(&t2, x / v14, y / v16);
    t1 = v32;
    CGAffineTransformConcat(&v31, &t1, &t2);
    v32 = v31;
    v17 = [(TSDGroupInfo *)self geometry];
    if (v17)
    {
      [(TSDInfoGeometry *)v17 fullTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = v32;
    CGAffineTransformConcat(&v31, &t1, &t2);
    [(TSDGroupInfo *)self setGeometry:[TSDInfoGeometry geometryFromFullTransform:&v31]];
    CGAffineTransformMakeTranslation(&v31, -x, -y);
    v32 = v31;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [(TSDGroupInfo *)self childInfos];
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v25 + 1) + 8 * j);
          v24 = [v23 geometry];
          v31 = v32;
          [v23 setGeometry:{objc_msgSend(v24, "geometryByAppendingTransform:", &v31)}];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v20);
    }
  }
}

- (void)willCopyWithOtherDrawables:(id)a3
{
  v5 = [(TSDGroupInfo *)self childInfos];

  [v5 makeObjectsPerformSelector:a2 withObject:a3];
}

- (void)didCopy
{
  v3 = [(TSDGroupInfo *)self childInfos];

  [v3 makeObjectsPerformSelector:a2];
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [TSDDrawableInfo willBeAddedToDocumentRoot:sel_willBeAddedToDocumentRoot_context_ context:?];
  if (([a4 wasUnarchived] & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    mChildInfos = self->mChildInfos;
    v8 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(mChildInfos);
          }

          [*(*(&v12 + 1) + 8 * v11++) willBeAddedToDocumentRoot:a3 context:a4];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [TSDDrawableInfo wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  self->mIsInDocument = 1;
  if (([a4 wasUnarchived] & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    mChildInfos = self->mChildInfos;
    v8 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(mChildInfos);
          }

          [*(*(&v12 + 1) + 8 * v11++) wasAddedToDocumentRoot:a3 context:a4];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v14 willBeRemovedFromDocumentRoot:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mChildInfos = self->mChildInfos;
  v6 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(mChildInfos);
        }

        [*(*(&v10 + 1) + 8 * i) willBeRemovedFromDocumentRoot:a3];
      }

      v7 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  self->mIsInDocument = 0;
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v14 wasRemovedFromDocumentRoot:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mChildInfos = self->mChildInfos;
  v6 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mChildInfos);
        }

        [*(*(&v10 + 1) + 8 * v9++) wasRemovedFromDocumentRoot:a3];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [TSDDrawableInfo adoptStylesheet:sel_adoptStylesheet_withMapper_ withMapper:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  mChildInfos = self->mChildInfos;
  v8 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(mChildInfos);
        }

        [*(*(&v12 + 1) + 8 * v11++) adoptStylesheet:a3 withMapper:a4];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDGroupInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __37__TSDGroupInfo_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 639, @"nil object after cast"}];
  }

  v5 = [objc_msgSend(*(a1 + 40) "childInfos")];
  if (v5 == [objc_msgSend(v2 "childInfos")])
  {
    if (![objc_msgSend(*(a1 + 40) "childInfos")])
    {
      return 4;
    }

    v6 = 0;
    v7 = 4;
    while (1)
    {
      v8 = [objc_msgSend(*(a1 + 40) "childInfos")];
      v9 = [objc_msgSend(v2 "childInfos")];
      if (![v8 conformsToProtocol:&unk_287E2BA38] || (objc_msgSend(v9, "conformsToProtocol:", &unk_287E2BA38) & 1) == 0)
      {
        break;
      }

      if (++v6 >= [objc_msgSend(*(a1 + 40) "childInfos")])
      {
        return v7;
      }
    }
  }

  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo mixedObjectWithFraction:ofObject:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 667, @"TSDGroupInfo does not implement TSDMixing!"}];
  return 0;
}

+ (id)p_drawablesToInsertForGroup:(id)a3 filteredWithTarget:(id)a4 action:(SEL)a5 didUngroup:(BOOL *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = [objc_msgSend(a3 "childInfos")] < 2;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(a3, "childInfos"), "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = a3;
  v11 = [a3 childInfos];
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        v17 = TSUDynamicCast();
        v41 = 0;
        if (v17)
        {
          [v10 addObjectsFromArray:{objc_msgSend(a1, "p_drawablesToInsertForGroup:filteredWithTarget:action:didUngroup:", v17, a4, a5, &v41)}];
          v9 |= v41;
        }

        else
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v13);
  }

  if ((v9 & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (!v26)
    {
LABEL_30:
      v18 = [MEMORY[0x277CBEA60] arrayWithObject:v30];

      v24 = 0;
      v20 = a6;
      if (!a6)
      {
        return v18;
      }

      goto LABEL_20;
    }

    v27 = v26;
    v28 = *v38;
LABEL_24:
    v29 = 0;
    while (1)
    {
      if (*v38 != v28)
      {
        objc_enumerationMutation(v10);
      }

      objc_opt_class();
      if (![a4 a5])
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v27)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }
  }

  v18 = v10;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
  v20 = a6;
  if (v19)
  {
    v21 = v19;
    v22 = *v34;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v33 + 1) + 8 * j) setGeometry:{objc_msgSend(objc_msgSend(*(*(&v33 + 1) + 8 * j), "geometry"), "geometryWithParentGeometry:", objc_msgSend(v30, "geometry"))}];
      }

      v21 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v21);
  }

  [v30 removeAllChildrenInDocument:0];
  v24 = 1;
  if (a6)
  {
LABEL_20:
    *v20 = v24;
  }

  return v18;
}

- (void)processSelectedStoragesWithStatisticsController:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(TSDGroupInfo *)self allNestedChildrenInfos];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * v8) conformsToProtocol:&unk_287E453E8])
        {
          [TSUProtocolCast() processSelectedStoragesWithStatisticsController:a3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end