@interface _UIBarBackButtonItemAppearanceStorage
- (double)backgroundVerticalAdjustmentForBarMetrics:(int64_t)metrics;
- (id)anyBackgroundImage;
- (id)backgroundImageForState:(unint64_t)state isMini:(BOOL)mini;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state isMini:(BOOL)mini;
- (void)setBackgroundVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
@end

@implementation _UIBarBackButtonItemAppearanceStorage

- (void)setBackgroundImage:(id)image forState:(unint64_t)state isMini:(BOOL)mini
{
  miniCopy = mini;
  imageCopy = image;
  p_miniBackgroundImages = &self->miniBackgroundImages;
  p_backgroundImages = &self->backgroundImages;
  v10 = 8;
  if (miniCopy)
  {
    v10 = 16;
    v11 = &self->miniBackgroundImages;
  }

  else
  {
    v11 = &self->backgroundImages;
  }

  v12 = *(&self->super.isa + v10);
  if (imageCopy | v12)
  {
    if (imageCopy)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = *v11;
        *v11 = v13;

        v12 = *v11;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      [v12 setObject:imageCopy forKey:v15];
      goto LABEL_9;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [v12 removeObjectForKey:v16];

    if (![v12 count])
    {
      if (miniCopy)
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

- (id)backgroundImageForState:(unint64_t)state isMini:(BOOL)mini
{
  v5 = 8;
  if (mini)
  {
    v5 = 16;
  }

  v6 = MEMORY[0x1E696AD98];
  v7 = *(&self->super.isa + v5);
  v8 = [v6 numberWithInteger:state];
  v9 = [v7 objectForKey:v8];

  return v9;
}

- (id)anyBackgroundImage
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v4 = [(NSMutableDictionary *)self->backgroundImages objectForKey:v3];
  if (v4)
  {
    lastObject = v4;
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->backgroundImages allValues];
    lastObject = [allValues lastObject];

    if (!lastObject)
    {
      v7 = [(NSMutableDictionary *)self->miniBackgroundImages objectForKey:v3];
      v8 = v7;
      if (v7)
      {
        lastObject = v7;
      }

      else
      {
        allValues2 = [(NSMutableDictionary *)self->miniBackgroundImages allValues];
        lastObject = [allValues2 lastObject];
      }
    }
  }

  return lastObject;
}

- (void)setBackgroundVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  adjustmentCopy = adjustment;
  if (!self->backgroundVerticalAdjustmentsForBarMetrics)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backgroundVerticalAdjustmentsForBarMetrics = self->backgroundVerticalAdjustmentsForBarMetrics;
    self->backgroundVerticalAdjustmentsForBarMetrics = v7;
  }

  *&adjustment = adjustmentCopy;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:adjustment];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:metrics];
  [(NSMutableDictionary *)self->backgroundVerticalAdjustmentsForBarMetrics setObject:v10 forKey:v9];
}

- (double)backgroundVerticalAdjustmentForBarMetrics:(int64_t)metrics
{
  backgroundVerticalAdjustmentsForBarMetrics = self->backgroundVerticalAdjustmentsForBarMetrics;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)backgroundVerticalAdjustmentsForBarMetrics objectForKey:v6];

  if (!v7)
  {
    if ((metrics - 101) > 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = self->backgroundVerticalAdjustmentsForBarMetrics;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:metrics == 102];
      v7 = [(NSMutableDictionary *)v8 objectForKey:v9];
    }
  }

  [v7 floatValue];
  v11 = v10;

  return v11;
}

@end