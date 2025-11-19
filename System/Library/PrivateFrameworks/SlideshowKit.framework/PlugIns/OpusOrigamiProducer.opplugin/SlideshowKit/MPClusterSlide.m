@interface MPClusterSlide
- (MPClusterSlide)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)usageCountDescription;
- (int64_t)overallUsageCounter;
- (void)dealloc;
- (void)increaseUsageCounterForLayer:(id)a3;
- (void)resetAllUsageCounters;
- (void)setUsageCounterForLayer:(id)a3 to:(int64_t)a4;
@end

@implementation MPClusterSlide

- (MPClusterSlide)init
{
  v5.receiver = self;
  v5.super_class = MPClusterSlide;
  v2 = [(MPClusterSlide *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mIndex = 0;
    v2->mReferenceCounter = 0;
    v2->mUsageCounterPerLayer = 0;
    v2->mUsableSlideClusters = objc_alloc_init(NSMutableArray);
  }

  return v3;
}

- (void)dealloc
{
  self->mUsableSlideClusters = 0;

  self->mUsageCounterPerLayer = 0;
  self->mCaptureDate = 0;

  self->mPath = 0;
  v3.receiver = self;
  v3.super_class = MPClusterSlide;
  [(MPClusterSlide *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setUsableSlideClusters:self->mUsableSlideClusters];
  [v4 setCaptureDate:self->mCaptureDate];
  [v4 setReferenceCounter:self->mReferenceCounter];
  [v4 setUsageCounterPerLayer:self->mUsageCounterPerLayer];
  return v4;
}

- (void)increaseUsageCounterForLayer:(id)a3
{
  mUsageCounterPerLayer = self->mUsageCounterPerLayer;
  if (!mUsageCounterPerLayer)
  {
    mUsageCounterPerLayer = objc_alloc_init(NSMutableDictionary);
    self->mUsageCounterPerLayer = mUsageCounterPerLayer;
  }

  v6 = [(NSMutableDictionary *)mUsageCounterPerLayer objectForKey:a3];
  if (v6)
  {
    v7 = [v6 intValue];
    v8 = self->mUsageCounterPerLayer;
    v9 = [NSNumber numberWithInteger:v7 + 1];
  }

  else
  {
    v8 = self->mUsageCounterPerLayer;
    v9 = [NSNumber numberWithInt:1];
  }

  [(NSMutableDictionary *)v8 setObject:v9 forKey:a3];
}

- (void)setUsageCounterForLayer:(id)a3 to:(int64_t)a4
{
  mUsageCounterPerLayer = self->mUsageCounterPerLayer;
  if (mUsageCounterPerLayer)
  {
    if (a3)
    {
LABEL_3:
      v8 = [NSNumber numberWithInteger:a4];

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

        [(MPClusterSlide *)self setUsageCounterForLayer:*(*(&v13 + 1) + 8 * i) to:a4];
      }

      v10 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (int64_t)overallUsageCounter
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->mUsageCounterPerLayer allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) intValue];
    }

    v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
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

        [(MPClusterSlide *)self setUsageCounterForLayer:*(*(&v8 + 1) + 8 * i) to:0];
      }

      v5 = [(NSMutableDictionary *)mUsageCounterPerLayer countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)usageCountDescription
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->mUsageCounterPerLayer allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = &stru_1AC858;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", -[NSMutableString stringByAppendingFormat:](v6, "stringByAppendingFormat:", @"%d:", [*(*(&v9 + 1) + 8 * i) intValue]));
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

@end