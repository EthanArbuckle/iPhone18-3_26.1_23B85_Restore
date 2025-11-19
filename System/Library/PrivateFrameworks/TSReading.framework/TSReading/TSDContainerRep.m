@interface TSDContainerRep
- (BOOL)canDrawInParallel;
- (BOOL)mustDrawOnMainThreadForInteractiveCanvas;
- (TSDContainerInfo)containerInfo;
- (TSDMutableContainerInfo)mutableContainerInfo;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)hitRepChrome:(CGPoint)a3 passingTest:(id)a4;
- (id)hitReps:(CGPoint)a3 withSlopBlock:(id)a4;
- (id)visibleChildLayouts;
- (void)addChildRep:(id)a3;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)insertChildRep:(id)a3 above:(id)a4;
- (void)insertChildRep:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChildRep:(id)a3 below:(id)a4;
- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)replaceChildRep:(id)a3 with:(id)a4;
- (void)replaceContentsFromRep:(id)a3;
- (void)selectChildRep:(id)a3;
- (void)setChildReps:(id)a3;
- (void)updateChildrenFromLayout;
- (void)willReplaceContentsFromRep:(id)a3;
@end

@implementation TSDContainerRep

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mChildReps = self->mChildReps;
  v4 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(mChildReps);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 parentRep] != self)
        {
          v9 = [MEMORY[0x277D6C290] currentHandler];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerRep dealloc]"];
          [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerRep.m"), 25, @"parentRep not correct"}];
        }

        [v8 setParentRep:0];
      }

      v5 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = TSDContainerRep;
  [(TSDRep *)&v11 dealloc];
}

- (TSDContainerInfo)containerInfo
{
  [(TSDRep *)self info];

  return TSUProtocolCast();
}

- (void)selectChildRep:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerRep selectChildRep:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerRep.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:61 description:@"subclass should override this method"];
}

- (TSDMutableContainerInfo)mutableContainerInfo
{
  [(TSDRep *)self info];

  return TSUProtocolCast();
}

- (void)setChildReps:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  mChildReps = self->mChildReps;
  if (mChildReps != a3 && ([(NSMutableArray *)mChildReps isEqual:?]& 1) == 0)
  {
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:a3];
    }

    else
    {
      v6 = 0;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->mChildReps;
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
            [v12 setParentRep:0];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    if (self->mChildReps)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->mChildReps];
    }

    else
    {
      v13 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(a3);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          if (([v13 containsObject:v18] & 1) == 0)
          {
            [v18 parentRep];
            [TSUProtocolCast() removeChildRep:v18];
            [v18 setParentRep:self];
          }
        }

        v15 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    v19 = [a3 mutableCopy];
    self->mChildReps = v19;
  }
}

- (void)addChildRep:(id)a3
{
  mChildReps = self->mChildReps;
  if (mChildReps)
  {
    v6 = [(NSMutableArray *)mChildReps count];
  }

  else
  {
    v6 = 0;
  }

  [(TSDContainerRep *)self insertChildRep:a3 atIndex:v6];
}

- (void)insertChildRep:(id)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    v6 = [a3 parentRep];
    if (v6)
    {
      v7 = a3;
      [a3 parentRep];
      [TSUProtocolCast() removeChildRep:a3];
    }

    mChildReps = self->mChildReps;
    if (!mChildReps)
    {
      mChildReps = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->mChildReps = mChildReps;
    }

    [(NSMutableArray *)mChildReps insertObject:a3 atIndex:a4];
    [a3 setParentRep:self];
    if (v6)
    {
    }
  }
}

- (void)insertChildRep:(id)a3 below:(id)a4
{
  mChildReps = self->mChildReps;
  if (mChildReps)
  {
    v7 = [(NSMutableArray *)mChildReps indexOfObjectIdenticalTo:a4];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDContainerRep *)self insertChildRep:a3 atIndex:v7];
    }
  }
}

- (void)insertChildRep:(id)a3 above:(id)a4
{
  mChildReps = self->mChildReps;
  if (mChildReps)
  {
    v7 = [(NSMutableArray *)mChildReps indexOfObjectIdenticalTo:a4];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDContainerRep *)self insertChildRep:a3 atIndex:v7 + 1];
    }
  }
}

- (void)replaceChildRep:(id)a3 with:(id)a4
{
  mChildReps = self->mChildReps;
  if (mChildReps)
  {
    v8 = [(NSMutableArray *)mChildReps indexOfObjectIdenticalTo:?];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = a3;
      [(NSMutableArray *)self->mChildReps removeObjectAtIndex:v9];
      [a3 setParentRep:0];

      [(TSDContainerRep *)self insertChildRep:a4 atIndex:v9];
    }
  }
}

- (BOOL)mustDrawOnMainThreadForInteractiveCanvas
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TSDContainerRep *)self childReps];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) mustDrawOnMainThreadForInteractiveCanvas])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)canDrawInParallel
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TSDContainerRep *)self childReps];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) canDrawInParallel];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)updateChildrenFromLayout
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [(TSDContainerRep *)self childReps];
  obj = [(TSDContainerRep *)self visibleChildLayouts];
  v5 = [obj count];
  if (v5 == [v4 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v36;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        if ([objc_msgSend(v4 objectAtIndex:{v8), "layout"}] != v11)
        {
          break;
        }

        ++v8;
        if (v7 == ++v10)
        {
          v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (!v12)
      {
        goto LABEL_32;
      }

      v13 = v12;
      v14 = 0;
      v15 = *v32;
LABEL_12:
      v16 = v14;
      v14 += v13;
      while (1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        if ([objc_msgSend(v4 objectAtIndex:{v16), "parentRep"}] != self)
        {
          break;
        }

        ++v16;
        if (!--v13)
        {
          v13 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v13)
          {
            goto LABEL_12;
          }

          goto LABEL_32;
        }
      }
    }
  }

  v24 = a2;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        v23 = [(TSDCanvas *)self->super.mCanvas repForLayout:v22, v24];
        if (v23)
        {
          goto LABEL_28;
        }

        v23 = [objc_alloc(objc_msgSend(v22 "repClassOverride"))];
        [(TSDCanvas *)self->super.mCanvas delegate];
        if (objc_opt_respondsToSelector())
        {
          [(TSDCanvasDelegate *)[(TSDCanvas *)self->super.mCanvas delegate] canvas:self->super.mCanvas willLayoutRep:v23];
        }

        if (v23)
        {
LABEL_28:
          [v17 addObject:v23];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v19);
  }

  [v17 sortUsingComparator:{&__block_literal_global_28, v24}];
  [(TSDContainerRep *)self setChildReps:v17];

  a2 = v25;
LABEL_32:
  [-[TSDContainerRep childReps](self "childReps")];
}

uint64_t __43__TSDContainerRep_updateChildrenFromLayout__block_invoke()
{
  objc_opt_class();
  v0 = TSUDynamicCast();
  objc_opt_class();
  v1 = TSUDynamicCast();
  if ([v0 forcesPlacementOnTop] && (objc_msgSend(v1, "forcesPlacementOnTop") & 1) != 0)
  {
    return 0;
  }

  if ([v0 forcesPlacementOnTop])
  {
    return 1;
  }

  return [v1 forcesPlacementOnTop] << 63 >> 63;
}

- (id)visibleChildLayouts
{
  v2 = [(TSDRep *)self layout];

  return [(TSDAbstractLayout *)v2 children];
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSetFillColorWithColor(a3, [objc_msgSend(MEMORY[0x277D6C2A8] "whiteColor")]);
  [(TSDRep *)self naturalBounds];

  CGContextFillRect(a3, *&v5);
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TSDContainerRep;
  [TSDRep recursivelyPerformSelectorIfImplemented:sel_recursivelyPerformSelectorIfImplemented_withObject_withObject_ withObject:? withObject:?];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(TSDContainerRep *)self childReps];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) recursivelyPerformSelectorIfImplemented:a3 withObject:a4 withObject:a5];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TSDContainerRep;
  [TSDRep recursivelyPerformSelector:sel_recursivelyPerformSelector_withObject_withObject_ withObject:? withObject:?];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(TSDContainerRep *)self childReps];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) recursivelyPerformSelector:a3 withObject:a4 withObject:a5];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)hitRepChrome:(CGPoint)a3 passingTest:(id)a4
{
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [-[TSDContainerRep childRepsForHitTesting](self "childRepsForHitTesting")];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v21 = vdupq_lane_s64(*&x, 0);
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 "layout")];
        if (v12)
        {
          [v12 inverseTransform];
          v13 = v24;
          v14 = v25;
          v15 = v26;
        }

        else
        {
          v15 = 0uLL;
          v13 = 0uLL;
          v14 = 0uLL;
        }

        v16 = [v11 hitRepChrome:a4 passingTest:{vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(v14, y), v21, v13))}];
        if (v16)
        {
          return v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v23.receiver = self;
  v23.super_class = TSDContainerRep;
  v17 = [(TSDRep *)&v23 hitRepChrome:x, y];
  v18 = v17;
  if (a4 && v17 && !(*(a4 + 2))(a4, v17))
  {
    return 0;
  }

  return v18;
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [-[TSDContainerRep childRepsForHitTesting](self "childRepsForHitTesting")];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v23 = vdupq_lane_s64(*&x, 0);
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 "layout")];
        if (v14)
        {
          [v14 inverseTransform];
          v15 = v26;
          v16 = v27;
          v17 = v28;
        }

        else
        {
          v17 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
        }

        v18 = [v13 hitRep:a4 withGesture:a5 passingTest:{vaddq_f64(v17, vmlaq_f64(vmulq_n_f64(v16, y), v23, v15))}];
        if (v18)
        {
          return v18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v25.receiver = self;
  v25.super_class = TSDContainerRep;
  v19 = [(TSDRep *)&v25 hitRep:x, y];
  v20 = v19;
  if (a5 && v19 && !(*(a5 + 2))(a5, v19))
  {
    return 0;
  }

  return v20;
}

- (id)hitReps:(CGPoint)a3 withSlopBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [-[TSDContainerRep childRepsForHitTesting](self "childRepsForHitTesting")];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v21 = vdupq_lane_s64(*&x, 0);
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [objc_msgSend(v12 "layout")];
        if (v13)
        {
          [v13 inverseTransform];
          v14 = v24;
          v15 = v25;
          v16 = v26;
        }

        else
        {
          v16 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
        }

        v17 = [v12 hitReps:a4 withSlopBlock:{vaddq_f64(v16, vmlaq_f64(vmulq_n_f64(v15, y), v21, v14))}];
        if ([v17 count])
        {
          [v6 addObjectsFromArray:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v23.receiver = self;
  v23.super_class = TSDContainerRep;
  v18 = [(TSDRep *)&v23 hitReps:a4 withSlopBlock:x, y];
  if ([v18 count])
  {
    [v6 addObjectsFromArray:v18];
  }

  return v6;
}

- (void)willReplaceContentsFromRep:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TSDContainerRep;
  [(TSDRep *)&v19 willReplaceContentsFromRep:?];
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = [-[TSDContainerRep childReps](self "childReps")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 childReps];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if ([v5 count])
        {
          v12 = 0;
          while (1)
          {
            v13 = [v5 objectAtIndex:v12];
            v14 = [v13 info];
            if (v14 == [v11 info])
            {
              break;
            }

            if (++v12 >= [v5 count])
            {
              goto LABEL_12;
            }
          }

          [v13 willReplaceContentsFromRep:v11];
          [v5 removeObjectAtIndex:v12];
        }

LABEL_12:
        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)replaceContentsFromRep:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TSDContainerRep;
  [(TSDRep *)&v19 replaceContentsFromRep:?];
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = [-[TSDContainerRep childReps](self "childReps")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 childReps];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if ([v5 count])
        {
          v12 = 0;
          while (1)
          {
            v13 = [v5 objectAtIndex:v12];
            v14 = [v13 info];
            if (v14 == [v11 info])
            {
              break;
            }

            if (++v12 >= [v5 count])
            {
              goto LABEL_12;
            }
          }

          [v13 replaceContentsFromRep:v11];
          [v5 removeObjectAtIndex:v12];
        }

LABEL_12:
        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }
}

@end