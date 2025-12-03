@interface MCContainerParallelizer
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (CGColor)backgroundColor;
- (MCContainerParallelizer)init;
- (MCContainerParallelizer)initWithImprint:(id)imprint andMontage:(id)montage;
- (NSArray)zOrderedPlugs;
- (NSSet)plugs;
- (id)imprint;
- (id)plugForID:(id)d;
- (id)setPlugForContainer:(id)container forID:(id)d;
- (id)setPlugProxyForPlug:(id)plug;
- (unint64_t)countOfPlugs;
- (void)changeIDOfPlug:(id)plug toID:(id)d;
- (void)demolish;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllPlugs;
- (void)removePlug:(id)plug;
- (void)removePlugForID:(id)d;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setBackgroundColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation MCContainerParallelizer

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"zOrderedPlugs"])
  {
    return [NSSet setWithObjects:@"plugs", 0];
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MCContainerParallelizer;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", key);
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

- (MCContainerParallelizer)initWithImprint:(id)imprint andMontage:(id)montage
{
  v20.receiver = self;
  v20.super_class = MCContainerParallelizer;
  v6 = [MCContainer initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v7 = [imprint objectForKey:@"plugs"];
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

          v12 = [MCObject objectWithImprint:*(*(&v16 + 1) + 8 * i) andMontage:montage];
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

    v13 = [imprint objectForKey:@"backgroundColor"];
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
  objectEnumerator = [(NSMutableDictionary *)self->mPlugs objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (![(MCObject *)self isSnapshot])
        {
          [v8 removeObserver:self forKeyPath:@"zIndex"];
        }

        [v8 demolish];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  imprint = [(MCContainer *)&v17 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  plugs = [(MCContainerParallelizer *)self plugs];
  v7 = [(NSSet *)plugs countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(plugs);
        }

        [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v10), "imprint")}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSSet *)plugs countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [imprint setObject:v5 forKey:@"plugs"];
  mBackgroundColor = self->mBackgroundColor;
  if (mBackgroundColor)
  {
    v19 = *CGColorGetComponents(mBackgroundColor);
    [imprint setObject:NSStringFromCGRect(v19) forKey:@"backgroundColor"];
  }

  objc_autoreleasePoolPop(v4);
  return imprint;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"zIndex", object, change, context}])
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

- (void)setBackgroundColor:(CGColor *)color
{
  if (!CGColorEqualToColor(color, self->mBackgroundColor))
  {
    objc_sync_enter(self);
    [(MCContainerParallelizer *)self willChangeValueForKey:@"backgroundColor"];
    CGColorRelease(self->mBackgroundColor);
    NumberOfComponents = CGColorGetNumberOfComponents(color);
    if (NumberOfComponents == 2)
    {
      v6 = CGColorGetComponents(color);
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
      self->mBackgroundColor = CGColorRetain(color);
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

- (void)setBackgroundColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  objc_sync_enter(self);
  [(MCContainerParallelizer *)self willChangeValueForKey:@"backgroundColor"];
  CGColorRelease(self->mBackgroundColor);
  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
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

- (id)plugForID:(id)d
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  v6 = [(NSMutableDictionary *)self->mPlugs objectForKey:d];
  objc_sync_exit(mPlugs);

  return v6;
}

- (id)setPlugForContainer:(id)container forID:(id)d
{
  [(MCContainerParallelizer *)self removePlugForID:d];
  v7 = [(MCObject *)[MCPlugParallel alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v7 setSupercontainer:self];
  [v7 setContainer:container];
  [v7 setIDInSupercontainer:d];
  [v7 addObserver:self forKeyPath:@"zIndex" options:0 context:0];
  v8 = [[NSSet alloc] initWithObjects:{v7, 0}];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  [(NSMutableDictionary *)self->mPlugs setObject:v7 forKey:d];
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];

  return v7;
}

- (id)setPlugProxyForPlug:(id)plug
{
  -[MCContainerParallelizer removePlugForID:](self, "removePlugForID:", [plug idInSupercontainer]);
  v5 = [(MCObject *)[MCPlugProxy alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v5 setPlug:plug];
  [v5 addObserver:self forKeyPath:@"zIndex" options:0 context:0];
  v6 = [[NSSet alloc] initWithObjects:{v5, 0}];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v6];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  -[NSMutableDictionary setObject:forKey:](self->mPlugs, "setObject:forKey:", v5, [plug idInSupercontainer]);
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v6];

  return v5;
}

- (void)changeIDOfPlug:(id)plug toID:(id)d
{
  idInSupercontainer = [plug idInSupercontainer];
  if (([d isEqualToString:idInSupercontainer] & 1) == 0)
  {
    mPlugs = self->mPlugs;
    objc_sync_enter(mPlugs);
    v9 = idInSupercontainer;
    [(NSMutableDictionary *)self->mPlugs setObject:plug forKey:d];
    [(NSMutableDictionary *)self->mPlugs removeObjectForKey:idInSupercontainer];

    [plug setIDInSupercontainer:d];

    objc_sync_exit(mPlugs);
  }
}

- (void)removePlug:(id)plug
{
  [plug removeObserver:self forKeyPath:@"zIndex"];
  v6 = [[NSSet alloc] initWithObjects:{plug, 0}];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:?];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  -[NSMutableDictionary removeObjectForKey:](self->mPlugs, "removeObjectForKey:", [plug idInSupercontainer]);
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v6];
  [plug setContainer:0];
  [plug setSupercontainer:0];
}

- (void)removePlugForID:(id)d
{
  v4 = [(MCContainerParallelizer *)self plugForID:d];
  if (v4)
  {

    [(MCContainerParallelizer *)self removePlug:v4];
  }
}

- (void)removeAllPlugs
{
  plugs = [(MCContainerParallelizer *)self plugs];
  [(MCContainerParallelizer *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:plugs];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mCachedZOrderedPlugs = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->mPlugs objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v17 + 1) + 8 * i) removeObserver:self forKeyPath:@"zIndex"];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->mPlugs removeAllObjects];
  objc_sync_exit(mPlugs);
  [(MCContainerParallelizer *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:plugs];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [(NSSet *)plugs countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(plugs);
        }

        v12 = *(*(&v13 + 1) + 8 * j);
        [v12 setContainer:0];
        [v12 setSupercontainer:0];
      }

      v9 = [(NSSet *)plugs countByEnumeratingWithState:&v13 objects:v21 count:16];
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