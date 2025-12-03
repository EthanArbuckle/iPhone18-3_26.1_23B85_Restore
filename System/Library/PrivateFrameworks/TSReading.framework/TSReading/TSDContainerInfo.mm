@interface TSDContainerInfo
- (BOOL)isThemeContent;
- (TSDContainerInfo)initWithContext:(id)context geometry:(id)geometry;
- (id)copyWithContext:(id)context;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)addChildInfo:(id)info;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)dealloc;
- (void)insertChildInfo:(id)info above:(id)above;
- (void)insertChildInfo:(id)info atIndex:(unint64_t)index;
- (void)insertChildInfo:(id)info below:(id)below;
- (void)moveChildren:(id)children toIndexes:(id)indexes;
- (void)replaceChildInfo:(id)info with:(id)with;
- (void)setChildInfos:(id)infos;
- (void)setGeometry:(id)geometry;
- (void)setOwningAttachment:(id)attachment;
@end

@implementation TSDContainerInfo

- (TSDContainerInfo)initWithContext:(id)context geometry:(id)geometry
{
  v7.receiver = self;
  v7.super_class = TSDContainerInfo;
  v5 = [(TSPObject *)&v7 initWithContext:context];
  if (v5)
  {
    v5->mGeometry = [geometry copy];
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
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
  v8.super_class = TSDContainerInfo;
  [(TSDContainerInfo *)&v8 dealloc];
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  if (self->mParentInfo == needed)
  {
    self->mParentInfo = 0;
  }
}

- (void)setGeometry:(id)geometry
{
  if (!geometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo setGeometry:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"), 59, @"invalid nil value for '%s'", "newGeometry"}];
  }

  if (([geometry isEqual:self->mGeometry] & 1) == 0)
  {
    [(TSPObject *)self willModify];

    self->mGeometry = geometry;
  }
}

- (void)setOwningAttachment:(id)attachment
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo setOwningAttachment:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:75 description:@"TSDContainerInfo cannot be owned by an attachment because it is not a subclass of TSDDrawableInfo"];
}

- (BOOL)isThemeContent
{
  parentInfo = [(TSDContainerInfo *)self parentInfo];

  return [(TSDContainerInfo *)parentInfo isThemeContent];
}

- (id)copyWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(TSDContainerInfo *)self zone];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{v5), "initWithContext:", context}];
  if (v6)
  {
    *(v6 + 48) = [(TSDInfoGeometry *)self->mGeometry copyWithZone:v5];
    if ([(NSMutableArray *)self->mChildInfos count])
    {
      *(v6 + 64) = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v5), "initWithCapacity:", -[NSMutableArray count](self->mChildInfos, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      mChildInfos = self->mChildInfos;
      v8 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(mChildInfos);
            }

            v12 = [*(*(&v14 + 1) + 8 * v11) copyWithContext:context];
            [v12 setParentInfo:v6];
            [*(v6 + 64) addObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)mChildInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  return v6;
}

- (void)setChildInfos:(id)infos
{
  v30 = *MEMORY[0x277D85DE8];
  mChildInfos = self->mChildInfos;
  if (mChildInfos != infos && ([(NSMutableArray *)mChildInfos isEqual:?]& 1) == 0)
  {
    [(TSPObject *)self willModify];
    if (infos)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:infos];
    }

    else
    {
      v6 = 0;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->mChildInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            [v12 setParentInfo:0];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    if (self->mChildInfos)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->mChildInfos];
    }

    else
    {
      v13 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [infos countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(infos);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          if (([v13 containsObject:v18] & 1) == 0)
          {
            [v18 parentInfo];
            [TSUProtocolCast() removeChildInfo:v18];
            [v18 setParentInfo:self];
          }
        }

        v15 = [infos countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    v19 = [infos mutableCopy];
    self->mChildInfos = v19;
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

  [(TSDContainerInfo *)self insertChildInfo:info atIndex:v6];
}

- (void)insertChildInfo:(id)info atIndex:(unint64_t)index
{
  if (info)
  {
    [(TSPObject *)self willModify];
    [info parentInfo];
    v6 = TSUProtocolCast();
    if (v6)
    {
      infoCopy = info;
      [v6 removeChildInfo:info];
    }

    mChildInfos = self->mChildInfos;
    if (!mChildInfos)
    {
      mChildInfos = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->mChildInfos = mChildInfos;
    }

    [(NSMutableArray *)mChildInfos insertObject:info atIndex:index];
    [info setParentInfo:self];
    if (v6)
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

      [(TSDContainerInfo *)self insertChildInfo:info atIndex:v7];
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

      [(TSDContainerInfo *)self insertChildInfo:info atIndex:v7 + 1];
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
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo moveChildren:toIndexes:]"];
        [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"), 248, @"Can't move drawables to indexes, not all drawables are in this container."}];
      }

      if ([v20 count] == v12)
      {
        [v20 insertObjects:children atIndexes:indexes];
        [(TSDContainerInfo *)self setChildInfos:v20];
      }

      return;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo moveChildren:toIndexes:]"];
    [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"), 241, @"Can't move drawables to indexes, counts don't match."}];
    if (lastIndex < v11)
    {
      return;
    }
  }

  currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo moveChildren:toIndexes:]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"];

  [currentHandler3 handleFailureInFunction:v18 file:v19 lineNumber:242 description:{@"Can't move drawables to indexes, one or more indexes out of range."}];
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
      infoCopy = info;
      [(NSMutableArray *)self->mChildInfos removeObjectAtIndex:v9];
      [info setParentInfo:0];

      [(TSDContainerInfo *)self insertChildInfo:with atIndex:v9];
    }
  }
}

- (int64_t)mixingTypeWithObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo mixingTypeWithObject:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"), 302, @"TSDContainerInfo does not implement TSDMixing!"}];
  return 1;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerInfo mixedObjectWithFraction:ofObject:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerInfo.m"), 309, @"TSDContainerInfo does not implement TSDMixing!"}];
  return 0;
}

@end