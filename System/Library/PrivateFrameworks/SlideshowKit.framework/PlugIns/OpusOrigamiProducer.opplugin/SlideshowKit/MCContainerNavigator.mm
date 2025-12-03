@interface MCContainerNavigator
- (MCContainerNavigator)init;
- (MCContainerNavigator)initWithImprint:(id)imprint andMontage:(id)montage;
- (NSSet)plugs;
- (id)imprint;
- (id)plugForID:(id)d;
- (id)setPlugForContainer:(id)container forID:(id)d;
- (unint64_t)countOfPlugs;
- (void)changeIDOfPlug:(id)plug toID:(id)d;
- (void)demolish;
- (void)removeAllPlugs;
- (void)removePlug:(id)plug;
- (void)removePlugForID:(id)d;
- (void)setStartPlugID:(id)d;
@end

@implementation MCContainerNavigator

- (MCContainerNavigator)init
{
  v4.receiver = self;
  v4.super_class = MCContainerNavigator;
  v2 = [(MCContainer *)&v4 init];
  if (v2)
  {
    v2->mPlugs = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (MCContainerNavigator)initWithImprint:(id)imprint andMontage:(id)montage
{
  v20.receiver = self;
  v20.super_class = MCContainerNavigator;
  v6 = [MCContainer initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    imprintCopy = imprint;
    v7 = [imprint objectForKey:@"plugs"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MCObject objectWithImprint:*(*(&v16 + 1) + 8 * v11) andMontage:montage];
          [(NSMutableDictionary *)v6->mPlugs setObject:v12 forKey:[(MCObject *)v12 idInSupercontainer]];
          [(MCObject *)v12 setSupercontainer:v6];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [imprintCopy objectForKey:@"startPlugID"];
    v6->mStartPlugID = v13;
    v6->mStartPlug = [(NSMutableDictionary *)v6->mPlugs objectForKey:v13];
  }

  return v6;
}

- (void)demolish
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mStartPlugID = 0;
  self->mStartPlug = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->mPlugs objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * i) demolish];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->mPlugs = 0;
  objc_sync_exit(mPlugs);
  v8.receiver = self;
  v8.super_class = MCContainerNavigator;
  [(MCContainer *)&v8 demolish];
}

- (id)imprint
{
  v17.receiver = self;
  v17.super_class = MCContainerNavigator;
  imprint = [(MCContainer *)&v17 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  plugs = [(MCContainerNavigator *)self plugs];
  v7 = [(NSSet *)plugs countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(plugs);
        }

        [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "imprint")}];
      }

      v8 = [(NSSet *)plugs countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [imprint setObject:v5 forKey:@"plugs"];
  mStartPlugID = self->mStartPlugID;
  if (mStartPlugID)
  {
    [imprint setObject:mStartPlugID forKey:@"startPlugID"];
  }

  objc_autoreleasePoolPop(v4);
  return imprint;
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
  [(MCContainerNavigator *)self removePlugForID:d];
  v7 = [(MCObject *)[MCPlugHaven alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v7 setSupercontainer:self];
  [v7 setContainer:container];
  [v7 setIDInSupercontainer:d];
  v8 = [[NSSet alloc] initWithObjects:{v7, 0}];
  [(MCContainerNavigator *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  [(NSMutableDictionary *)self->mPlugs setObject:v7 forKey:d];
  if (!self->mStartPlugID)
  {
    dCopy = d;
    self->mStartPlugID = dCopy;
    self->mStartPlug = [(NSMutableDictionary *)self->mPlugs objectForKey:dCopy];
  }

  objc_sync_exit(mPlugs);
  [(MCContainerNavigator *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];

  return v7;
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
  v6 = [[NSSet alloc] initWithObjects:{plug, 0}];
  [(MCContainerNavigator *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:?];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  if ([objc_msgSend(plug "idInSupercontainer")])
  {

    self->mStartPlugID = 0;
    self->mStartPlug = 0;
  }

  -[NSMutableDictionary removeObjectForKey:](self->mPlugs, "removeObjectForKey:", [plug idInSupercontainer]);
  objc_sync_exit(mPlugs);
  [(MCContainerNavigator *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v6];
  [plug setContainer:0];
  [plug setSupercontainer:0];
}

- (void)removePlugForID:(id)d
{
  v4 = [(MCContainerNavigator *)self plugForID:d];
  if (v4)
  {

    [(MCContainerNavigator *)self removePlug:v4];
  }
}

- (void)removeAllPlugs
{
  plugs = [(MCContainerNavigator *)self plugs];
  [(MCContainerNavigator *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:plugs];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mStartPlugID = 0;
  self->mStartPlug = 0;
  [(NSMutableDictionary *)self->mPlugs removeAllObjects];
  objc_sync_exit(mPlugs);
  [(MCContainerNavigator *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:plugs];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [(NSSet *)plugs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(plugs);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setContainer:0];
        [v8 setSupercontainer:0];
      }

      v5 = [(NSSet *)plugs countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setStartPlugID:(id)d
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  mStartPlugID = self->mStartPlugID;
  if (d)
  {
    if (mStartPlugID)
    {
    }

    dCopy = d;
    self->mStartPlugID = dCopy;
    v8 = [(NSMutableDictionary *)self->mPlugs objectForKey:dCopy];
  }

  else if (mStartPlugID)
  {

    v8 = 0;
    self->mStartPlugID = 0;
  }

  else
  {
    v8 = 0;
  }

  self->mStartPlug = v8;

  objc_sync_exit(mPlugs);
}

@end