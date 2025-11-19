@interface TSDConnectionLineInfo
- (CGAffineTransform)computeLayoutFullTransform;
- (Class)layoutClass;
- (id)computeLayoutInfoGeometry;
- (id)copyWithContext:(id)a3;
- (void)computeLayoutInfoGeometry:(id *)a3 andPathSource:(id *)a4;
- (void)dealloc;
- (void)performBlockWithTemporaryLayout:(id)a3;
- (void)setConnectedFrom:(id)a3;
- (void)setConnectedTo:(id)a3;
- (void)willCopyWithOtherDrawables:(id)a3;
@end

@implementation TSDConnectionLineInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDConnectionLineInfo;
  [(TSDShapeInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDConnectionLineInfo;
  v3 = [(TSDShapeInfo *)&v6 copyWithContext:a3];
  v4 = v3;
  if (v3)
  {
    [v3 setConnectedFrom:0];
    [v4 setConnectedTo:0];
  }

  return v4;
}

- (Class)layoutClass
{
  objc_opt_class();
  [(TSDShapeInfo *)self pathSource];
  if ([TSUDynamicCast() type] > 1)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineInfo layoutClass]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineInfo.m"), 77, @"Wrong connection line path source type."}];
  }

  return objc_opt_class();
}

- (void)setConnectedTo:(id)a3
{
  if (a3 == self)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineInfo setConnectedTo:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineInfo.m"), 103, @"attempting to connect a line to itself!"}];
  }

  if (self->mConnectedTo != a3)
  {
    [(TSPObject *)self willModify];
    [(TSDDrawableInfo *)self willChangeProperty:539];

    self->mConnectedTo = a3;
  }
}

- (void)setConnectedFrom:(id)a3
{
  if (a3 == self)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLineInfo setConnectedFrom:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLineInfo.m"), 114, @"attempting to connect a line from itself!"}];
  }

  if (self->mConnectedFrom != a3)
  {
    [(TSPObject *)self willModify];
    [(TSDDrawableInfo *)self willChangeProperty:540];

    self->mConnectedFrom = a3;
  }
}

- (id)computeLayoutInfoGeometry
{
  v3 = 0;
  [(TSDConnectionLineInfo *)self computeLayoutInfoGeometry:&v3 andPathSource:0];
  return v3;
}

- (void)computeLayoutInfoGeometry:(id *)a3 andPathSource:(id *)a4
{
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  v8 = v7;
  if (self->mConnectedFrom)
  {
    [v7 addObject:?];
  }

  if (self->mConnectedTo)
  {
    [v8 addObject:?];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__TSDConnectionLineInfo_computeLayoutInfoGeometry_andPathSource___block_invoke;
  v9[3] = &unk_279D49190;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a4;
  [TSDLayoutController temporaryLayoutControllerForInfos:v8 useInBlock:v9];
}

uint64_t __65__TSDConnectionLineInfo_computeLayoutInfoGeometry_andPathSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layoutForInfo:*(a1 + 32)];
  result = [v3 invalidateConnections];
  if (*(a1 + 40))
  {
    result = [v3 layoutInfoGeometry];
    **(a1 + 40) = result;
  }

  if (*(a1 + 48))
  {
    result = [v3 pathSource];
    **(a1 + 48) = result;
  }

  return result;
}

- (CGAffineTransform)computeLayoutFullTransform
{
  result = [(TSDConnectionLineInfo *)self computeLayoutInfoGeometry];
  if (result)
  {

    return [(CGAffineTransform *)result fullTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)willCopyWithOtherDrawables:(id)a3
{
  v6 = [a3 mutableCopy];
  if ([v6 count])
  {
    v4 = 0;
    do
    {
      v5 = [v6 objectAtIndex:v4];
      if (objc_opt_respondsToSelector())
      {
        [v6 addObjectsFromArray:{objc_msgSend(v5, "childInfos")}];
      }

      ++v4;
    }

    while (v4 < [v6 count]);
  }

  if (([v6 containsObject:self->mConnectedFrom] & 1) == 0)
  {
    *&self->mInvalidFlags |= 1u;
  }

  if (([v6 containsObject:self->mConnectedTo] & 1) == 0)
  {
    *&self->mInvalidFlags |= 2u;
  }
}

- (void)performBlockWithTemporaryLayout:(id)a3
{
  v5 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  v6 = v5;
  if (self->mConnectedFrom)
  {
    [v5 addObject:?];
  }

  if (self->mConnectedTo)
  {
    [v6 addObject:?];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TSDConnectionLineInfo_performBlockWithTemporaryLayout___block_invoke;
  v7[3] = &unk_279D48520;
  v7[4] = self;
  v7[5] = a3;
  [TSDLayoutController temporaryLayoutControllerForInfos:v6 useInBlock:v7];
}

uint64_t __57__TSDConnectionLineInfo_performBlockWithTemporaryLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 layoutForInfo:*(a1 + 32)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end