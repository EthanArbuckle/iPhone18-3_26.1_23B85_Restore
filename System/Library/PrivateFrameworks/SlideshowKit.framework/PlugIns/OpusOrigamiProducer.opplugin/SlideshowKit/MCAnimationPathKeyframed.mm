@interface MCAnimationPathKeyframed
+ (double)timeForKeyframe:(id)a3 withPlugTiming:(id)a4;
+ (id)animationPathWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCAnimationPathKeyframed)init;
- (MCAnimationPathKeyframed)initWithImprint:(id)a3;
- (NSSet)keyframes;
- (id)createKeyframeWithFunction:(id)a3 atTime:(double)a4 offsetKind:(int)a5 forDuration:(double)a6;
- (id)createKeyframeWithPoint:(CGPoint)a3 atTime:(double)a4 offsetKind:(int)a5;
- (id)createKeyframeWithScalar:(float)a3 atTime:(double)a4 offsetKind:(int)a5;
- (id)createKeyframeWithVector:(id *)a3 atTime:(double)a4 offsetKind:(int)a5;
- (id)imprint;
- (id)orderedKeyframesWithPlugTiming:(id)a3;
- (unint64_t)countOfKeyframes;
- (void)_copySelfToSnapshot:(id)a3;
- (void)addKeyframe:(id)a3;
- (void)demolish;
- (void)removeAllKeyframes;
- (void)removeKeyframe:(id)a3;
@end

@implementation MCAnimationPathKeyframed

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"orderedKeyframes"])
  {
    return [NSSet setWithObjects:@"keyframes", 0];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MCAnimationPathKeyframed;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", a3);
}

+ (id)animationPathWithKey:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MCAnimationPathKeyframed;
  return objc_msgSendSuper2(&v4, "animationPathWithKey:", a3);
}

- (MCAnimationPathKeyframed)init
{
  v4.receiver = self;
  v4.super_class = MCAnimationPathKeyframed;
  v2 = [(MCAnimationPathKeyframed *)&v4 init];
  if (v2)
  {
    v2->mKeyframes = objc_alloc_init(NSMutableSet);
  }

  return v2;
}

- (MCAnimationPathKeyframed)initWithImprint:(id)a3
{
  v16.receiver = self;
  v16.super_class = MCAnimationPathKeyframed;
  v4 = [(MCAnimationPath *)&v16 initWithImprint:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"keyframes"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MCObjectLight objectWithImprint:*(*(&v12 + 1) + 8 * v9)];
          [(NSMutableSet *)v4->mKeyframes addObject:v10];
          [v10 setAnimationPath:v4];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)demolish
{
  mKeyframes = self->mKeyframes;
  objc_sync_enter(mKeyframes);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->mKeyframes;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->mKeyframes = 0;
  self->mCachedOrderedKeyframes = 0;
  objc_sync_exit(mKeyframes);
  v8.receiver = self;
  v8.super_class = MCAnimationPathKeyframed;
  [(MCAnimationPath *)&v8 demolish];
}

- (id)imprint
{
  v16.receiver = self;
  v16.super_class = MCAnimationPathKeyframed;
  v3 = [(MCAnimationPath *)&v16 imprint];
  v4 = [(MCAnimationPathKeyframed *)self keyframes];
  if ([(NSSet *)v4 count])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v4);
          }

          [v6 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10), "imprint")}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v6 forKey:@"keyframes"];
    objc_autoreleasePoolPop(v5);
  }

  return v3;
}

- (NSSet)keyframes
{
  v3 = [(MCAnimationPath *)self isSnapshot];
  mKeyframes = self->mKeyframes;
  if ((v3 & 1) == 0)
  {
    objc_sync_enter(self->mKeyframes);
    if ([(NSMutableSet *)self->mKeyframes count])
    {
      v5 = [[NSSet alloc] initWithSet:self->mKeyframes];
    }

    else
    {
      v5 = sEmptySet;
    }

    objc_sync_exit(mKeyframes);
    return v5;
  }

  return &mKeyframes->super;
}

- (unint64_t)countOfKeyframes
{
  v3 = [(MCAnimationPath *)self isSnapshot];
  mKeyframes = self->mKeyframes;
  if (v3)
  {
    v5 = self->mKeyframes;

    return [(NSMutableSet *)v5 count];
  }

  else
  {
    objc_sync_enter(self->mKeyframes);
    v7 = [(NSMutableSet *)self->mKeyframes count];
    objc_sync_exit(mKeyframes);
    return v7;
  }
}

- (id)orderedKeyframesWithPlugTiming:(id)a3
{
  if ([(MCAnimationPath *)self isSnapshot])
  {
    mCachedOrderedKeyframes = self->mCachedOrderedKeyframes;
    if (!mCachedOrderedKeyframes)
    {
      v6 = [(NSMutableSet *)self->mKeyframes allObjects];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_83AA8;
      v12[3] = &unk_1AB170;
      v12[4] = a3;
      mCachedOrderedKeyframes = [v6 sortedArrayUsingComparator:v12];
      self->mCachedOrderedKeyframes = mCachedOrderedKeyframes;
    }
  }

  else
  {
    mKeyframes = self->mKeyframes;
    objc_sync_enter(mKeyframes);
    v8 = self->mCachedOrderedKeyframes;
    if (!v8)
    {
      v9 = [(NSMutableSet *)self->mKeyframes allObjects];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_83B84;
      v11[3] = &unk_1AB170;
      v11[4] = a3;
      v8 = [v9 sortedArrayUsingComparator:v11];
      self->mCachedOrderedKeyframes = v8;
    }

    mCachedOrderedKeyframes = v8;
    objc_sync_exit(mKeyframes);
  }

  return mCachedOrderedKeyframes;
}

+ (double)timeForKeyframe:(id)a3 withPlugTiming:(id)a4
{
  [a3 timeOffset];
  v6 = [a3 timeOffsetKind];

  TimeForKeyframeAttributesInPlug(v6, v7, a4);
  return result;
}

- (id)createKeyframeWithScalar:(float)a3 atTime:(double)a4 offsetKind:(int)a5
{
  v6 = [MCAnimationKeyframe1D keyframeWithScalar:"keyframeWithScalar:atTime:offsetKind:" atTime:*&a5 offsetKind:?];
  [v6 setAnimationPath:self];
  [(MCAnimationPathKeyframed *)self addKeyframe:v6];
  return v6;
}

- (id)createKeyframeWithFunction:(id)a3 atTime:(double)a4 offsetKind:(int)a5 forDuration:(double)a6
{
  v7 = [MCAnimationKeyframeFunction keyframeWithFunction:a3 atTime:*&a5 offsetKind:a4 forDuration:a6];
  [v7 setAnimationPath:self];
  [(MCAnimationPathKeyframed *)self addKeyframe:v7];
  return v7;
}

- (id)createKeyframeWithPoint:(CGPoint)a3 atTime:(double)a4 offsetKind:(int)a5
{
  v6 = [MCAnimationKeyframe2D keyframeWithPoint:*&a5 atTime:a3.x offsetKind:a3.y, a4];
  [v6 setAnimationPath:self];
  [(MCAnimationPathKeyframed *)self addKeyframe:v6];
  return v6;
}

- (id)createKeyframeWithVector:(id *)a3 atTime:(double)a4 offsetKind:(int)a5
{
  v8 = *a3;
  v6 = [MCAnimationKeyframeVector keyframeWithVector:&v8 atTime:*&a5 offsetKind:a4];
  [v6 setAnimationPath:self];
  [(MCAnimationPathKeyframed *)self addKeyframe:v6];
  return v6;
}

- (void)addKeyframe:(id)a3
{
  v6 = [[NSSet alloc] initWithObjects:{a3, 0}];
  [(MCAnimationPathKeyframed *)self willChangeValueForKey:@"keyframes" withSetMutation:1 usingObjects:?];
  mKeyframes = self->mKeyframes;
  objc_sync_enter(mKeyframes);
  [(NSMutableSet *)self->mKeyframes addObject:a3];

  self->mCachedOrderedKeyframes = 0;
  objc_sync_exit(mKeyframes);
  [(MCAnimationPathKeyframed *)self didChangeValueForKey:@"keyframes" withSetMutation:1 usingObjects:v6];
}

- (void)removeKeyframe:(id)a3
{
  v6 = [[NSSet alloc] initWithObjects:{a3, 0}];
  [(MCAnimationPathKeyframed *)self willChangeValueForKey:@"keyframes" withSetMutation:2 usingObjects:?];
  mKeyframes = self->mKeyframes;
  objc_sync_enter(mKeyframes);
  [(NSMutableSet *)self->mKeyframes removeObject:a3];
  [a3 setAnimationPath:0];

  self->mCachedOrderedKeyframes = 0;
  objc_sync_exit(mKeyframes);
  [(MCAnimationPathKeyframed *)self didChangeValueForKey:@"keyframes" withSetMutation:2 usingObjects:v6];
}

- (void)removeAllKeyframes
{
  mKeyframes = self->mKeyframes;
  objc_sync_enter(mKeyframes);
  v4 = objc_alloc_init(NSMutableSet);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->mKeyframes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setAnimationPath:0];
        [v4 addObject:v9];
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(MCAnimationPathKeyframed *)self willChangeValueForKey:@"keyframes" withSetMutation:2 usingObjects:v4];
  [(NSMutableSet *)self->mKeyframes minusSet:v4];

  self->mCachedOrderedKeyframes = 0;
  objc_sync_exit(mKeyframes);
  [(MCAnimationPathKeyframed *)self didChangeValueForKey:@"keyframes" withSetMutation:2 usingObjects:v4];
}

- (void)_copySelfToSnapshot:(id)a3
{
  v14.receiver = self;
  v14.super_class = MCAnimationPathKeyframed;
  [(MCAnimationPath *)&v14 _copySelfToSnapshot:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(MCAnimationPathKeyframed *)self keyframes];
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a3 + 3) addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v9), "snapshot")}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end