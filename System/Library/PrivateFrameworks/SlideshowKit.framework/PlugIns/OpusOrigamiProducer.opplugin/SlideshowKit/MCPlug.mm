@interface MCPlug
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (MCContainer)container;
- (MCPlug)init;
- (MCPlug)initWithImprint:(id)imprint andMontage:(id)montage;
- (NSDictionary)actions;
- (NSSet)animationPaths;
- (id)actionForKey:(id)key;
- (id)animationPathForKey:(id)key;
- (id)imprint;
- (id)imprintsForActions;
- (id)imprintsForAnimationPaths;
- (unint64_t)countOfActions;
- (unint64_t)countOfAnimationPaths;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)addAnimationPath:(id)path;
- (void)demolish;
- (void)demolishActions;
- (void)demolishAnimationPaths;
- (void)initActionsWithImprints:(id)imprints;
- (void)initAnimationPathsWithImprints:(id)imprints;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeActionForKey:(id)key;
- (void)removeAllActions;
- (void)removeAllAnimationPaths;
- (void)removeAnimationPathForKey:(id)key;
- (void)setAction:(id)action forKey:(id)key;
- (void)setContainer:(id)container;
- (void)setLoopDuration:(double)duration;
- (void)setNumberOfLoops:(double)loops;
- (void)setPhaseInDuration:(double)duration;
- (void)setPhaseOutDuration:(double)duration;
- (void)setPreactivatesWithParent:(BOOL)parent;
@end

@implementation MCPlug

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"fullDuration"])
  {
    return [NSSet setWithObjects:@"phaseInDuration", @"loopDuration", @"phaseOutDuration", 0];
  }

  if ([key isEqualToString:@"orderedFilters"])
  {
    return [NSSet setWithObjects:@"filters", 0, v6, v7];
  }

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___MCPlug;
  return objc_msgSendSuper2(&v8, "keyPathsForValuesAffectingValueForKey:", key);
}

- (MCPlug)init
{
  v3.receiver = self;
  v3.super_class = MCPlug;
  result = [(MCPlug *)&v3 init];
  if (result)
  {
    result->mNumberOfLoops = 1.0;
  }

  return result;
}

- (MCPlug)initWithImprint:(id)imprint andMontage:(id)montage
{
  v21.receiver = self;
  v21.super_class = MCPlug;
  v5 = [(MCObject *)&v21 initWithImprint:imprint andMontage:montage];
  v6 = v5;
  if (v5)
  {
    v7 = -[MCMontage containerForObjectID:](v5->super.mMontage, "containerForObjectID:", [imprint objectForKey:@"containerID"]);
    v6->mContainer = v7;
    [(MCContainer *)v7 referenceByPlug:v6];
    v8 = [imprint objectForKey:@"animationPaths"];
    if (v8)
    {
      [(MCPlug *)v6 initAnimationPathsWithImprints:v8];
    }

    v9 = [imprint objectForKey:@"actions"];
    if (v9)
    {
      [(MCPlug *)v6 initActionsWithImprints:v9];
    }

    v10 = [imprint objectForKey:@"phaseInDuration"];
    v11 = 0.0;
    v12 = 0.0;
    if (v10)
    {
      [v10 doubleValue];
    }

    v6->mPhaseInDuration = v12;
    v13 = [imprint objectForKey:@"loopDuration"];
    if (v13)
    {
      [v13 doubleValue];
      v11 = v14;
    }

    v6->mLoopDuration = v11;
    v15 = [imprint objectForKey:@"phaseOutDuration"];
    if (v15)
    {
      [v15 doubleValue];
    }

    else
    {
      v16 = 0.0;
    }

    v6->mPhaseOutDuration = v16;
    v17 = [imprint objectForKey:@"numberOfLoops"];
    if (v17)
    {
      [v17 doubleValue];
    }

    else
    {
      v18 = 1.0;
    }

    v6->mNumberOfLoops = v18;
    v19 = [imprint objectForKey:@"flags"];
    if (v19)
    {
      LODWORD(v19) = [v19 unsignedIntegerValue];
    }

    v6->mFlags = v19;
  }

  return v6;
}

- (void)demolish
{
  [(MCPlug *)self setContainer:0];
  [(MCPlug *)self demolishAnimationPaths];
  [(MCPlug *)self demolishActions];
  v3.receiver = self;
  v3.super_class = MCPlug;
  [(MCObject *)&v3 demolish];
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCPlug;
  imprint = [(MCObject *)&v6 imprint];
  mContainer = self->mContainer;
  if (mContainer)
  {
    [imprint setObject:-[MCObject objectID](mContainer forKey:{"objectID"), @"containerID"}];
  }

  if ([(NSMutableSet *)self->mAnimationPaths count])
  {
    [imprint setObject:-[MCPlug imprintsForAnimationPaths](self forKey:{"imprintsForAnimationPaths"), @"animationPaths"}];
  }

  if ([(NSMutableDictionary *)self->mActions count])
  {
    [imprint setObject:-[MCPlug imprintsForActions](self forKey:{"imprintsForActions"), @"actions"}];
  }

  if (self->mPhaseInDuration != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"phaseInDuration"}];
  }

  if (self->mLoopDuration != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"loopDuration"}];
  }

  if (self->mPhaseOutDuration != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"phaseOutDuration"}];
  }

  if (self->mNumberOfLoops != 1.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"numberOfLoops"}];
  }

  if (self->mFlags)
  {
    [imprint setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", self->mFlags), @"flags"}];
  }

  return imprint;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"keyframes", object, change, context}])
  {
    v7 = @"animationPaths";
  }

  else
  {
    v7 = @"filters";
  }

  [(MCPlug *)self willChangeValueForKey:v7];

  [(MCPlug *)self didChangeValueForKey:v7];
}

- (MCContainer)container
{
  if ([(MCObject *)self isSnapshot])
  {
    return self->mContainer;
  }

  objc_sync_enter(self);
  v3 = self->mContainer;
  objc_sync_exit(self);
  return v3;
}

- (void)setContainer:(id)container
{
  if (self->mContainer != container)
  {
    objc_sync_enter(self);
    mContainer = self->mContainer;
    if (container)
    {
      containerCopy = container;
      self->mContainer = containerCopy;
      [(MCContainer *)containerCopy referenceByPlug:self];
    }

    else
    {
      self->mContainer = 0;
    }

    [(MCContainer *)mContainer unreferenceByPlug:self];
    v7 = mContainer;

    objc_sync_exit(self);
  }
}

- (void)setPhaseInDuration:(double)duration
{
  if (duration < 0.0)
  {
    duration = 0.0;
  }

  self->mPhaseInDuration = duration;
}

- (void)setLoopDuration:(double)duration
{
  if (duration < 0.0)
  {
    duration = 0.0;
  }

  self->mLoopDuration = duration;
}

- (void)setPhaseOutDuration:(double)duration
{
  if (duration < 0.0)
  {
    duration = 0.0;
  }

  self->mPhaseOutDuration = duration;
}

- (void)setNumberOfLoops:(double)loops
{
  if (loops <= 0.0)
  {
    loops = 1.0;
  }

  self->mNumberOfLoops = loops;
}

- (void)setPreactivatesWithParent:(BOOL)parent
{
  if (parent)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->mFlags = self->mFlags & 0xFFFFFFF7 | v3;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  if (self->mAnimationPaths)
  {
    animationPaths = [(MCPlug *)self animationPaths];
    if ([(NSSet *)animationPaths count])
    {
      *(snapshot + 4) = [[NSMutableSet alloc] initWithCapacity:{-[NSSet count](animationPaths, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [(NSSet *)animationPaths countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        do
        {
          v9 = 0;
          do
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(animationPaths);
            }

            [*(snapshot + 4) addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v9), "snapshot")}];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [(NSSet *)animationPaths countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v7);
      }
    }
  }

  if (self->mActions)
  {
    actions = [(MCPlug *)self actions];
    if ([(NSDictionary *)actions count])
    {
      *(snapshot + 5) = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](actions, "count")}];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(NSDictionary *)actions countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(actions);
            }

            [*(snapshot + 5) setObject:objc_msgSend(-[NSDictionary objectForKey:](actions forKey:{"objectForKey:", *(*(&v15 + 1) + 8 * v14)), "snapshot"), *(*(&v15 + 1) + 8 * v14)}];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [(NSDictionary *)actions countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }

  *(snapshot + 7) = *&self->mPhaseInDuration;
  *(snapshot + 8) = *&self->mLoopDuration;
  *(snapshot + 9) = *&self->mPhaseOutDuration;
  *(snapshot + 10) = *&self->mNumberOfLoops;
  *(snapshot + 6) = self->mFlags;
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
            if (![(MCObject *)self isSnapshot])
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
        if (![(MCObject *)self isSnapshot])
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
  animationPaths = [(MCPlug *)self animationPaths];
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
  isSnapshot = [(MCObject *)self isSnapshot];
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
  isSnapshot = [(MCObject *)self isSnapshot];
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
  if ([(MCObject *)self isSnapshot])
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
  -[MCPlug removeAnimationPathForKey:](self, "removeAnimationPathForKey:", [path key]);
  if (!self->mAnimationPaths)
  {
    objc_sync_enter(self);
    self->mAnimationPaths = objc_alloc_init(NSMutableSet);
    objc_sync_exit(self);
  }

  v7 = [[NSSet alloc] initWithObjects:{path, 0}];
  [(MCPlug *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:?];
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
  [(MCPlug *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v7];
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
            [(MCPlug *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v13];
            [(NSMutableSet *)self->mAnimationPaths removeObject:v10];
            objc_sync_exit(mAnimationPaths);
            [(MCPlug *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v13];

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
    [(MCPlug *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v3];
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
        [(MCPlug *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v3];

        return;
      }
    }
  }
}

- (void)initActionsWithImprints:(id)imprints
{
  if (imprints)
  {
    if ([imprints count])
    {
      self->mActions = objc_alloc_init(NSMutableDictionary);
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = [imprints countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(imprints);
            }

            -[NSMutableDictionary setObject:forKey:](self->mActions, "setObject:forKey:", +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [imprints objectForKey:*(*(&v9 + 1) + 8 * v8)]), *(*(&v9 + 1) + 8 * v8));
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [imprints countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)demolishActions
{
  mActions = self->mActions;
  if (mActions)
  {
    objc_sync_enter(self->mActions);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->mActions;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [-[NSMutableDictionary objectForKey:](self->mActions objectForKey:{*(*(&v8 + 1) + 8 * i)), "demolish"}];
        }

        v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    objc_sync_enter(self);

    self->mActions = 0;
    objc_sync_exit(self);
    objc_sync_exit(mActions);
  }
}

- (id)imprintsForActions
{
  v3 = +[NSMutableDictionary dictionary];
  actions = [(MCPlug *)self actions];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSDictionary *)actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actions);
        }

        [v3 setObject:objc_msgSend(-[NSDictionary objectForKey:](actions forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * v8)), "imprint"), *(*(&v10 + 1) + 8 * v8)}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSDictionary)actions
{
  v3 = sEmptyDictionary;
  isSnapshot = [(MCObject *)self isSnapshot];
  mActions = self->mActions;
  if ((isSnapshot & 1) == 0)
  {
    if (mActions)
    {
      objc_sync_enter(self->mActions);
      if ([(NSMutableDictionary *)self->mActions count])
      {
        v3 = [[NSDictionary alloc] initWithDictionary:self->mActions];
      }

      objc_sync_exit(mActions);
    }

    return v3;
  }

  return &mActions->super;
}

- (unint64_t)countOfActions
{
  isSnapshot = [(MCObject *)self isSnapshot];
  mActions = self->mActions;
  if (isSnapshot)
  {
    v5 = self->mActions;

    return [(NSMutableDictionary *)v5 count];
  }

  else
  {
    if (!mActions)
    {
      return 0;
    }

    objc_sync_enter(self->mActions);
    v7 = [(NSMutableDictionary *)self->mActions count];
    objc_sync_exit(mActions);
    return v7;
  }
}

- (id)actionForKey:(id)key
{
  isSnapshot = [(MCObject *)self isSnapshot];
  mActions = self->mActions;
  if (isSnapshot)
  {
    v7 = self->mActions;

    return [(NSMutableDictionary *)v7 objectForKey:key];
  }

  else
  {
    if (!mActions)
    {
      return 0;
    }

    objc_sync_enter(self->mActions);
    v9 = [(NSMutableDictionary *)self->mActions objectForKey:key];
    objc_sync_exit(mActions);
    return v9;
  }
}

- (void)setAction:(id)action forKey:(id)key
{
  [(MCPlug *)self willChangeValueForKey:@"actions"];
  mActions = self->mActions;
  if (!mActions)
  {
    objc_sync_enter(self);
    self->mActions = objc_alloc_init(NSMutableDictionary);
    objc_sync_exit(self);
    mActions = self->mActions;
  }

  objc_sync_enter(mActions);
  [(NSMutableDictionary *)self->mActions setObject:action forKey:key];
  objc_sync_exit(mActions);

  [(MCPlug *)self didChangeValueForKey:@"actions"];
}

- (void)removeActionForKey:(id)key
{
  if (self->mActions)
  {
    [(MCPlug *)self willChangeValueForKey:@"actions"];
    mActions = self->mActions;
    objc_sync_enter(mActions);
    [(NSMutableDictionary *)self->mActions removeObjectForKey:key];
    objc_sync_exit(mActions);

    [(MCPlug *)self didChangeValueForKey:@"actions"];
  }
}

- (void)removeAllActions
{
  if (self->mActions)
  {
    [(MCPlug *)self willChangeValueForKey:@"actions"];
    mActions = self->mActions;
    objc_sync_enter(mActions);
    [(NSMutableDictionary *)self->mActions removeAllObjects];
    objc_sync_exit(mActions);

    [(MCPlug *)self didChangeValueForKey:@"actions"];
  }
}

@end