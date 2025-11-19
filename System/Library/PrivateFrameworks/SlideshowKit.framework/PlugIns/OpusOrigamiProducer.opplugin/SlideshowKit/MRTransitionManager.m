@interface MRTransitionManager
+ (void)initialize;
- (BOOL)canHandleKenBurnsForTransitionID:(id)a3;
- (BOOL)needsSourceLayerImageForPrecomputingForTransitionID:(id)a3;
- (BOOL)needsTargetLayerImageForPrecomputingForTransitionID:(id)a3;
- (BOOL)noContentsMotionForTransitionID:(id)a3;
- (MRTransitionManager)initWithPaths:(id)a3;
- (id)descriptionForTransitionID:(id)a3;
- (id)resourcePathForTransitionID:(id)a3 andResource:(id)a4;
- (id)transitionWithTransitionID:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)recycleTransition:(id)a3;
- (void)releaseResources;
@end

@implementation MRTransitionManager

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___MRTransitionManager;
  objc_msgSendSuper2(&v2, "initialize");
  if (!qword_1EF3B0)
  {
    qword_1EF3B0 = [[MRTransitionManager alloc] initWithPaths:0];
  }
}

- (MRTransitionManager)initWithPaths:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRTransitionManager;
  v3 = [(MRTransitionManager *)&v5 init];
  if (v3)
  {
    v3->mTransitionSets = objc_alloc_init(NSMutableDictionary);
    v3->mTransitionPools = objc_alloc_init(NSMutableDictionary);
  }

  return v3;
}

- (void)dealloc
{
  [(MRTransitionManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRTransitionManager;
  [(MRTransitionManager *)&v3 dealloc];
}

- (void)cleanup
{
  [(MRTransitionManager *)self releaseResources];

  self->mTransitionSets = 0;
  self->mTransitionPools = 0;
}

- (void)releaseResources
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->mTransitionSets;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [(NSMutableDictionary *)self->mTransitionSets objectForKey:v7];
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * j);
              if ([v13 isRetainedByTransitioner])
              {
                NSLog(@"[MRTransitionManager releaseResources] called while resources still in use. May leak.");
              }

              else
              {
                [v13 cleanup];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->mTransitionSets removeAllObjects];
  [(NSMutableDictionary *)self->mTransitionPools removeAllObjects];
}

- (id)transitionWithTransitionID:(id)a3
{
  if (a3)
  {
    objc_sync_enter(self);
    v5 = [(NSMutableDictionary *)self->mTransitionPools objectForKey:a3];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 anyObject];
      if (v7 != +[NSNull null])
      {
        [v6 removeObject:v7];
LABEL_19:
        objc_sync_exit(self);
        return v7;
      }
    }

    else
    {
      v8 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{a3), "objectForKey:", @"className"}];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = a3;
      }

      v10 = NSClassFromString([@"MRTransition" stringByAppendingString:v9]);
      v11 = [NSBundle bundleForClass:v10];
      if (v11 == [NSBundle bundleForClass:objc_opt_class()])
      {
        if (v10)
        {
          v7 = [[v10 alloc] initWithTransitionID:a3];
          if (v7)
          {
            v12 = [(NSMutableDictionary *)self->mTransitionSets objectForKey:a3];
            if (v12)
            {
              [v12 addObject:v7];
            }

            else
            {
              [(NSMutableDictionary *)self->mTransitionSets setObject:[NSMutableSet forKey:"setWithObject:" setWithObject:v7], a3];
            }

            goto LABEL_19;
          }
        }
      }

      [(NSMutableDictionary *)self->mTransitionPools setObject:+[NSMutableSet setWithObject:](NSMutableSet forKey:"setWithObject:", +[NSNull null]), a3];
    }

    v7 = 0;
    goto LABEL_19;
  }

  return 0;
}

- (void)recycleTransition:(id)a3
{
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKey:](self->mTransitionPools, "objectForKey:", [a3 transitionID]);
  if (v5)
  {
    [v5 addObject:a3];
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->mTransitionPools, "setObject:forKey:", +[NSMutableSet setWithObject:](NSMutableSet, "setWithObject:", a3), [a3 transitionID]);
  }

  objc_sync_exit(self);
}

- (id)descriptionForTransitionID:(id)a3
{
  v4 = +[MPTransitionManager sharedManager];

  return [v4 descriptionForTransitionID:a3];
}

- (id)resourcePathForTransitionID:(id)a3 andResource:(id)a4
{
  v5 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{a3), "objectForKey:", @"resourceFolderPath"}];
  if (!v5)
  {
    return a4;
  }

  return [v5 stringByAppendingPathComponent:a4];
}

- (BOOL)canHandleKenBurnsForTransitionID:(id)a3
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{a3), "objectForKey:", @"canHandleKenBurns"}];

  return [v3 BOOLValue];
}

- (BOOL)noContentsMotionForTransitionID:(id)a3
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{a3), "objectForKey:", @"noContentsMotion"}];

  return [v3 BOOLValue];
}

- (BOOL)needsSourceLayerImageForPrecomputingForTransitionID:(id)a3
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{a3), "objectForKey:", @"needsSourceLayerImage"}];

  return [v3 BOOLValue];
}

- (BOOL)needsTargetLayerImageForPrecomputingForTransitionID:(id)a3
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{a3), "objectForKey:", @"needsTargetLayerImage"}];

  return [v3 BOOLValue];
}

@end