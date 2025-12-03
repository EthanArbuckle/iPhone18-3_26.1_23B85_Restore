@interface MCAnimationPathCombo
- (MCAnimationPathCombo)initWithImprint:(id)imprint;
- (NSSet)animationPaths;
- (id)animationPathForKey:(id)key;
- (id)imprint;
- (id)imprintsForAnimationPaths;
- (unint64_t)countOfAnimationPaths;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)addAnimationPath:(id)path;
- (void)demolish;
- (void)demolishAnimationPaths;
- (void)initAnimationPathsWithImprints:(id)imprints;
- (void)removeAllAnimationPaths;
- (void)removeAnimationPathForKey:(id)key;
@end

@implementation MCAnimationPathCombo

- (MCAnimationPathCombo)initWithImprint:(id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationPathCombo;
  v4 = [(MCAnimationPath *)&v7 initWithImprint:?];
  if (v4)
  {
    v5 = [imprint objectForKey:@"animationPaths"];
    if (v5)
    {
      [(MCAnimationPathCombo *)v4 initAnimationPathsWithImprints:v5];
    }

    v4->mCombineOperation = [imprint objectForKey:@"combineOperation"];
  }

  return v4;
}

- (void)demolish
{
  [(MCAnimationPathCombo *)self demolishAnimationPaths];

  self->mAnimationPaths = 0;
  self->mCombineOperation = 0;
  v3.receiver = self;
  v3.super_class = MCAnimationPathCombo;
  [(MCAnimationPath *)&v3 demolish];
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCAnimationPathCombo;
  imprint = [(MCAnimationPath *)&v6 imprint];
  if ([(NSMutableSet *)self->mAnimationPaths count])
  {
    [imprint setObject:-[MCAnimationPathCombo imprintsForAnimationPaths](self forKey:{"imprintsForAnimationPaths"), @"animationPaths"}];
  }

  mCombineOperation = self->mCombineOperation;
  if (mCombineOperation)
  {
    [imprint setObject:mCombineOperation forKey:@"combineOperation"];
  }

  return imprint;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v15.receiver = self;
  v15.super_class = MCAnimationPathCombo;
  [(MCAnimationPath *)&v15 _copySelfToSnapshot:?];
  if (self->mAnimationPaths)
  {
    animationPaths = [(MCAnimationPathCombo *)self animationPaths];
    if ([(NSSet *)animationPaths count])
    {
      *(snapshot + 3) = [[NSMutableSet alloc] initWithCapacity:{-[NSSet count](animationPaths, "count")}];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [(NSSet *)animationPaths countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(animationPaths);
            }

            [*(snapshot + 3) addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "snapshot")}];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [(NSSet *)animationPaths countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v7);
      }
    }
  }

  mCombineOperation = self->mCombineOperation;
  if (mCombineOperation)
  {
    *(snapshot + 4) = [(NSString *)mCombineOperation copy];
  }
}

- (void)initAnimationPathsWithImprints:(id)imprints
{
  if (imprints)
  {
    if ([imprints count])
    {
      self->mAnimationPaths = objc_alloc_init(NSMutableSet);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [imprints countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(imprints);
            }

            v9 = [MCObjectLight objectWithImprint:*(*(&v12 + 1) + 8 * v8)];
            [(NSMutableSet *)self->mAnimationPaths addObject:v9];
            if (![(MCAnimationPath *)self isSnapshot])
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v11 = @"keyframes";
              if ((isKindOfClass & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_13;
                }

                [v9 addObserver:self forKeyPath:@"combineOperation" options:0 context:0];
                v11 = @"animationPaths";
              }

              [v9 addObserver:self forKeyPath:v11 options:0 context:0];
            }

LABEL_13:
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [imprints countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)demolishAnimationPaths
{
  mAnimationPaths = self->mAnimationPaths;
  if (mAnimationPaths)
  {
    obj = mAnimationPaths;
    objc_sync_enter(mAnimationPaths);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->mAnimationPaths;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = *v14;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![(MCAnimationPath *)self isSnapshot])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v10 = @"keyframes";
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_12;
            }

            [v8 removeObserver:self forKeyPath:@"combineOperation"];
            v10 = @"animationPaths";
          }

          [v8 removeObserver:self forKeyPath:v10];
        }

LABEL_12:
        [v8 demolish];
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v5)
      {
LABEL_14:
        objc_sync_enter(self);
        v11 = self->mAnimationPaths;
        self->mAnimationPaths = 0;
        objc_sync_exit(self);
        objc_sync_exit(obj);
        return;
      }
    }
  }
}

- (id)imprintsForAnimationPaths
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  animationPaths = [(MCAnimationPathCombo *)self animationPaths];
  v5 = [(NSSet *)animationPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(animationPaths);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "imprint")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSSet *)animationPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)animationPaths
{
  v3 = sEmptySet;
  isSnapshot = [(MCAnimationPath *)self isSnapshot];
  mAnimationPaths = self->mAnimationPaths;
  if ((isSnapshot & 1) == 0)
  {
    if (mAnimationPaths)
    {
      objc_sync_enter(self->mAnimationPaths);
      if ([(NSMutableSet *)self->mAnimationPaths count])
      {
        v3 = [[NSSet alloc] initWithSet:self->mAnimationPaths];
      }

      objc_sync_exit(mAnimationPaths);
    }

    return v3;
  }

  return &mAnimationPaths->super;
}

- (unint64_t)countOfAnimationPaths
{
  isSnapshot = [(MCAnimationPath *)self isSnapshot];
  mAnimationPaths = self->mAnimationPaths;
  if (isSnapshot)
  {
    v5 = self->mAnimationPaths;

    return [(NSMutableSet *)v5 count];
  }

  else
  {
    if (!mAnimationPaths)
    {
      return 0;
    }

    objc_sync_enter(self->mAnimationPaths);
    v7 = [(NSMutableSet *)self->mAnimationPaths count];
    objc_sync_exit(mAnimationPaths);
    return v7;
  }
}

- (id)animationPathForKey:(id)key
{
  if ([(MCAnimationPath *)self isSnapshot])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    mAnimationPaths = self->mAnimationPaths;
    v6 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = *v22;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(mAnimationPaths);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "key")])
        {
          return v9;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v21 objects:v26 count:16];
          v9 = 0;
          if (v6)
          {
            goto LABEL_4;
          }

          return v9;
        }
      }
    }

    return 0;
  }

  v10 = self->mAnimationPaths;
  if (!v10)
  {
    return 0;
  }

  objc_sync_enter(self->mAnimationPaths);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->mAnimationPaths;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v9 "key")])
        {
          if (v9)
          {
            v15 = v9;
          }

          goto LABEL_24;
        }
      }

      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_24:
  objc_sync_exit(v10);
  return v9;
}

- (void)addAnimationPath:(id)path
{
  -[MCAnimationPathCombo removeAnimationPathForKey:](self, "removeAnimationPathForKey:", [path key]);
  if (!self->mAnimationPaths)
  {
    objc_sync_enter(self);
    self->mAnimationPaths = objc_alloc_init(NSMutableSet);
    objc_sync_exit(self);
  }

  v7 = [[NSSet alloc] initWithObjects:{path, 0}];
  [(MCAnimationPathCombo *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:?];
  mAnimationPaths = self->mAnimationPaths;
  objc_sync_enter(mAnimationPaths);
  [(NSMutableSet *)self->mAnimationPaths addObject:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"keyframes";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    [path addObserver:self forKeyPath:@"combineOperation" options:0 context:0];
    v6 = @"animationPaths";
  }

  [path addObserver:self forKeyPath:v6 options:0 context:0];
LABEL_8:
  objc_sync_exit(mAnimationPaths);
  [(MCAnimationPathCombo *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v7];
}

- (void)removeAnimationPathForKey:(id)key
{
  mAnimationPaths = self->mAnimationPaths;
  if (!mAnimationPaths)
  {
    return;
  }

  objc_sync_enter(self->mAnimationPaths);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->mAnimationPaths;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = *v15;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v14 + 1) + 8 * i);
      if ([objc_msgSend(v10 "key")])
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = @"keyframes";
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_18:
            v13 = [[NSSet alloc] initWithObjects:{v10, 0}];
            [(MCAnimationPathCombo *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v13];
            [(NSMutableSet *)self->mAnimationPaths removeObject:v10];
            objc_sync_exit(mAnimationPaths);
            [(MCAnimationPathCombo *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v13];

            return;
          }

          [v10 removeObserver:self forKeyPath:@"combineOperation"];
          v12 = @"animationPaths";
        }

        [v10 removeObserver:self forKeyPath:v12];
        goto LABEL_18;
      }
    }

    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_14:
  objc_sync_exit(mAnimationPaths);
}

- (void)removeAllAnimationPaths
{
  if ([(NSMutableSet *)self->mAnimationPaths count])
  {
    obj = self->mAnimationPaths;
    objc_sync_enter(obj);
    v3 = [[NSSet alloc] initWithArray:{-[NSMutableSet allObjects](self->mAnimationPaths, "allObjects")}];
    [(MCAnimationPathCombo *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v3];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    mAnimationPaths = self->mAnimationPaths;
    v5 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *v13;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(mAnimationPaths);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = @"keyframes";
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          [v8 removeObserver:self forKeyPath:@"combineOperation"];
          v10 = @"animationPaths";
        }

        [v8 removeObserver:self forKeyPath:v10];
      }

      v5 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v5)
      {
LABEL_13:
        [(NSMutableSet *)self->mAnimationPaths removeAllObjects];
        objc_sync_exit(obj);
        [(MCAnimationPathCombo *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v3];

        return;
      }
    }
  }
}

@end