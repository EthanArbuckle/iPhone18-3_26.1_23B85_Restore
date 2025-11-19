@interface MPCluster
- (MPCluster)init;
- (double)usageCountForLayer:(id)a3;
- (id)usageCountDescription;
- (void)dealloc;
- (void)detailedDescription;
- (void)resetAllUsageCounters;
- (void)setUsageCountForLayer:(id)a3 to:(double)a4;
@end

@implementation MPCluster

- (MPCluster)init
{
  v4.receiver = self;
  v4.super_class = MPCluster;
  v2 = [(MPCluster *)&v4 init];
  if (v2)
  {
    v2->mSlides = objc_alloc_init(NSMutableArray);
    v2->mRating = 0.0;
    v2->mUsageCounterPerLayer = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->mSlides = 0;

  self->mUsageCounterPerLayer = 0;
  self->mName = 0;
  v3.receiver = self;
  v3.super_class = MPCluster;
  [(MPCluster *)&v3 dealloc];
}

- (void)setUsageCountForLayer:(id)a3 to:(double)a4
{
  v4 = a4;
  mUsageCounterPerLayer = self->mUsageCounterPerLayer;
  if (mUsageCounterPerLayer)
  {
    if (a3)
    {
LABEL_3:
      *&a4 = v4;
      v8 = [NSNumber numberWithFloat:a4];

      [(NSMutableDictionary *)mUsageCounterPerLayer setObject:v8 forKey:a3];
      return;
    }
  }

  else
  {
    mUsageCounterPerLayer = objc_alloc_init(NSMutableDictionary);
    self->mUsageCounterPerLayer = mUsageCounterPerLayer;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(mUsageCounterPerLayer);
        }

        [(MPCluster *)self setUsageCountForLayer:*(*(&v13 + 1) + 8 * i) to:v4];
      }

      v10 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (double)usageCountForLayer:(id)a3
{
  mUsageCounterPerLayer = self->mUsageCounterPerLayer;
  if (mUsageCounterPerLayer)
  {
    if (a3)
    {
LABEL_3:
      [-[NSMutableDictionary valueForKey:](mUsageCounterPerLayer valueForKey:{a3), "floatValue"}];
      return v6;
    }
  }

  else
  {
    mUsageCounterPerLayer = objc_alloc_init(NSMutableDictionary);
    self->mUsageCounterPerLayer = mUsageCounterPerLayer;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  v10 = *v15;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(mUsageCounterPerLayer);
      }

      [-[NSMutableDictionary valueForKey:](self->mUsageCounterPerLayer valueForKey:{*(*(&v14 + 1) + 8 * i)), "floatValue"}];
      v7 = v7 + v12;
    }

    v9 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v9);
  return v7;
}

- (void)resetAllUsageCounters
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mUsageCounterPerLayer = self->mUsageCounterPerLayer;
  v4 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mUsageCounterPerLayer);
        }

        [(MPCluster *)self setUsageCountForLayer:*(*(&v8 + 1) + 8 * i) to:0.0];
      }

      v5 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)usageCountDescription
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSMutableDictionary *)self->mUsageCounterPerLayer allValues];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = &stru_1AC858;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) floatValue];
        v6 = [NSMutableString stringWithString:[(NSMutableString *)v6 stringByAppendingFormat:@"%.2f:", v8]];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_1AC858;
  }

  if ([(NSMutableString *)v6 length])
  {
    [(NSMutableString *)v6 deleteCharactersInRange:[(NSMutableString *)v6 length]- 1, 1];
  }

  return v6;
}

- (void)detailedDescription
{
  NSLog(@"-------------------", a2);
  NSLog(@"Cluster description:");
  NSLog(@"name: %@ usageCount = (%@), slide count = %d", [(MPCluster *)self name], [(MPCluster *)self usageCountDescription], [(MPCluster *)self slideCount]);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(MPCluster *)self allSlides];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        NSLog(@"             slide[%d]:  usageCount = (%@), fileName: %@", v6, [*(*(&v9 + 1) + 8 * v8) usageCountDescription], objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v8), "path"), "lastPathComponent"));
        v6 = (v6 + 1);
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  NSLog(@"-------------------");
}

@end