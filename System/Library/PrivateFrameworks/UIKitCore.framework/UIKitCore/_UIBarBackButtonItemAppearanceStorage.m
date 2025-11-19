@interface _UIBarBackButtonItemAppearanceStorage
- (double)backgroundVerticalAdjustmentForBarMetrics:(int64_t)a3;
- (id)anyBackgroundImage;
- (id)backgroundImageForState:(unint64_t)a3 isMini:(BOOL)a4;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 isMini:(BOOL)a5;
- (void)setBackgroundVerticalAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
@end

@implementation _UIBarBackButtonItemAppearanceStorage

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 isMini:(BOOL)a5
{
  v5 = a5;
  v17 = a3;
  p_miniBackgroundImages = &self->miniBackgroundImages;
  p_backgroundImages = &self->backgroundImages;
  v10 = 8;
  if (v5)
  {
    v10 = 16;
    v11 = &self->miniBackgroundImages;
  }

  else
  {
    v11 = &self->backgroundImages;
  }

  v12 = *(&self->super.isa + v10);
  if (v17 | v12)
  {
    if (v17)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = *v11;
        *v11 = v13;

        v12 = *v11;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      [v12 setObject:v17 forKey:v15];
      goto LABEL_9;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v12 removeObjectForKey:v16];

    if (![v12 count])
    {
      if (v5)
      {
        v15 = *p_miniBackgroundImages;
        *p_miniBackgroundImages = 0;
      }

      else
      {
        v15 = *p_backgroundImages;
        *p_backgroundImages = 0;
      }

LABEL_9:
    }
  }

  else
  {
    v12 = 0;
  }
}

- (id)backgroundImageForState:(unint64_t)a3 isMini:(BOOL)a4
{
  v5 = 8;
  if (a4)
  {
    v5 = 16;
  }

  v6 = MEMORY[0x1E696AD98];
  v7 = *(&self->super.isa + v5);
  v8 = [v6 numberWithInteger:a3];
  v9 = [v7 objectForKey:v8];

  return v9;
}

- (id)anyBackgroundImage
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v4 = [(NSMutableDictionary *)self->backgroundImages objectForKey:v3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->backgroundImages allValues];
    v5 = [v6 lastObject];

    if (!v5)
    {
      v7 = [(NSMutableDictionary *)self->miniBackgroundImages objectForKey:v3];
      v8 = v7;
      if (v7)
      {
        v5 = v7;
      }

      else
      {
        v9 = [(NSMutableDictionary *)self->miniBackgroundImages allValues];
        v5 = [v9 lastObject];
      }
    }
  }

  return v5;
}

- (void)setBackgroundVerticalAdjustment:(double)a3 forBarMetrics:(int64_t)a4
{
  v5 = a3;
  if (!self->backgroundVerticalAdjustmentsForBarMetrics)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backgroundVerticalAdjustmentsForBarMetrics = self->backgroundVerticalAdjustmentsForBarMetrics;
    self->backgroundVerticalAdjustmentsForBarMetrics = v7;
  }

  *&a3 = v5;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:a3];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)self->backgroundVerticalAdjustmentsForBarMetrics setObject:v10 forKey:v9];
}

- (double)backgroundVerticalAdjustmentForBarMetrics:(int64_t)a3
{
  backgroundVerticalAdjustmentsForBarMetrics = self->backgroundVerticalAdjustmentsForBarMetrics;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)backgroundVerticalAdjustmentsForBarMetrics objectForKey:v6];

  if (!v7)
  {
    if ((a3 - 101) > 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = self->backgroundVerticalAdjustmentsForBarMetrics;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3 == 102];
      v7 = [(NSMutableDictionary *)v8 objectForKey:v9];
    }
  }

  [v7 floatValue];
  v11 = v10;

  return v11;
}

@end