@interface TSDGroupInfo
+ (id)groupGeometryFromChildrenInfos:(id)infos;
+ (id)p_drawablesToInsertForGroup:(id)group filteredWithTarget:(id)target action:(SEL)action didUngroup:(BOOL *)ungroup;
- (id)allNestedChildrenInfos;
- (id)allNestedChildrenInfosIncludingGroups;
- (id)copyWithContext:(id)context;
- (id)groupedGeometryForChildInfo:(id)info;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)onlyChild;
- (id)ungroupedGeometryForChildInfo:(id)info;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)addChildInfo:(id)info;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)didCopy;
- (void)ensureGeometryFitsChildren;
- (void)insertChildInfo:(id)info above:(id)above;
- (void)insertChildInfo:(id)info atIndex:(unint64_t)index;
- (void)insertChildInfo:(id)info below:(id)below;
- (void)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometry;
- (void)moveChildren:(id)children toIndexes:(id)indexes;
- (void)processSelectedStoragesWithStatisticsController:(id)controller;
- (void)removeAllChildrenInDocument:(BOOL)document;
- (void)replaceChildInfo:(id)info with:(id)with;
- (void)setChildInfos:(id)infos;
- (void)setGeometry:(id)geometry;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)willCopyWithOtherDrawables:(id)drawables;
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

- (void)setGeometry:(id)geometry
{
  if (!geometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo setGeometry:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 94, @"invalid nil value for '%s'", "newGeometry"}];
  }

  if (([geometry isEqual:self->super.mGeometry] & 1) == 0)
  {
    [(TSPObject *)self willModify];
    if ([geometry isEqualExceptForPosition:self->super.mGeometry])
    {
      v7 = 513;
    }

    else
    {
      v7 = 512;
    }

    [(TSDDrawableInfo *)self willChangeProperty:v7];

    self->super.mGeometry = geometry;
  }
}

- (id)copyWithContext:(id)context
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

            v11 = [*(*(&v13 + 1) + 8 * i) copyWithContext:context];
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
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childInfos = [(TSDGroupInfo *)self childInfos];
  v5 = [childInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(childInfos);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObjectsFromArray:{objc_msgSend(v9, "allNestedChildrenInfos")}];
        }

        else
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [childInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
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
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  childInfos = [(TSDGroupInfo *)self childInfos];
  v5 = [childInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(childInfos);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObjectsFromArray:{objc_msgSend(v9, "allNestedChildrenInfosIncludingGroups")}];
        }

        [array addObject:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [childInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setChildInfos:(id)infos
{
  selfCopy = self;
  v65 = *MEMORY[0x277D85DE8];
  mChildInfos = self->mChildInfos;
  if (mChildInfos != infos && ([(NSMutableArray *)mChildInfos isEqual:?]& 1) == 0)
  {
    [(TSPObject *)selfCopy willModify];
    [(TSDDrawableInfo *)selfCopy willChangeProperty:514];
    if (infos)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:infos];
    }

    else
    {
      v6 = 0;
    }

    if (selfCopy->mIsInDocument)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
      documentRoot = [(TSPObject *)selfCopy documentRoot];
    }

    else
    {
      documentRoot = 0;
      v43 = 0;
      v7 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v9 = selfCopy->mChildInfos;
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
            if (selfCopy->mIsInDocument)
            {
              [v7 addObject:v14];
              [v14 willBeRemovedFromDocumentRoot:documentRoot];
            }

            [v14 setParentInfo:0];
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v11);
    }

    v42 = v7;
    if (selfCopy->mChildInfos)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:selfCopy->mChildInfos];
    }

    else
    {
      v15 = 0;
    }

    infosCopy = infos;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v17 = [infos countByEnumeratingWithState:&v53 objects:v63 count:16];
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
            objc_enumerationMutation(infosCopy);
          }

          v22 = *(*(&v53 + 1) + 8 * j);
          objc_opt_class();
          if (!TSUDynamicCast())
          {
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v23 = v18;
            v24 = v20;
            v25 = v15;
            v26 = selfCopy;
            v27 = documentRoot;
            v28 = v19;
            v29 = infosCopy;
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo setChildInfos:]"];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"];
            v32 = v30;
            infosCopy = v29;
            v19 = v28;
            documentRoot = v27;
            selfCopy = v26;
            v15 = v25;
            v20 = v24;
            v18 = v23;
            [currentHandler handleFailureInFunction:v32 file:v31 lineNumber:231 description:@"Group children must be TSDDrawableInfos."];
          }

          if (([v15 containsObject:v22] & 1) == 0)
          {
            [v22 parentInfo];
            [TSUProtocolCast() removeChildInfo:v22];
            if (selfCopy->mIsInDocument)
            {
              [v43 addObject:v22];
              [v22 willBeAddedToDocumentRoot:documentRoot context:0];
            }

            [v22 setParentInfo:selfCopy];
          }
        }

        v18 = [infosCopy countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v18);
    }

    v33 = [infosCopy mutableCopy];
    selfCopy->mChildInfos = v33;
    if (selfCopy->mIsInDocument)
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

            [*(*(&v49 + 1) + 8 * k) wasRemovedFromDocumentRoot:documentRoot];
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

            [*(*(&v45 + 1) + 8 * m) wasAddedToDocumentRoot:documentRoot context:0];
          }

          v39 = [v43 countByEnumeratingWithState:&v45 objects:v61 count:16];
        }

        while (v39);
      }
    }
  }
}

- (void)addChildInfo:(id)info
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

  [(TSDGroupInfo *)self insertChildInfo:info atIndex:v6];
}

- (void)insertChildInfo:(id)info atIndex:(unint64_t)index
{
  if (info)
  {
    objc_opt_class();
    if (!TSUDynamicCast())
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo insertChildInfo:atIndex:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 276, @"Group children must be TSDDrawableInfos."}];
    }

    [(TSPObject *)self willModify];
    [(TSDDrawableInfo *)self willChangeProperty:514];
    [info parentInfo];
    v8 = TSUProtocolCast();
    if (v8)
    {
      infoCopy = info;
      [v8 removeChildInfo:info];
    }

    if (!self->mChildInfos)
    {
      self->mChildInfos = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [info setParentInfo:self];
    if (self->mIsInDocument)
    {
      [info willBeAddedToDocumentRoot:-[TSPObject documentRoot](self context:{"documentRoot"), 0}];
    }

    [(NSMutableArray *)self->mChildInfos insertObject:info atIndex:index];
    if (self->mIsInDocument)
    {
      [info wasAddedToDocumentRoot:-[TSPObject documentRoot](self context:{"documentRoot"), 0}];
    }

    if (v8)
    {
    }
  }
}

- (void)insertChildInfo:(id)info below:(id)below
{
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v7 = [(NSMutableArray *)mChildInfos indexOfObjectIdenticalTo:below];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDGroupInfo *)self insertChildInfo:info atIndex:v7];
    }
  }
}

- (void)insertChildInfo:(id)info above:(id)above
{
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v7 = [(NSMutableArray *)mChildInfos indexOfObjectIdenticalTo:above];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDGroupInfo *)self insertChildInfo:info atIndex:v7 + 1];
    }
  }
}

- (void)moveChildren:(id)children toIndexes:(id)indexes
{
  v7 = [children count];
  v8 = [indexes count];
  lastIndex = [indexes lastIndex];
  v10 = [(NSMutableArray *)self->mChildInfos count];
  v11 = v10;
  if (v7 == v8)
  {
    if (lastIndex < v10)
    {
      v20 = [(NSMutableArray *)self->mChildInfos mutableCopy];
      [v20 removeObjectsInArray:children];
      v12 = v11 - v7;
      if ([v20 count] != v12)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo moveChildren:toIndexes:]"];
        [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 345, @"Can't move drawables to indexes, not all drawables are in this group."}];
      }

      if ([v20 count] == v12)
      {
        [v20 insertObjects:children atIndexes:indexes];
        [(TSDGroupInfo *)self setChildInfos:v20];
      }

      return;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo moveChildren:toIndexes:]"];
    [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 338, @"Can't move drawables to indexes, counts don't match."}];
    if (lastIndex < v11)
    {
      return;
    }
  }

  currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo moveChildren:toIndexes:]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"];

  [currentHandler3 handleFailureInFunction:v18 file:v19 lineNumber:339 description:{@"Can't move drawables to indexes, one or more indexes out of range."}];
}

- (void)removeAllChildrenInDocument:(BOOL)document
{
  documentCopy = document;
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
        if (documentCopy)
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
  if (documentCopy)
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

- (id)groupedGeometryForChildInfo:(id)info
{
  geometry = [info geometry];
  geometry2 = [(TSDGroupInfo *)self geometry];

  return [geometry geometryRelativeToGeometry:geometry2];
}

- (id)ungroupedGeometryForChildInfo:(id)info
{
  if (([(NSMutableArray *)self->mChildInfos containsObject:?]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo ungroupedGeometryForChildInfo:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 385, @"Can't get ungrouped geometry for a drawable which isn't a child of the group."}];
  }

  geometry = [info geometry];
  geometry2 = [(TSDGroupInfo *)self geometry];

  return [geometry geometryWithParentGeometry:geometry2];
}

+ (id)groupGeometryFromChildrenInfos:(id)infos
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
  v8 = [infos countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(infos);
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
      v9 = [infos countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)replaceChildInfo:(id)info with:(id)with
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
      infoCopy = info;
      if (self->mIsInDocument)
      {
        [info willBeRemovedFromDocumentRoot:{-[TSPObject documentRoot](self, "documentRoot")}];
      }

      [(NSMutableArray *)self->mChildInfos removeObjectAtIndex:v9];
      [info setParentInfo:0];

      if (self->mIsInDocument)
      {
        [info wasRemovedFromDocumentRoot:{-[TSPObject documentRoot](self, "documentRoot")}];
      }

      [(TSDGroupInfo *)self insertChildInfo:with atIndex:v9];
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
    childInfos = [(TSDGroupInfo *)self childInfos];
    v8 = [childInfos countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(childInfos);
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

        v9 = [childInfos countByEnumeratingWithState:&v33 objects:v38 count:16];
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
    geometry = [(TSDGroupInfo *)self geometry];
    if (geometry)
    {
      [(TSDInfoGeometry *)geometry fullTransform];
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
    childInfos2 = [(TSDGroupInfo *)self childInfos];
    v19 = [childInfos2 countByEnumeratingWithState:&v25 objects:v37 count:16];
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
            objc_enumerationMutation(childInfos2);
          }

          v23 = *(*(&v25 + 1) + 8 * j);
          geometry2 = [v23 geometry];
          v31 = v32;
          [v23 setGeometry:{objc_msgSend(geometry2, "geometryByAppendingTransform:", &v31)}];
        }

        v20 = [childInfos2 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v20);
    }
  }
}

- (void)willCopyWithOtherDrawables:(id)drawables
{
  childInfos = [(TSDGroupInfo *)self childInfos];

  [childInfos makeObjectsPerformSelector:a2 withObject:drawables];
}

- (void)didCopy
{
  childInfos = [(TSDGroupInfo *)self childInfos];

  [childInfos makeObjectsPerformSelector:a2];
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [TSDDrawableInfo willBeAddedToDocumentRoot:sel_willBeAddedToDocumentRoot_context_ context:?];
  if (([context wasUnarchived] & 1) == 0)
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

          [*(*(&v12 + 1) + 8 * v11++) willBeAddedToDocumentRoot:root context:context];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [TSDDrawableInfo wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  self->mIsInDocument = 1;
  if (([context wasUnarchived] & 1) == 0)
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

          [*(*(&v12 + 1) + 8 * v11++) wasAddedToDocumentRoot:root context:context];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
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

        [*(*(&v10 + 1) + 8 * i) willBeRemovedFromDocumentRoot:root];
      }

      v7 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  self->mIsInDocument = 0;
}

- (void)wasRemovedFromDocumentRoot:(id)root
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

        [*(*(&v10 + 1) + 8 * v9++) wasRemovedFromDocumentRoot:root];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
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

        [*(*(&v12 + 1) + 8 * v11++) adoptStylesheet:stylesheet withMapper:mapper];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDGroupInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupInfo mixedObjectWithFraction:ofObject:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupInfo.m"), 667, @"TSDGroupInfo does not implement TSDMixing!"}];
  return 0;
}

+ (id)p_drawablesToInsertForGroup:(id)group filteredWithTarget:(id)target action:(SEL)action didUngroup:(BOOL *)ungroup
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = [objc_msgSend(group "childInfos")] < 2;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_msgSend(group, "childInfos"), "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  groupCopy = group;
  childInfos = [group childInfos];
  v12 = [childInfos countByEnumeratingWithState:&v42 objects:v48 count:16];
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
          objc_enumerationMutation(childInfos);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        v17 = TSUDynamicCast();
        v41 = 0;
        if (v17)
        {
          [v10 addObjectsFromArray:{objc_msgSend(self, "p_drawablesToInsertForGroup:filteredWithTarget:action:didUngroup:", v17, target, action, &v41)}];
          v9 |= v41;
        }

        else
        {
          [v10 addObject:v16];
        }
      }

      v13 = [childInfos countByEnumeratingWithState:&v42 objects:v48 count:16];
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
      v18 = [MEMORY[0x277CBEA60] arrayWithObject:groupCopy];

      v24 = 0;
      ungroupCopy2 = ungroup;
      if (!ungroup)
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
      if (![target action])
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
  ungroupCopy2 = ungroup;
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

        [*(*(&v33 + 1) + 8 * j) setGeometry:{objc_msgSend(objc_msgSend(*(*(&v33 + 1) + 8 * j), "geometry"), "geometryWithParentGeometry:", objc_msgSend(groupCopy, "geometry"))}];
      }

      v21 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v21);
  }

  [groupCopy removeAllChildrenInDocument:0];
  v24 = 1;
  if (ungroup)
  {
LABEL_20:
    *ungroupCopy2 = v24;
  }

  return v18;
}

- (void)processSelectedStoragesWithStatisticsController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  allNestedChildrenInfos = [(TSDGroupInfo *)self allNestedChildrenInfos];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [allNestedChildrenInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allNestedChildrenInfos);
        }

        if ([*(*(&v9 + 1) + 8 * v8) conformsToProtocol:&unk_287E453E8])
        {
          [TSUProtocolCast() processSelectedStoragesWithStatisticsController:controller];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allNestedChildrenInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end