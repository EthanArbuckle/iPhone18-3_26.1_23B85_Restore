@interface MRTransitionManager
+ (void)initialize;
- (BOOL)canHandleKenBurnsForTransitionID:(id)d;
- (BOOL)needsSourceLayerImageForPrecomputingForTransitionID:(id)d;
- (BOOL)needsTargetLayerImageForPrecomputingForTransitionID:(id)d;
- (BOOL)noContentsMotionForTransitionID:(id)d;
- (MRTransitionManager)initWithPaths:(id)paths;
- (id)descriptionForTransitionID:(id)d;
- (id)resourcePathForTransitionID:(id)d andResource:(id)resource;
- (id)transitionWithTransitionID:(id)d;
- (void)cleanup;
- (void)dealloc;
- (void)recycleTransition:(id)transition;
- (void)releaseResources;
@end

@implementation MRTransitionManager

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MRTransitionManager;
  objc_msgSendSuper2(&v2, "initialize");
  if (!qword_1EF3B0)
  {
    qword_1EF3B0 = [[MRTransitionManager alloc] initWithPaths:0];
  }
}

- (MRTransitionManager)initWithPaths:(id)paths
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

- (id)transitionWithTransitionID:(id)d
{
  if (d)
  {
    objc_sync_enter(self);
    v5 = [(NSMutableDictionary *)self->mTransitionPools objectForKey:d];
    v6 = v5;
    if (v5 && [v5 count])
    {
      anyObject = [v6 anyObject];
      if (anyObject != +[NSNull null])
      {
        [v6 removeObject:anyObject];
LABEL_19:
        objc_sync_exit(self);
        return anyObject;
      }
    }

    else
    {
      v8 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{d), "objectForKey:", @"className"}];
      if (v8)
      {
        dCopy = v8;
      }

      else
      {
        dCopy = d;
      }

      v10 = NSClassFromString([@"MRTransition" stringByAppendingString:dCopy]);
      v11 = [NSBundle bundleForClass:v10];
      if (v11 == [NSBundle bundleForClass:objc_opt_class()])
      {
        if (v10)
        {
          anyObject = [[v10 alloc] initWithTransitionID:d];
          if (anyObject)
          {
            v12 = [(NSMutableDictionary *)self->mTransitionSets objectForKey:d];
            if (v12)
            {
              [v12 addObject:anyObject];
            }

            else
            {
              [(NSMutableDictionary *)self->mTransitionSets setObject:[NSMutableSet forKey:"setWithObject:" setWithObject:anyObject], d];
            }

            goto LABEL_19;
          }
        }
      }

      [(NSMutableDictionary *)self->mTransitionPools setObject:+[NSMutableSet setWithObject:](NSMutableSet forKey:"setWithObject:", +[NSNull null]), d];
    }

    anyObject = 0;
    goto LABEL_19;
  }

  return 0;
}

- (void)recycleTransition:(id)transition
{
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKey:](self->mTransitionPools, "objectForKey:", [transition transitionID]);
  if (v5)
  {
    [v5 addObject:transition];
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->mTransitionPools, "setObject:forKey:", +[NSMutableSet setWithObject:](NSMutableSet, "setWithObject:", transition), [transition transitionID]);
  }

  objc_sync_exit(self);
}

- (id)descriptionForTransitionID:(id)d
{
  v4 = +[MPTransitionManager sharedManager];

  return [v4 descriptionForTransitionID:d];
}

- (id)resourcePathForTransitionID:(id)d andResource:(id)resource
{
  v5 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{d), "objectForKey:", @"resourceFolderPath"}];
  if (!v5)
  {
    return resource;
  }

  return [v5 stringByAppendingPathComponent:resource];
}

- (BOOL)canHandleKenBurnsForTransitionID:(id)d
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{d), "objectForKey:", @"canHandleKenBurns"}];

  return [v3 BOOLValue];
}

- (BOOL)noContentsMotionForTransitionID:(id)d
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{d), "objectForKey:", @"noContentsMotion"}];

  return [v3 BOOLValue];
}

- (BOOL)needsSourceLayerImageForPrecomputingForTransitionID:(id)d
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{d), "objectForKey:", @"needsSourceLayerImage"}];

  return [v3 BOOLValue];
}

- (BOOL)needsTargetLayerImageForPrecomputingForTransitionID:(id)d
{
  v3 = [-[MRTransitionManager descriptionForTransitionID:](self descriptionForTransitionID:{d), "objectForKey:", @"needsTargetLayerImage"}];

  return [v3 BOOLValue];
}

@end