@interface MCContainerNavigator
- (MCContainerNavigator)init;
- (MCContainerNavigator)initWithImprint:(id)a3 andMontage:(id)a4;
- (NSSet)plugs;
- (id)imprint;
- (id)plugForID:(id)a3;
- (id)setPlugForContainer:(id)a3 forID:(id)a4;
- (unint64_t)countOfPlugs;
- (void)changeIDOfPlug:(id)a3 toID:(id)a4;
- (void)demolish;
- (void)removeAllPlugs;
- (void)removePlug:(id)a3;
- (void)removePlugForID:(id)a3;
- (void)setStartPlugID:(id)a3;
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

- (MCContainerNavigator)initWithImprint:(id)a3 andMontage:(id)a4
{
  v20.receiver = self;
  v20.super_class = MCContainerNavigator;
  v6 = [MCContainer initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v15 = a3;
    v7 = [a3 objectForKey:@"plugs"];
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

          v12 = [MCObject objectWithImprint:*(*(&v16 + 1) + 8 * v11) andMontage:a4];
          [(NSMutableDictionary *)v6->mPlugs setObject:v12 forKey:[(MCObject *)v12 idInSupercontainer]];
          [(MCObject *)v12 setSupercontainer:v6];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v15 objectForKey:@"startPlugID"];
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
  v4 = [(NSMutableDictionary *)self->mPlugs objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) demolish];
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(MCContainer *)&v17 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MCContainerNavigator *)self plugs];
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "imprint")}];
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [v3 setObject:v5 forKey:@"plugs"];
  mStartPlugID = self->mStartPlugID;
  if (mStartPlugID)
  {
    [v3 setObject:mStartPlugID forKey:@"startPlugID"];
  }

  objc_autoreleasePoolPop(v4);
  return v3;
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
  [(MCContainerNavigator *)self removePlugForID:a4];
  v7 = [(MCObject *)[MCPlugHaven alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v7 setSupercontainer:self];
  [v7 setContainer:a3];
  [v7 setIDInSupercontainer:a4];
  v8 = [[NSSet alloc] initWithObjects:{v7, 0}];
  [(MCContainerNavigator *)self willChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  [(NSMutableDictionary *)self->mPlugs setObject:v7 forKey:a4];
  if (!self->mStartPlugID)
  {
    v10 = a4;
    self->mStartPlugID = v10;
    self->mStartPlug = [(NSMutableDictionary *)self->mPlugs objectForKey:v10];
  }

  objc_sync_exit(mPlugs);
  [(MCContainerNavigator *)self didChangeValueForKey:@"plugs" withSetMutation:1 usingObjects:v8];

  return v7;
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
  v6 = [[NSSet alloc] initWithObjects:{a3, 0}];
  [(MCContainerNavigator *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:?];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  if ([objc_msgSend(a3 "idInSupercontainer")])
  {

    self->mStartPlugID = 0;
    self->mStartPlug = 0;
  }

  -[NSMutableDictionary removeObjectForKey:](self->mPlugs, "removeObjectForKey:", [a3 idInSupercontainer]);
  objc_sync_exit(mPlugs);
  [(MCContainerNavigator *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v6];
  [a3 setContainer:0];
  [a3 setSupercontainer:0];
}

- (void)removePlugForID:(id)a3
{
  v4 = [(MCContainerNavigator *)self plugForID:a3];
  if (v4)
  {

    [(MCContainerNavigator *)self removePlug:v4];
  }
}

- (void)removeAllPlugs
{
  v3 = [(MCContainerNavigator *)self plugs];
  [(MCContainerNavigator *)self willChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v3];
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);

  self->mStartPlugID = 0;
  self->mStartPlug = 0;
  [(NSMutableDictionary *)self->mPlugs removeAllObjects];
  objc_sync_exit(mPlugs);
  [(MCContainerNavigator *)self didChangeValueForKey:@"plugs" withSetMutation:2 usingObjects:v3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setContainer:0];
        [v8 setSupercontainer:0];
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setStartPlugID:(id)a3
{
  mPlugs = self->mPlugs;
  objc_sync_enter(mPlugs);
  mStartPlugID = self->mStartPlugID;
  if (a3)
  {
    if (mStartPlugID)
    {
    }

    v7 = a3;
    self->mStartPlugID = v7;
    v8 = [(NSMutableDictionary *)self->mPlugs objectForKey:v7];
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