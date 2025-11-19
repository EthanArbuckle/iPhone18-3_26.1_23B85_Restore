@interface MCContainerParallelizer
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (CGColor)backgroundColor;
- (MCContainerParallelizer)init;
- (MCContainerParallelizer)initWithImprint:(id)a3 andMontage:(id)a4;
- (NSArray)zOrderedPlugs;
- (NSSet)plugs;
- (id)imprint;
- (id)plugForID:(id)a3;
- (id)setPlugForContainer:(id)a3 forID:(id)a4;
- (id)setPlugProxyForPlug:(id)a3;
- (unint64_t)countOfPlugs;
- (void)changeIDOfPlug:(id)a3 toID:(id)a4;
- (void)demolish;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllPlugs;
- (void)removePlug:(id)a3;
- (void)removePlugForID:(id)a3;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setBackgroundColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation MCContainerParallelizer

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"zOrderedPlugs"])
  {
    return [NSSet setWithObjects:@"plugs", 0];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MCContainerParallelizer;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", a3);
}

- (MCContainerParallelizer)init
{
  v4.receiver = self;
  v4.super_class = MCContainerParallelizer;
  v2 = [(MCContainer *)&v4 init];
  if (v2)
  {
    v2->mPlugs = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (MCContainerParallelizer)initWithImprint:(id)a3 andMontage:(id)a4
{
  v20.receiver = self;
  v20.super_class = MCContainerParallelizer;
  v6 = [MCContainer initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v7 = [a3 objectForKey:@"plugs"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MCObject objectWithImprint:*(*(&v16 + 1) + 8 * i) andMontage:a4];
          [(NSMutableDictionary *)v6->mPlugs setObject:v12 forKey:[(MCObject *)v12 idInSupercontainer]];
          [(MCObject *)v12 setSupercontainer:v6];
          if (![(MCObject *)v6 isSnapshot])
          {
            [(MCObject *)v12 addObserver:v6 forKeyPath:@"zIndex" options:0 context:0];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }

    v13 = [a3 objectForKey:@"backgroundColor"];
    if (v13)
    {
      components = CGRectFromString(v13);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v6->mBackgroundColor = CGColorCreate(DeviceRGB, &components.origin.x);
      CGColorSpaceRelease(DeviceRGB);
    }
  }

  return v6;
}

- (void)demolish
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->mPlugs objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (![(MCObject *)self isSnapshot])
        {
          [v8 removeObserver:self forKeyPath:@"zIndex"];
        }

        [v8 demolish];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  self->mPlugs = 0;
  self->mCachedZOrderedPlugs = 0;
  objc_sync_exit(mPlugs);
  mBackgroundColor = self->mBackgroundColor;
  if (mBackgroundColor)
  {
    CGColorRelease(mBackgroundColor);
    self->mBackgroundColor = 0;
  }

  v10.receiver = self;
  v10.super_class = MCContainerParallelizer;
  [(MCContainer *)&v10 demolish];
}

- (id)imprint
{
  v17.receiver = self;
  v17.super_class = MCContainerParallelizer;
  v3 = [(MCContainer *)&v17 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MCContainerParallelizer *)self plugs];
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v10), "imprint")}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [v3 setObject:v5 forKey:@"plugs"];
  mBackgroundColor = self->mBackgroundColor;
  if (mBackgroundColor)
  {
    v19 = *CGColorGetComponents(mBackgroundColor);
    [v3 setObject:NSStringFromCGRect(v19) forKey:@"backgroundColor"];
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"zIndex", a4, a5, a6}])
  {
    [(MCContainerParallelizer *)self willChangeValueForKey:@"zOrderedPlugs"];
    mPlugs = self->mPlugs;
    objc_sync_enter(mPlugs);

    self->mCachedZOrderedPlugs = 0;
    objc_sync_exit(mPlugs);

    [(MCContainerParallelizer *)self didChangeValueForKey:@"zOrderedPlugs"];
  }
}

- (CGColor)backgroundColor
{
  objc_sync_enter(self);
  v3 = CGColorRetain(self->mBackgroundColor);
  objc_sync_exit(self);

  return v3;
}

- (void)setBackgroundColor:(CGColor *)a3
{
  if (!CGColorEqualToColor(a3, self->mBackgroundColor))
  {
    objc_sync_enter(self);
    [(MCContainerParallelizer *)self willChangeValueForKey:@"backgroundColor"];
    CGColorRelease(self->mBackgroundColor);
    NumberOfComponents = CGColorGetNumberOfComponents(a3);
    if (NumberOfComponents == 2)
    {
      v6 = CGColorGetComponents(a3);
      components[0] = *v6;
      components[1] = components[0];
      components[2] = components[0];
      components[3] = v6[1];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      self->mBackgroundColor = CGColorCreate(DeviceRGB, components);
      CGColorSpaceRelease(DeviceRGB);
    }

    else if (NumberOfComponents == 4)
    {
      self->mBackgroundColor = CGColorRetain(a3);
    }

    else
    {
      NSLog(@"Background color is in an unsupported color space (not generic gray or RGB)\n");
      self->mBackgroundColor = 0;
    }

    [(MCContainerParallelizer *)self didChangeValueForKey:@"backgroundColor"];
    objc_sync_exit(self);
  }
}

- (void)setBackgroundColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  objc_sync_enter(self);
  [(MCContainerParallelizer *)self willChangeValueForKey:@"backgroundColor"];
  CGColorRelease(self->mBackgroundColor);
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  self->mBackgroundColor = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"backgroundColor"];
  objc_sync_exit(self);
}

- (NSSet)plugs
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  if ([(NSMutableDictionary *)self->mPlugs count])
  {
    v4 = [[NSSet alloc] initWithArray:{-[NSMutableDictionary allValues](self->mPlugs, "allValues")}];
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
  v4 = [(NSMutableDictionary *)self->mPlugs count];
  objc_sync_exit(mPlugs);
  return v4;
}

- (id)plugForID:(id)a3
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  v6 = [(NSMutableDictionary *)self->mPlugs objectForKey:a3];
  objc_sync_exit(mPlugs);

  return v6;
}

- (id)setPlugForContainer:(id)a3 forID:(id)a4
{
  [(MCContainerParallelizer *)self removePlugForID:a4];
  v7 = [(MCObject *)[MCPlugParallel alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v7 setSupercontainer:self];
  [v7 setContainer:a3];
  [v7 setIDInSupercontainer:a4];
  [v7 addObserver:self forKeyPath:@"zIndex" options:0 context:0];
  v8 = [[NSSet alloc] initWithObjects:{v7, 0}];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  [(NSMutableDictionary *)self->mPlugs setObject:v7 forKey:a4];
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];

  return v7;
}

- (id)setPlugProxyForPlug:(id)a3
{
  -[MCContainerParallelizer removePlugForID:](self, "removePlugForID:", [a3 idInSupercontainer]);
  v5 = [(MCObject *)[MCPlugProxy alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v5 setPlug:a3];
  [v5 addObserver:self forKeyPath:@"zIndex" options:0 context:0];
  v6 = [[NSSet alloc] initWithObjects:{v5, 0}];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v6];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  -[NSMutableDictionary setObject:forKey:](self->mPlugs, "setObject:forKey:", v5, [a3 idInSupercontainer]);
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v6];

  return v5;
}

- (void)changeIDOfPlug:(id)a3 toID:(id)a4
{
  v7 = [a3 idInSupercontainer];
  if (([a4 isEqualToString:v7] & 1) == 0)
  {
    mPlugs = self->mPlugs;
    objc_sync_enter(mPlugs);
    v9 = v7;
    [(NSMutableDictionary *)self->mPlugs setObject:a3 forKey:a4];
    [(NSMutableDictionary *)self->mPlugs removeObjectForKey:v7];

    [a3 setIDInSupercontainer:a4];

    objc_sync_exit(mPlugs);
  }
}

- (void)removePlug:(id)a3
{
  [a3 removeObserver:self forKeyPath:@"zIndex"];
  v6 = [[NSSet alloc] initWithObjects:{a3, 0}];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:?];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  -[NSMutableDictionary removeObjectForKey:](self->mPlugs, "removeObjectForKey:", [a3 idInSupercontainer]);
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v6];
  [a3 setContainer:0];
  [a3 setSupercontainer:0];
}

- (void)removePlugForID:(id)a3
{
  v4 = [(MCContainerParallelizer *)self plugForID:a3];
  if (v4)
  {

    [(MCContainerParallelizer *)self removePlug:v4];
  }
}

- (void)removeAllPlugs
{
  v3 = [(MCContainerParallelizer *)self plugs];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v3];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSMutableDictionary *)self->mPlugs objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * i) removeObserver:self forKeyPath:@"zIndex"];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->mPlugs removeAllObjects];
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v13 + 1) + 8 * j);
        [v12 setContainer:0];
        [v12 setSupercontainer:0];
      }

      v9 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }
}

- (NSArray)zOrderedPlugs
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  mCachedZOrderedPlugs = self->mCachedZOrderedPlugs;
  if (!mCachedZOrderedPlugs)
  {
    v5 = [[NSSortDescriptor alloc] initWithKey:@"zIndex" ascending:1];
    v6 = [[NSArray alloc] initWithObjects:{v5, 0}];
    self->mCachedZOrderedPlugs = [-[NSMutableDictionary allValues](self->mPlugs "allValues")];

    mCachedZOrderedPlugs = self->mCachedZOrderedPlugs;
  }

  v7 = mCachedZOrderedPlugs;
  objc_sync_exit(mPlugs);

  return v7;
}

@end