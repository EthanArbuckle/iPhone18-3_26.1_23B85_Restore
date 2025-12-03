@interface TSDRootLayout
- (CGPoint)applyAdaptiveLayoutTo:(id)to info:(id)info offset:(CGPoint)offset;
- (TSDRootLayout)initWithLayoutController:(id)controller;
- (id)childLayoutsInRect:(CGRect)rect;
- (id)p_shiftedObjects;
- (void)dealloc;
- (void)endDynamicAdaptiveLayout;
@end

@implementation TSDRootLayout

- (TSDRootLayout)initWithLayoutController:(id)controller
{
  v5.receiver = self;
  v5.super_class = TSDRootLayout;
  result = [(TSDAbstractLayout *)&v5 init];
  if (result)
  {
    result->mLayoutController = controller;
    result->mSupportsAdaptiveLayout = 0;
    result->mShiftedObjects = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDRootLayout;
  [(TSDAbstractLayout *)&v3 dealloc];
}

- (id)childLayoutsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(TSDAbstractLayout *)self children];
  v10 = [(NSArray *)children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v15 + 1) + 8 * v13++) addLayoutsInRect:v8 toArray:0 deep:{x, y, width, height}];
      }

      while (v11 != v13);
      v11 = [(NSArray *)children countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)p_shiftedObjects
{
  if (!self->mSupportsAdaptiveLayout)
  {
    return 0;
  }

  result = self->mShiftedObjects;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x277D6C348]);
    self->mShiftedObjects = result;
  }

  return result;
}

- (void)endDynamicAdaptiveLayout
{
  if (self->mSupportsAdaptiveLayout)
  {
    v3 = self->mShiftedObjects;
    self->mShiftedObjects = 0;
  }
}

- (CGPoint)applyAdaptiveLayoutTo:(id)to info:(id)info offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (!self->mSupportsAdaptiveLayout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 128, @"should not use this API"}];
  }

  objc_opt_class();
  v12 = TSUDynamicCast();
  if (to)
  {
    if ([to parent] != self)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
      [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 135, @"unexpected layout being shifted"}];
    }

    if ([to info] != v12)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
      [currentHandler3 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 137, @"layout's info didn't match passed in info"}];
    }
  }

  v18 = *MEMORY[0x277CBF348];
  v17 = *(MEMORY[0x277CBF348] + 8);
  if (v12 && ([v12 isLocked] & 1) == 0)
  {
    p_shiftedObjects = [(TSDRootLayout *)self p_shiftedObjects];
    if (!p_shiftedObjects)
    {
      currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
      [currentHandler4 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 146, @"invalid nil value for '%s'", "shiftedObjects"}];
    }

    v22 = [p_shiftedObjects objectForKey:v12];
    v17 = y;
    v18 = x;
    if (to)
    {
      v17 = y;
      v18 = x;
      if (v22)
      {
        [v22 CGPointValue];
        v18 = TSDAddPoints(v23, v24, x);
        v17 = v25;
      }
    }

    [p_shiftedObjects setObject:objc_msgSend(MEMORY[0x277CCAE60] forUncopiedKey:{"valueWithCGPoint:", v18, v17), info}];
    if (to)
    {
      [to offsetGeometryBy:{x, y}];
    }
  }

  v26 = v18;
  v27 = v17;
  result.y = v27;
  result.x = v26;
  return result;
}

@end