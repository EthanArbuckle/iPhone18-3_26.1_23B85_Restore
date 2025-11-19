@interface MCContainerSerializer
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCContainerSerializer)init;
- (MCContainerSerializer)initWithImprint:(id)a3 andMontage:(id)a4;
- (NSArray)orderedPlugs;
- (NSSet)plugs;
- (double)duration;
- (double)timeInForPlug:(id)a3;
- (id)addPlugForContainer:(id)a3;
- (id)addPlugsForContainers:(id)a3;
- (id)imprint;
- (id)insertPlugForContainer:(id)a3 atIndex:(unint64_t)a4;
- (id)insertPlugsForContainers:(id)a3 atIndex:(unint64_t)a4;
- (id)plugAtIndex:(unint64_t)a3;
- (unint64_t)countOfPlugs;
- (void)demolish;
- (void)movePlugsAtIndices:(id)a3 toIndex:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllPlugs;
- (void)removePlugsAtIndices:(id)a3;
@end

@implementation MCContainerSerializer

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"orderedPlugs"])
  {
    return [NSSet setWithObjects:@"plugs", 0];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MCContainerSerializer;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", a3);
}

- (MCContainerSerializer)init
{
  v4.receiver = self;
  v4.super_class = MCContainerSerializer;
  v2 = [(MCContainer *)&v4 init];
  if (v2)
  {
    v2->mPlugs = objc_alloc_init(NSMutableSet);
    v2->mCachedDuration = -1.0;
  }

  return v2;
}

- (MCContainerSerializer)initWithImprint:(id)a3 andMontage:(id)a4
{
  v19.receiver = self;
  v19.super_class = MCContainerSerializer;
  v6 = [MCContainer initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v7 = [a3 objectForKey:@"plugs"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MCObject objectWithImprint:*(*(&v15 + 1) + 8 * i) andMontage:a4];
          [(NSMutableSet *)v6->mPlugs addObject:v12];
          [(MCObject *)v12 setSupercontainer:v6];
          if (![(MCObject *)v6 isSnapshot])
          {
            [(MCObject *)v12 addObserver:v6 forKeyPath:@"fullDuration" options:0 context:0];
            [(MCObject *)v12 addObserver:v6 forKeyPath:@"transitionDuration" options:0 context:0];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v6->_initialTransitionID = [a3 objectForKey:@"initialTransitionID"];
    [objc_msgSend(a3 objectForKey:{@"initialTransitionDuration", "doubleValue"}];
    v6->_initialTransitionDuration = v13;
    v6->_initialTransitionAttributes = [a3 objectForKey:@"initialTransitionAttributes"];
  }

  return v6;
}

- (void)demolish
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->mPlugs;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![(MCObject *)self isSnapshot])
        {
          [v8 removeObserver:self forKeyPath:@"fullDuration"];
          [v8 removeObserver:self forKeyPath:@"transitionDuration"];
        }

        [v8 demolish];
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  self->mPlugs = 0;
  self->mCachedOrderedPlugs = 0;
  objc_sync_exit(mPlugs);
  v9.receiver = self;
  v9.super_class = MCContainerSerializer;
  [(MCContainer *)&v9 demolish];
}

- (id)imprint
{
  v18.receiver = self;
  v18.super_class = MCContainerSerializer;
  v3 = [(MCContainer *)&v18 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MCContainerSerializer *)self plugs];
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "imprint")}];
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  [v3 setObject:v5 forKey:@"plugs"];
  initialTransitionID = self->_initialTransitionID;
  if (initialTransitionID)
  {
    [v3 setObject:initialTransitionID forKey:@"initialTransitionID"];
  }

  if (self->_initialTransitionDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"initialTransitionDuration"}];
  }

  initialTransitionAttributes = self->_initialTransitionAttributes;
  if (initialTransitionAttributes)
  {
    [v3 setObject:initialTransitionAttributes forKey:@"initialTransitionAttributes"];
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (([a3 isEqualToString:{@"fullDuration", a4, a5, a6}] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"transitionDuration"))
  {
    [(MCContainerSerializer *)self willChangeValueForKey:@"duration"];
    objc_sync_enter(self);
    self->mCachedDuration = -1.0;
    objc_sync_exit(self);

    [(MCContainerSerializer *)self didChangeValueForKey:@"duration"];
  }
}

- (double)duration
{
  mCachedDuration = self->mCachedDuration;
  if (mCachedDuration < 0.0)
  {
    objc_sync_enter(self);
    mPlugs = self->mPlugs;
    objc_sync_enter(mPlugs);
    v5 = [(NSMutableSet *)self->mPlugs count];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->mPlugs;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v5 - 1;
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          [v11 fullDuration];
          v13 = v12;
          v14 = [v11 index];
          v15 = 0.0;
          if (v14 < v8)
          {
            [v11 transitionDuration];
          }

          mCachedDuration = self->mCachedDuration + v13 - v15;
          self->mCachedDuration = mCachedDuration;
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      mCachedDuration = 0.0;
    }

    objc_sync_exit(mPlugs);
    objc_sync_exit(self);
  }

  return mCachedDuration;
}

- (NSSet)plugs
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  if ([(NSMutableSet *)self->mPlugs count])
  {
    v4 = [[NSSet alloc] initWithSet:self->mPlugs];
  }

  else
  {
    v4 = sEmptySet;
  }

  objc_sync_exit(mPlugs);
  return v4;
}

- (unint64_t)countOfPlugs
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  v4 = [(NSMutableSet *)self->mPlugs count];
  objc_sync_exit(mPlugs);
  return v4;
}

- (id)plugAtIndex:(unint64_t)a3
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  mCachedOrderedPlugs = self->mCachedOrderedPlugs;
  if (mCachedOrderedPlugs)
  {
    v7 = [(NSArray *)mCachedOrderedPlugs objectAtIndex:a3];
LABEL_13:
    v13 = v7;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->mPlugs;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 index] == a3)
          {
            v7 = v12;
            goto LABEL_13;
          }
        }

        v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v13 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  objc_sync_exit(mPlugs);
  return v13;
}

- (id)addPlugForContainer:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  v5 = [(MCContainerSerializer *)self insertPlugsForContainers:v4 atIndex:[(MCContainerSerializer *)self countOfPlugs]];

  return [v5 objectAtIndex:0];
}

- (id)addPlugsForContainers:(id)a3
{
  v5 = [(MCContainerSerializer *)self countOfPlugs];

  return [(MCContainerSerializer *)self insertPlugsForContainers:a3 atIndex:v5];
}

- (id)insertPlugForContainer:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  v7 = [(MCContainerSerializer *)self insertPlugsForContainers:v6 atIndex:a4];

  return [v7 objectAtIndex:0];
}

- (id)insertPlugsForContainers:(id)a3 atIndex:(unint64_t)a4
{
  v22 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [(MCObject *)[MCPlugSerial alloc] initFromScratchWithMontage:self->super.super.mMontage];
        [v11 setSupercontainer:self];
        [v11 setContainer:v10];
        [v11 setIndex:a4 + v7];
        [v22 addObject:v11];
        [v11 addObserver:self forKeyPath:@"fullDuration" options:0 context:0];
        [v11 addObserver:self forKeyPath:@"transitionDuration" options:0 context:0];

        ++v7;
      }

      v6 = [a3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  if ([v22 count])
  {
    v12 = [[NSSet alloc] initWithArray:v22];
    [(MCContainerSerializer *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v12];
    mPlugs = self->mPlugs;
    objc_sync_enter(mPlugs);

    self->mCachedOrderedPlugs = 0;
    v13 = [a3 count];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->mPlugs;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * j);
          if ([v18 index] >= a4)
          {
            [v18 setIndex:{&v13[objc_msgSend(v18, "index")]}];
          }
        }

        v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    [(NSMutableSet *)self->mPlugs addObjectsFromArray:v22];
    objc_sync_exit(mPlugs);
    [(MCContainerSerializer *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v12];
  }

  return v22;
}

- (void)removePlugsAtIndices:(id)a3
{
  v5 = objc_alloc_init(NSMutableSet);
  obj = self->mPlugs;
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mPlugs = self->mPlugs;
  v7 = [(NSMutableSet *)mPlugs countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(mPlugs);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([a3 containsIndex:{objc_msgSend(v10, "index")}])
        {
          [v5 addObject:v10];
          [v10 removeObserver:self forKeyPath:@"fullDuration"];
          [v10 removeObserver:self forKeyPath:@"transitionDuration"];
        }

        else
        {
          [v10 setIndex:{objc_msgSend(v10, "index") - objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v10, "index"))}];
        }
      }

      v7 = [(NSMutableSet *)mPlugs countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  [(MCContainerSerializer *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v5];

  self->mCachedOrderedPlugs = 0;
  [(NSMutableSet *)self->mPlugs minusSet:v5];
  objc_sync_exit(obj);
  [(MCContainerSerializer *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v5];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v16 + 1) + 8 * j);
        [v14 setContainer:0];
        [v14 setSupercontainer:0];
      }

      v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)movePlugsAtIndices:(id)a3 toIndex:(unint64_t)a4
{
  [(MCContainerSerializer *)self willChangeValueForKey:@"orderedPlugs"];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedOrderedPlugs = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->mPlugs;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([a3 containsIndex:{objc_msgSend(v12, "index")}])
        {
          [v12 setIndex:{objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v12, "index")) + a4}];
        }

        else
        {
          v13 = [v12 index];
          v14 = v13 - [a3 countOfIndexesInRange:{0, objc_msgSend(v12, "index")}];
          if (v14 >= a4)
          {
            v14 += [a3 count];
          }

          [v12 setIndex:v14];
        }
      }

      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  objc_sync_exit(mPlugs);
  [(MCContainerSerializer *)self didChangeValueForKey:@"orderedPlugs"];
}

- (void)removeAllPlugs
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(MCContainerSerializer *)self countOfPlugs]];

  [(MCContainerSerializer *)self removePlugsAtIndices:v3];
}

- (NSArray)orderedPlugs
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  mCachedOrderedPlugs = self->mCachedOrderedPlugs;
  if (!mCachedOrderedPlugs)
  {
    v5 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
    v6 = [[NSArray alloc] initWithObjects:{v5, 0}];
    self->mCachedOrderedPlugs = [-[NSMutableSet allObjects](self->mPlugs "allObjects")];

    mCachedOrderedPlugs = self->mCachedOrderedPlugs;
  }

  v7 = mCachedOrderedPlugs;
  objc_sync_exit(mPlugs);

  return v7;
}

- (double)timeInForPlug:(id)a3
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  if (!self->mCachedOrderedPlugs)
  {
    v6 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
    v7 = [[NSArray alloc] initWithObjects:{v6, 0}];
    self->mCachedOrderedPlugs = [-[NSMutableSet allObjects](self->mPlugs "allObjects")];
  }

  v8 = [a3 index];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  mCachedOrderedPlugs = self->mCachedOrderedPlugs;
  v10 = [(NSArray *)mCachedOrderedPlugs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    v12 = 0.0;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(mCachedOrderedPlugs);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      if ([v14 index] >= v8)
      {
        break;
      }

      [v14 fullDuration];
      v16 = v15;
      [v14 transitionDuration];
      v12 = v12 + v16 - v17;
      if (v10 == ++v13)
      {
        v10 = [(NSArray *)mCachedOrderedPlugs countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0.0;
  }

  objc_sync_exit(mPlugs);
  return v12;
}

@end