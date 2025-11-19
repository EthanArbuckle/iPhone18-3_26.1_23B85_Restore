@interface MCContainerEffect
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCContainerEffect)initWithImprint:(id)a3 andMontage:(id)a4;
- (NSArray)orderedSlides;
- (NSArray)orderedTexts;
- (NSDictionary)actions;
- (NSDictionary)effectAttributes;
- (NSSet)slides;
- (NSSet)texts;
- (id)actionForKey:(id)a3;
- (id)addSlide;
- (id)addSlideForAsset:(id)a3;
- (id)addSlideForContainer:(id)a3;
- (id)addSlides:(int64_t)a3;
- (id)addSlidesForAssets:(id)a3;
- (id)addTextForAsset:(id)a3 andKey:(id)a4;
- (id)addTextForAttributedString:(id)a3;
- (id)addTextsForAssets:(id)a3 andKey:(id)a4;
- (id)addTextsForAttributedStrings:(id)a3;
- (id)effectAttributeForKey:(id)a3;
- (id)imprint;
- (id)imprintsForActions;
- (id)insertSlideAtIndex:(int64_t)a3;
- (id)insertSlideForAsset:(id)a3 atIndex:(unint64_t)a4;
- (id)insertSlideForContainer:(id)a3 atIndex:(unint64_t)a4;
- (id)insertSlidesForAssets:(id)a3 atIndex:(unint64_t)a4;
- (id)insertTextForAsset:(id)a3 andKey:(id)a4 atIndex:(unint64_t)a5;
- (id)insertTextForAttributedString:(id)a3 atIndex:(unint64_t)a4;
- (id)insertTextsForAssets:(id)a3 andKey:(id)a4 atIndex:(unint64_t)a5;
- (id)insertTextsForAttributedStrings:(id)a3 atIndex:(unint64_t)a4;
- (id)slideAtIndex:(unint64_t)a3;
- (id)textAtIndex:(unint64_t)a3;
- (unint64_t)countOfActions;
- (unint64_t)countOfSlides;
- (unint64_t)countOfTexts;
- (unint64_t)nextAvailableSlideIndex;
- (unint64_t)nextAvailableTextIndex;
- (void)addEffectAttributes:(id)a3;
- (void)demolish;
- (void)demolishActions;
- (void)initActionsWithImprints:(id)a3;
- (void)moveSlidesAtIndices:(id)a3 toIndex:(unint64_t)a4;
- (void)moveTextsAtIndices:(id)a3 toIndex:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeActionForKey:(id)a3;
- (void)removeAllActions;
- (void)removeAllSlides;
- (void)removeAllTexts;
- (void)removeSlidesAtIndices:(id)a3;
- (void)removeTextsAtIndices:(id)a3;
- (void)setAction:(id)a3 forKey:(id)a4;
- (void)setEffectAttribute:(id)a3 forKey:(id)a4;
- (void)setEffectAttributes:(id)a3;
@end

@implementation MCContainerEffect

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"orderedSlides"])
  {
    return [NSSet setWithObjects:@"slides", 0];
  }

  if ([a3 isEqualToString:@"orderedTexts"])
  {
    return [NSSet setWithObjects:@"texts", 0];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MCContainerEffect;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", a3);
}

- (MCContainerEffect)initWithImprint:(id)a3 andMontage:(id)a4
{
  v31.receiver = self;
  v31.super_class = MCContainerEffect;
  v6 = [MCContainer initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v7 = [a3 objectForKey:@"slides"];
    if (v7)
    {
      v8 = v7;
      if ([v7 count])
      {
        v6->mSlides = objc_alloc_init(NSMutableArray);
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [MCObject objectWithImprint:*(*(&v27 + 1) + 8 * i) andMontage:a4];
              [(NSMutableArray *)v6->mSlides addObject:v13];
              [(MCObject *)v13 setContainer:v6];
            }

            v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
          }

          while (v10);
        }
      }
    }

    v14 = [a3 objectForKey:@"texts"];
    if (v14)
    {
      v15 = v14;
      if ([v14 count])
      {
        v6->mTexts = objc_alloc_init(NSMutableArray);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [MCObject objectWithImprint:*(*(&v23 + 1) + 8 * j) andMontage:a4];
              [(NSMutableArray *)v6->mTexts addObject:v20];
              [(MCObject *)v20 setContainer:v6];
              if (![(MCObject *)v6 isSnapshot])
              {
                [(MCObject *)v20 addObserver:v6 forKeyPath:@"attributedString" options:0 context:0];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
          }

          while (v17);
        }
      }
    }

    v21 = [a3 objectForKey:@"actions"];
    if (v21)
    {
      [(MCContainerEffect *)v6 initActionsWithImprints:v21];
    }

    v6->mEffectID = [a3 objectForKey:@"effectID"];
    v6->mEffectAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectForKey:", @"effectAttributes"}];
  }

  return v6;
}

- (void)demolish
{
  self->mEffectID = 0;

  self->mEffectAttributes = 0;
  [(MCContainerEffect *)self demolishActions];
  mSlides = self->mSlides;
  objc_sync_enter(mSlides);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->mSlides;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v20 + 1) + 8 * i) demolish];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  objc_sync_enter(self);
  v8 = self->mSlides;
  self->mSlides = 0;
  objc_sync_exit(self);
  objc_sync_exit(mSlides);
  mTexts = self->mTexts;
  objc_sync_enter(mTexts);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->mTexts;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * j);
        if (![(MCObject *)self isSnapshot])
        {
          [v14 removeObserver:self forKeyPath:@"attributedString"];
        }

        [v14 demolish];
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  objc_sync_enter(self);

  self->mTexts = 0;
  objc_sync_exit(self);
  objc_sync_exit(mTexts);
  v15.receiver = self;
  v15.super_class = MCContainerEffect;
  [(MCContainer *)&v15 demolish];
}

- (id)imprint
{
  v26.receiver = self;
  v26.super_class = MCContainerEffect;
  v3 = [(MCContainer *)&v26 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = [(MCContainerEffect *)self slides];
  if ([(NSSet *)v5 count])
  {
    v6 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [(NSSet *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [v6 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * v10), "imprint")}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    [v3 setObject:v6 forKey:@"slides"];
  }

  v11 = +[NSMutableArray array];
  v12 = [(MCContainerEffect *)self texts];
  if ([(NSSet *)v12 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [(NSSet *)v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v16), "imprint")}];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [(NSSet *)v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"texts"];
  }

  if ([(NSMutableDictionary *)self->mActions count])
  {
    [v3 setObject:-[MCContainerEffect imprintsForActions](self forKey:{"imprintsForActions"), @"actions"}];
  }

  [v3 setObject:self->mEffectID forKey:@"effectID"];
  [v3 setObject:self->mEffectAttributes forKey:@"effectAttributes"];
  objc_autoreleasePoolPop(v4);
  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MCContainerEffect *)self willChangeValueForKey:@"texts"];

    [(MCContainerEffect *)self didChangeValueForKey:@"texts"];
  }
}

- (NSSet)slides
{
  v2 = sEmptySet;
  mSlides = self->mSlides;
  if (mSlides)
  {
    objc_sync_enter(self->mSlides);
    if ([(NSMutableArray *)self->mSlides count])
    {
      v2 = [NSSet setWithArray:self->mSlides];
    }

    objc_sync_exit(mSlides);
  }

  return v2;
}

- (NSArray)orderedSlides
{
  mSlides = self->mSlides;
  if (!mSlides)
  {
    return sEmptyArray;
  }

  objc_sync_enter(self->mSlides);
  if ((self->super.mFlags & 1) == 0)
  {
    v4 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
    v5 = [[NSArray alloc] initWithObjects:{v4, 0}];
    [(NSMutableArray *)self->mSlides sortUsingDescriptors:v5];

    self->super.mFlags |= 1u;
  }

  v6 = self->mSlides;
  objc_sync_exit(mSlides);
  return &v6->super;
}

- (unint64_t)countOfSlides
{
  mSlides = self->mSlides;
  if (!mSlides)
  {
    return 0;
  }

  objc_sync_enter(self->mSlides);
  v4 = [(NSMutableArray *)self->mSlides count];
  objc_sync_exit(mSlides);
  return v4;
}

- (unint64_t)nextAvailableSlideIndex
{
  mSlides = self->mSlides;
  if (!mSlides)
  {
    return 0;
  }

  objc_sync_enter(self->mSlides);
  if (self->mIsLive)
  {
    v4 = self->mSlides;
    if (self->super.mFlags)
    {
      v7 = [-[NSMutableArray lastObject](v4 "lastObject")] + 1;
    }

    else if ([(NSMutableArray *)v4 count]&& (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v5 = self->mSlides, (v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
    {
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) index];
          if (v7 <= v10 + 1)
          {
            v7 = v10 + 1;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(NSMutableArray *)self->mSlides count];
  }

  objc_sync_exit(mSlides);
  return v7;
}

- (id)slideAtIndex:(unint64_t)a3
{
  mSlides = self->mSlides;
  if (mSlides)
  {
    objc_sync_enter(self->mSlides);
    if (self->super.mFlags)
    {
      if ([(NSMutableArray *)self->mSlides count]> a3)
      {
        v12 = [(NSMutableArray *)self->mSlides objectAtIndex:a3];
LABEL_17:
        v11 = v12;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = self->mSlides;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
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
            if ([v10 index] == a3)
            {
              v12 = v10;
              goto LABEL_17;
            }
          }

          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v11 = 0;
          if (v7)
          {
            continue;
          }

          goto LABEL_18;
        }
      }
    }

    v11 = 0;
LABEL_18:
    objc_sync_exit(mSlides);
    return v11;
  }

  v11 = 0;
  return v11;
}

- (id)addSlide
{
  v2 = [(MCContainerEffect *)self addSlides:1];

  return [v2 objectAtIndex:0];
}

- (id)addSlides:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = [(MCContainerEffect *)self nextAvailableSlideIndex];
  if (a3)
  {
    v7 = v6;
    do
    {
      v8 = [(MCObject *)[MCSlide alloc] initFromScratchWithMontage:self->super.super.mMontage];
      [v8 setIndex:v7];
      [v5 addObject:v8];
      [v8 setContainer:self];

      ++v7;
      --a3;
    }

    while (a3);
  }

  if ([v5 count])
  {
    v9 = [[NSSet alloc] initWithArray:v5];
    [(MCContainerEffect *)self willChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v9];
    mSlides = self->mSlides;
    if (mSlides)
    {
      objc_sync_enter(self->mSlides);
      if (self->super.mFlags)
      {
        objc_sync_enter(self);
        v11 = [[NSMutableArray alloc] initWithArray:self->mSlides];
        v12 = self->mSlides;
        self->mSlides = v11;
        objc_sync_exit(self);
      }

      [(NSMutableArray *)self->mSlides addObjectsFromArray:v5];
    }

    else
    {
      objc_sync_enter(self);
      self->mSlides = [[NSMutableArray alloc] initWithArray:v5];
      self->super.mFlags |= 1u;
      mSlides = self;
    }

    objc_sync_exit(mSlides);
    [(MCContainerEffect *)self didChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v9];
  }

  return v5;
}

- (id)insertSlideAtIndex:(int64_t)a3
{
  v5 = [(MCObject *)[MCSlide alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v5 setIndex:a3];
  [v5 setContainer:self];
  v6 = [[NSSet alloc] initWithObjects:{v5, 0}];
  [(MCContainerEffect *)self willChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v6];
  mSlides = self->mSlides;
  if (mSlides)
  {
    v17 = self->mSlides;
    objc_sync_enter(mSlides);
    if (self->super.mFlags)
    {
      objc_sync_enter(self);
      v8 = [[NSMutableArray alloc] initWithArray:self->mSlides];
      v9 = self->mSlides;
      self->mSlides = v8;
      self->super.mFlags ^= 1u;
      objc_sync_exit(self);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->mSlides;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 index] >= a3)
          {
            [v14 setIndex:{objc_msgSend(v14, "index") + 1}];
          }
        }

        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)self->mSlides addObject:v5];
    v15 = v17;
  }

  else
  {
    objc_sync_enter(self);
    self->mSlides = [[NSMutableArray alloc] initWithObjects:{v5, 0}];
    self->super.mFlags |= 1u;
    v15 = self;
  }

  objc_sync_exit(v15);
  [(MCContainerEffect *)self didChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v6];

  return v5;
}

- (id)addSlideForAsset:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  v5 = [(MCContainerEffect *)self insertSlidesForAssets:v4 atIndex:[(MCContainerEffect *)self nextAvailableSlideIndex]];

  return [v5 objectAtIndex:0];
}

- (id)addSlidesForAssets:(id)a3
{
  v5 = [(MCContainerEffect *)self nextAvailableSlideIndex];

  return [(MCContainerEffect *)self insertSlidesForAssets:a3 atIndex:v5];
}

- (id)insertSlideForAsset:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  v7 = [(MCContainerEffect *)self insertSlidesForAssets:v6 atIndex:a4];

  return [v7 objectAtIndex:0];
}

- (id)insertSlidesForAssets:(id)a3 atIndex:(unint64_t)a4
{
  v23 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [(MCObject *)[MCSlide alloc] initFromScratchWithMontage:self->super.super.mMontage];
        [v11 setAsset:v10];
        [v11 setIndex:a4 + v7];
        [v23 addObject:v11];
        [v11 setContainer:self];

        ++v7;
      }

      v6 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
    if (v7)
    {
      v12 = [[NSSet alloc] initWithArray:v23];
      [(MCContainerEffect *)self willChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v12];
      mSlides = self->mSlides;
      if (mSlides)
      {
        objc_sync_enter(self->mSlides);
        if (self->super.mFlags)
        {
          objc_sync_enter(self);
          v14 = [[NSMutableArray alloc] initWithArray:self->mSlides];
          v15 = self->mSlides;
          self->mSlides = v14;
          self->super.mFlags ^= 1u;
          objc_sync_exit(self);
        }

        v22 = v12;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v16 = self->mSlides;
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v17)
        {
          v18 = *v26;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v25 + 1) + 8 * j);
              if ([v20 index] >= a4)
              {
                [v20 setIndex:{objc_msgSend(v20, "index") + v7}];
              }
            }

            v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v17);
        }

        [(NSMutableArray *)self->mSlides addObjectsFromArray:v23];
        v12 = v22;
      }

      else
      {
        objc_sync_enter(self);
        self->mSlides = [[NSMutableArray alloc] initWithArray:v23];
        self->super.mFlags |= 1u;
        mSlides = self;
      }

      objc_sync_exit(mSlides);
      [(MCContainerEffect *)self didChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v12];
    }
  }

  return v23;
}

- (id)addSlideForContainer:(id)a3
{
  v5 = [(MCContainerEffect *)self nextAvailableSlideIndex];

  return [(MCContainerEffect *)self insertSlideForContainer:a3 atIndex:v5];
}

- (id)insertSlideForContainer:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [(MCObject *)[MCSlide alloc] initFromScratchWithMontage:self->super.super.mMontage];
  v8 = [(MCObject *)[MCPlugSlide alloc] initFromScratchWithMontage:self->super.super.mMontage];
  [v8 setContainer:a3];
  [v7 setPlug:v8];

  [v7 setIndex:a4];
  [v7 setContainer:self];
  v9 = [[NSSet alloc] initWithObjects:{v7, 0}];
  [(MCContainerEffect *)self willChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v9];
  mSlides = self->mSlides;
  if (mSlides)
  {
    v20 = self->mSlides;
    objc_sync_enter(mSlides);
    if (self->super.mFlags)
    {
      objc_sync_enter(self);
      v11 = [[NSMutableArray alloc] initWithArray:self->mSlides];
      v12 = self->mSlides;
      self->mSlides = v11;
      self->super.mFlags ^= 1u;
      objc_sync_exit(self);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->mSlides;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v17 index] >= a4)
          {
            [v17 setIndex:{objc_msgSend(v17, "index") + 1}];
          }
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)self->mSlides addObject:v7];
    v18 = v20;
  }

  else
  {
    objc_sync_enter(self);
    self->mSlides = [[NSMutableArray alloc] initWithObjects:{v7, 0}];
    self->super.mFlags |= 1u;
    v18 = self;
  }

  objc_sync_exit(v18);
  [(MCContainerEffect *)self didChangeValueForKey:@"slides" withSetMutation:1 usingObjects:v9];

  return v7;
}

- (void)removeSlidesAtIndices:(id)a3
{
  mSlides = self->mSlides;
  if (mSlides)
  {
    obj = mSlides;
    objc_sync_enter(mSlides);
    v6 = objc_alloc_init(NSMutableSet);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->mSlides;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([a3 containsIndex:{objc_msgSend(v11, "index")}])
          {
            [v6 addObject:v11];
          }

          else if (!self->mIsLive)
          {
            [v11 setIndex:{objc_msgSend(v11, "index") - objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v11, "index"))}];
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    [(MCContainerEffect *)self willChangeValueForKey:@"slides" withSetMutation:2 usingObjects:v6];
    if (self->super.mFlags)
    {
      objc_sync_enter(self);
      v12 = [[NSMutableArray alloc] initWithArray:self->mSlides];
      v13 = self->mSlides;
      self->mSlides = v12;
      objc_sync_exit(self);
    }

    -[NSMutableArray removeObjectsInArray:](self->mSlides, "removeObjectsInArray:", [v6 allObjects]);
    objc_sync_exit(obj);
    [(MCContainerEffect *)self didChangeValueForKey:@"slides" withSetMutation:2 usingObjects:v6];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          [v17 setContainer:0];
          [v17 demolish];
        }

        v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (void)removeAllSlides
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(MCContainerEffect *)self nextAvailableSlideIndex]];

  [(MCContainerEffect *)self removeSlidesAtIndices:v3];
}

- (void)moveSlidesAtIndices:(id)a3 toIndex:(unint64_t)a4
{
  if (self->mSlides)
  {
    [(MCContainerEffect *)self willChangeValueForKey:@"orderedSlides"];
    mSlides = self->mSlides;
    objc_sync_enter(mSlides);
    self->super.mFlags &= ~1u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->mSlides;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([a3 containsIndex:{objc_msgSend(v12, "index")}])
          {
            [v12 setIndex:{objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v12, "index")) + a4}];
          }

          else
          {
            v13 = [v12 index];
            v14 = v13 - [a3 countOfIndexesInRange:{0, objc_msgSend(v12, "index")}];
            if (v14 >= a4)
            {
              v14 += [a3 count];
            }

            [v12 setIndex:v14];
          }
        }

        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    objc_sync_exit(mSlides);
    [(MCContainerEffect *)self didChangeValueForKey:@"orderedSlides"];
  }
}

- (NSSet)texts
{
  v2 = sEmptySet;
  mTexts = self->mTexts;
  if (mTexts)
  {
    objc_sync_enter(self->mTexts);
    if ([(NSMutableArray *)self->mTexts count])
    {
      v2 = [NSSet setWithArray:self->mTexts];
    }

    objc_sync_exit(mTexts);
  }

  return v2;
}

- (NSArray)orderedTexts
{
  mTexts = self->mTexts;
  if (!mTexts)
  {
    return sEmptyArray;
  }

  objc_sync_enter(self->mTexts);
  if ((self->super.mFlags & 2) == 0)
  {
    v4 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
    [(NSMutableArray *)self->mTexts sortUsingDescriptors:[NSArray arrayWithObject:v4]];

    self->super.mFlags |= 2u;
  }

  v5 = self->mTexts;
  objc_sync_exit(mTexts);
  return &v5->super;
}

- (unint64_t)countOfTexts
{
  mTexts = self->mTexts;
  if (!mTexts)
  {
    return 0;
  }

  objc_sync_enter(self->mTexts);
  v4 = [(NSMutableArray *)self->mTexts count];
  objc_sync_exit(mTexts);
  return v4;
}

- (unint64_t)nextAvailableTextIndex
{
  mTexts = self->mTexts;
  if (!mTexts)
  {
    return 0;
  }

  objc_sync_enter(self->mTexts);
  if (self->mIsLive)
  {
    v4 = self->mTexts;
    if ((self->super.mFlags & 2) != 0)
    {
      v7 = [-[NSMutableArray lastObject](v4 "lastObject")] + 1;
    }

    else if ([(NSMutableArray *)v4 count]&& (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v5 = self->mTexts, (v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
    {
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) index];
          if (v7 <= v10 + 1)
          {
            v7 = v10 + 1;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(NSMutableArray *)self->mTexts count];
  }

  objc_sync_exit(mTexts);
  return v7;
}

- (id)textAtIndex:(unint64_t)a3
{
  mTexts = self->mTexts;
  if (mTexts)
  {
    objc_sync_enter(self->mTexts);
    if ((self->super.mFlags & 2) != 0)
    {
      if ([(NSMutableArray *)self->mTexts count]> a3)
      {
        v12 = [(NSMutableArray *)self->mTexts objectAtIndex:a3];
LABEL_17:
        v11 = v12;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = self->mTexts;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
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
            if ([v10 index] == a3)
            {
              v12 = v10;
              goto LABEL_17;
            }
          }

          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v11 = 0;
          if (v7)
          {
            continue;
          }

          goto LABEL_18;
        }
      }
    }

    v11 = 0;
LABEL_18:
    objc_sync_exit(mTexts);
    return v11;
  }

  v11 = 0;
  return v11;
}

- (id)addTextForAttributedString:(id)a3
{
  v3 = [(MCContainerEffect *)self insertTextsForAttributedStrings:[NSArray atIndex:"arrayWithObject:" arrayWithObject:a3], [(MCContainerEffect *)self nextAvailableTextIndex]];

  return [v3 objectAtIndex:0];
}

- (id)addTextsForAttributedStrings:(id)a3
{
  v5 = [(MCContainerEffect *)self nextAvailableTextIndex];

  return [(MCContainerEffect *)self insertTextsForAttributedStrings:a3 atIndex:v5];
}

- (id)addTextForAsset:(id)a3 andKey:(id)a4
{
  v4 = [(MCContainerEffect *)self insertTextsForAssets:[NSArray arrayWithObject:?], a4, [(MCContainerEffect *)self nextAvailableTextIndex]];

  return [v4 objectAtIndex:0];
}

- (id)addTextsForAssets:(id)a3 andKey:(id)a4
{
  v7 = [(MCContainerEffect *)self nextAvailableTextIndex];

  return [(MCContainerEffect *)self insertTextsForAssets:a3 andKey:a4 atIndex:v7];
}

- (id)insertTextForAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [(MCContainerEffect *)self insertTextsForAttributedStrings:[NSArray atIndex:"arrayWithObject:" arrayWithObject:a3], a4];

  return [v4 objectAtIndex:0];
}

- (id)insertTextsForAttributedStrings:(id)a3 atIndex:(unint64_t)a4
{
  v22 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v29;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [(MCObject *)[MCText alloc] initFromScratchWithMontage:self->super.super.mMontage];
        [v10 setAttributedString:v9];
        [v10 setIndex:a4 + v6];
        [v22 addObject:v10];
        [v10 setContainer:self];
        [v10 addObserver:self forKeyPath:@"attributedString" options:0 context:0];

        ++v6;
      }

      v5 = [a3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
    if (v6)
    {
      v11 = [[NSSet alloc] initWithArray:v22];
      [(MCContainerEffect *)self willChangeValueForKey:@"texts" withSetMutation:1 usingObjects:v11];
      mTexts = self->mTexts;
      if (mTexts)
      {
        objc_sync_enter(self->mTexts);
        if ((self->super.mFlags & 2) != 0)
        {
          objc_sync_enter(self);
          v13 = [[NSMutableArray alloc] initWithArray:self->mTexts];
          v14 = self->mTexts;
          self->mTexts = v13;
          self->super.mFlags ^= 2u;
          objc_sync_exit(self);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = self->mTexts;
        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = *v25;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v24 + 1) + 8 * j);
              if ([v19 index] >= a4)
              {
                [v19 setIndex:{objc_msgSend(v19, "index") + v6}];
              }
            }

            v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v16);
        }

        [(NSMutableArray *)self->mTexts addObjectsFromArray:v22];
      }

      else
      {
        objc_sync_enter(self);
        self->mTexts = [[NSMutableArray alloc] initWithArray:v22];
        self->super.mFlags |= 2u;
        mTexts = self;
      }

      objc_sync_exit(mTexts);
      [(MCContainerEffect *)self didChangeValueForKey:@"texts" withSetMutation:1 usingObjects:v11];
    }
  }

  return v22;
}

- (id)insertTextForAsset:(id)a3 andKey:(id)a4 atIndex:(unint64_t)a5
{
  v5 = [(MCContainerEffect *)self insertTextsForAssets:[NSArray arrayWithObject:?], a4, a5];

  return [v5 objectAtIndex:0];
}

- (id)insertTextsForAssets:(id)a3 andKey:(id)a4 atIndex:(unint64_t)a5
{
  v7 = [NSMutableArray array:a3];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v22 = 0;
    v9 = *v30;
    do
    {
      v10 = a5 + v22;
      v22 += v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [(MCObject *)[MCText alloc] initFromScratchWithMontage:self->super.super.mMontage];
        [v11 setIndex:v10];
        [v7 addObject:v11];
        [v11 setContainer:self];
        [v11 addObserver:self forKeyPath:@"attributedString" options:0 context:0];

        ++v10;
        v8 = v8 - 1;
      }

      while (v8);
      v8 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
    if (v22)
    {
      v12 = [[NSSet alloc] initWithArray:v7];
      [(MCContainerEffect *)self willChangeValueForKey:@"texts" withSetMutation:1 usingObjects:v12];
      mTexts = self->mTexts;
      if (mTexts)
      {
        objc_sync_enter(self->mTexts);
        if ((self->super.mFlags & 2) != 0)
        {
          objc_sync_enter(self);
          v14 = [[NSMutableArray alloc] initWithArray:self->mTexts];
          v15 = self->mTexts;
          self->mTexts = v14;
          self->super.mFlags ^= 2u;
          objc_sync_exit(self);
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v16 = self->mTexts;
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16, v22];
        if (v17)
        {
          v18 = *v26;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v25 + 1) + 8 * i);
              if ([v20 index] >= a5)
              {
                [v20 setIndex:{objc_msgSend(v20, "index") + v23}];
              }
            }

            v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v17);
        }

        [(NSMutableArray *)self->mTexts addObjectsFromArray:v7];
      }

      else
      {
        objc_sync_enter(self);
        self->mTexts = [[NSMutableArray alloc] initWithArray:v7];
        self->super.mFlags |= 2u;
        mTexts = self;
      }

      objc_sync_exit(mTexts);
      [(MCContainerEffect *)self didChangeValueForKey:@"texts" withSetMutation:1 usingObjects:v12];
    }
  }

  return v7;
}

- (void)removeTextsAtIndices:(id)a3
{
  mTexts = self->mTexts;
  if (mTexts)
  {
    obj = mTexts;
    objc_sync_enter(mTexts);
    v6 = objc_alloc_init(NSMutableSet);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->mTexts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([a3 containsIndex:{objc_msgSend(v11, "index")}])
          {
            [v6 addObject:v11];
            [v11 removeObserver:self forKeyPath:@"attributedString"];
          }

          else if (!self->mIsLive)
          {
            [v11 setIndex:{objc_msgSend(v11, "index") - objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v11, "index"))}];
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    [(MCContainerEffect *)self willChangeValueForKey:@"texts" withSetMutation:2 usingObjects:v6];
    if ((self->super.mFlags & 2) != 0)
    {
      objc_sync_enter(self);
      v12 = [[NSMutableArray alloc] initWithArray:self->mTexts];
      v13 = self->mTexts;
      self->mTexts = v12;
      objc_sync_exit(self);
    }

    -[NSMutableArray removeObjectsInArray:](self->mTexts, "removeObjectsInArray:", [v6 allObjects]);
    objc_sync_exit(obj);
    [(MCContainerEffect *)self didChangeValueForKey:@"texts" withSetMutation:2 usingObjects:v6];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          [v17 setContainer:0];
          [v17 demolish];
        }

        v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (void)removeAllTexts
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(MCContainerEffect *)self countOfTexts]];

  [(MCContainerEffect *)self removeTextsAtIndices:v3];
}

- (void)moveTextsAtIndices:(id)a3 toIndex:(unint64_t)a4
{
  [(MCContainerEffect *)self willChangeValueForKey:@"orderedTexts"];
  mTexts = self->mTexts;
  objc_sync_enter(mTexts);
  self->super.mFlags &= ~2u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->mTexts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([a3 containsIndex:{objc_msgSend(v12, "index")}])
        {
          [v12 setIndex:{objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v12, "index")) + a4}];
        }

        else
        {
          v13 = [v12 index];
          v14 = v13 - [a3 countOfIndexesInRange:{0, objc_msgSend(v12, "index")}];
          if (v14 >= a4)
          {
            v14 += [a3 count];
          }

          [v12 setIndex:v14];
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  objc_sync_exit(mTexts);
  [(MCContainerEffect *)self didChangeValueForKey:@"orderedTexts"];
}

- (id)effectAttributeForKey:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->mEffectAttributes objectForKey:a3];
  objc_sync_exit(self);

  return v5;
}

- (void)setEffectAttribute:(id)a3 forKey:(id)a4
{
  [(MCContainerEffect *)self willChangeValueForKey:@"effectAttributes"];
  objc_sync_enter(self);
  mEffectAttributes = self->mEffectAttributes;
  if (a3)
  {
    if (mEffectAttributes)
    {
      [(NSMutableDictionary *)mEffectAttributes setObject:a3 forKey:a4];
    }

    else
    {
      self->mEffectAttributes = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{a3, a4, 0}];
    }
  }

  else if (mEffectAttributes)
  {
    [(NSMutableDictionary *)mEffectAttributes removeObjectForKey:a4];
  }

  objc_sync_exit(self);

  [(MCContainerEffect *)self didChangeValueForKey:@"effectAttributes"];
}

- (void)addEffectAttributes:(id)a3
{
  if (a3 && [a3 count])
  {
    [(MCContainerEffect *)self willChangeValueForKey:@"effectAttributes"];
    objc_sync_enter(self);
    mEffectAttributes = self->mEffectAttributes;
    if (mEffectAttributes)
    {
      [(NSMutableDictionary *)mEffectAttributes addEntriesFromDictionary:a3];
    }

    else
    {
      self->mEffectAttributes = [[NSMutableDictionary alloc] initWithDictionary:a3];
    }

    objc_sync_exit(self);

    [(MCContainerEffect *)self didChangeValueForKey:@"effectAttributes"];
  }
}

- (NSDictionary)effectAttributes
{
  objc_sync_enter(self);
  v3 = [NSDictionary dictionaryWithDictionary:self->mEffectAttributes];
  objc_sync_exit(self);
  return v3;
}

- (void)setEffectAttributes:(id)a3
{
  objc_sync_enter(self);

  self->mEffectAttributes = 0;
  if (a3)
  {
    self->mEffectAttributes = [[NSMutableDictionary alloc] initWithDictionary:a3];
  }

  objc_sync_exit(self);
}

- (void)initActionsWithImprints:(id)a3
{
  if (a3)
  {
    if ([a3 count])
    {
      self->mActions = objc_alloc_init(NSMutableDictionary);
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
              objc_enumerationMutation(a3);
            }

            -[NSMutableDictionary setObject:forKey:](self->mActions, "setObject:forKey:", +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [a3 objectForKey:*(*(&v9 + 1) + 8 * v8)]), *(*(&v9 + 1) + 8 * v8));
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v4 = [(MCContainerEffect *)self actions];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 setObject:objc_msgSend(-[NSDictionary objectForKey:](v4 forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * v8)), "imprint"), *(*(&v10 + 1) + 8 * v8)}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSDictionary)actions
{
  v3 = sEmptyDictionary;
  v4 = [(MCObject *)self isSnapshot];
  mActions = self->mActions;
  if ((v4 & 1) == 0)
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
  v3 = [(MCObject *)self isSnapshot];
  mActions = self->mActions;
  if (v3)
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

- (id)actionForKey:(id)a3
{
  v5 = [(MCObject *)self isSnapshot];
  mActions = self->mActions;
  if (v5)
  {
    v7 = self->mActions;

    return [(NSMutableDictionary *)v7 objectForKey:a3];
  }

  else
  {
    if (!mActions)
    {
      return 0;
    }

    objc_sync_enter(self->mActions);
    v9 = [(NSMutableDictionary *)self->mActions objectForKey:a3];
    objc_sync_exit(mActions);
    return v9;
  }
}

- (void)setAction:(id)a3 forKey:(id)a4
{
  [(MCContainerEffect *)self willChangeValueForKey:@"actions"];
  mActions = self->mActions;
  if (!mActions)
  {
    objc_sync_enter(self);
    self->mActions = objc_alloc_init(NSMutableDictionary);
    objc_sync_exit(self);
    mActions = self->mActions;
  }

  objc_sync_enter(mActions);
  [(NSMutableDictionary *)self->mActions setObject:a3 forKey:a4];
  objc_sync_exit(mActions);

  [(MCContainerEffect *)self didChangeValueForKey:@"actions"];
}

- (void)removeActionForKey:(id)a3
{
  if (self->mActions)
  {
    [(MCContainerEffect *)self willChangeValueForKey:@"actions"];
    mActions = self->mActions;
    objc_sync_enter(mActions);
    [(NSMutableDictionary *)self->mActions removeObjectForKey:a3];
    objc_sync_exit(mActions);

    [(MCContainerEffect *)self didChangeValueForKey:@"actions"];
  }
}

- (void)removeAllActions
{
  if (self->mActions)
  {
    [(MCContainerEffect *)self willChangeValueForKey:@"actions"];
    mActions = self->mActions;
    objc_sync_enter(mActions);
    [(NSMutableDictionary *)self->mActions removeAllObjects];
    objc_sync_exit(mActions);

    [(MCContainerEffect *)self didChangeValueForKey:@"actions"];
  }
}

@end