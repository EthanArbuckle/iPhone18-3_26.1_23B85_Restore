@interface TSDRootLayout
- (CGPoint)applyAdaptiveLayoutTo:(id)a3 info:(id)a4 offset:(CGPoint)a5;
- (TSDRootLayout)initWithLayoutController:(id)a3;
- (id)childLayoutsInRect:(CGRect)a3;
- (id)p_shiftedObjects;
- (void)dealloc;
- (void)endDynamicAdaptiveLayout;
@end

@implementation TSDRootLayout

- (TSDRootLayout)initWithLayoutController:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSDRootLayout;
  result = [(TSDAbstractLayout *)&v5 init];
  if (result)
  {
    result->mLayoutController = a3;
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

- (id)childLayoutsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(TSDAbstractLayout *)self children];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) addLayoutsInRect:v8 toArray:0 deep:{x, y, width, height}];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (CGPoint)applyAdaptiveLayoutTo:(id)a3 info:(id)a4 offset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  if (!self->mSupportsAdaptiveLayout)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 128, @"should not use this API"}];
  }

  objc_opt_class();
  v12 = TSUDynamicCast();
  if (a3)
  {
    if ([a3 parent] != self)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 135, @"unexpected layout being shifted"}];
    }

    if ([a3 info] != v12)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 137, @"layout's info didn't match passed in info"}];
    }
  }

  v18 = *MEMORY[0x277CBF348];
  v17 = *(MEMORY[0x277CBF348] + 8);
  if (v12 && ([v12 isLocked] & 1) == 0)
  {
    v19 = [(TSDRootLayout *)self p_shiftedObjects];
    if (!v19)
    {
      v20 = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]"];
      [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRootLayout.m"), 146, @"invalid nil value for '%s'", "shiftedObjects"}];
    }

    v22 = [v19 objectForKey:v12];
    v17 = y;
    v18 = x;
    if (a3)
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

    [v19 setObject:objc_msgSend(MEMORY[0x277CCAE60] forUncopiedKey:{"valueWithCGPoint:", v18, v17), a4}];
    if (a3)
    {
      [a3 offsetGeometryBy:{x, y}];
    }
  }

  v26 = v18;
  v27 = v17;
  result.y = v27;
  result.x = v26;
  return result;
}

@end