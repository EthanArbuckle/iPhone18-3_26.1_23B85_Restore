@interface MRFrameManager
+ (void)initialize;
- (MRFrameManager)init;
- (id)frameWithFrameID:(id)a3;
- (id)resourcePathForFrameID:(id)a3 andResource:(id)a4;
- (id)sizeScriptForFrameID:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)recycleFrame:(id)a3;
- (void)releaseResources;
@end

@implementation MRFrameManager

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___MRFrameManager;
  objc_msgSendSuper2(&v2, "initialize");
  if (!qword_1EF3C8)
  {
    qword_1EF3C8 = objc_alloc_init(MRFrameManager);
  }
}

- (MRFrameManager)init
{
  v4.receiver = self;
  v4.super_class = MRFrameManager;
  v2 = [(MRFrameManager *)&v4 init];
  if (v2)
  {
    v2->mFrameSets = objc_alloc_init(NSMutableDictionary);
    v2->mFramePools = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  [(MRFrameManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRFrameManager;
  [(MRFrameManager *)&v3 dealloc];
}

- (void)cleanup
{
  [(MRFrameManager *)self releaseResources];

  self->mFrameSets = 0;
  self->mFramePools = 0;
}

- (void)releaseResources
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->mFrameSets;
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
        v8 = [(NSMutableDictionary *)self->mFrameSets objectForKey:v7];
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
              if ([v13 isRetainedBySlideProvider])
              {
                NSLog(@"[MRFrameManager releaseResources] called while resources still in use. May leak.");
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

  [(NSMutableDictionary *)self->mFrameSets removeAllObjects];
  [(NSMutableDictionary *)self->mFramePools removeAllObjects];
}

- (id)frameWithFrameID:(id)a3
{
  if (a3)
  {
    objc_sync_enter(self);
    v5 = [(NSMutableDictionary *)self->mFramePools objectForKey:a3];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 anyObject];
      if (v7 != +[NSNull null])
      {
        [v6 removeObject:v7];
LABEL_21:
        objc_sync_exit(self);
        return v7;
      }
    }

    else
    {
      v8 = [objc_msgSend(+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = a3;
      }

      v10 = NSClassFromString([@"MRFrame" stringByAppendingString:v9]);
      v11 = [NSBundle bundleForClass:v10];
      if (v11 == [NSBundle bundleForClass:objc_opt_class()]&& v10 != 0)
      {
        v7 = [[v10 alloc] initWithFrameID:a3];
        if (v7)
        {
          v13 = [(NSMutableDictionary *)self->mFrameSets objectForKey:a3];
          if (v13)
          {
            [v13 addObject:v7];
          }

          else
          {
            [(NSMutableDictionary *)self->mFrameSets setObject:[NSMutableSet forKey:"setWithObject:" setWithObject:v7], a3];
          }

          goto LABEL_21;
        }
      }

      [(NSMutableDictionary *)self->mFramePools setObject:+[NSMutableSet setWithObject:](NSMutableSet forKey:"setWithObject:", +[NSNull null]), a3];
    }

    v7 = 0;
    goto LABEL_21;
  }

  return 0;
}

- (void)recycleFrame:(id)a3
{
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKey:](self->mFramePools, "objectForKey:", [a3 frameID]);
  if (v5)
  {
    [v5 addObject:a3];
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->mFramePools, "setObject:forKey:", +[NSMutableSet setWithObject:](NSMutableSet, "setWithObject:", a3), [a3 frameID]);
  }

  objc_sync_exit(self);
}

- (id)resourcePathForFrameID:(id)a3 andResource:(id)a4
{
  v5 = [objc_msgSend(+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
  if (!v5)
  {
    return a4;
  }

  return [v5 stringByAppendingPathComponent:a4];
}

- (id)sizeScriptForFrameID:(id)a3
{
  v3 = [+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];

  return [v3 objectForKey:@"sizeScript"];
}

@end