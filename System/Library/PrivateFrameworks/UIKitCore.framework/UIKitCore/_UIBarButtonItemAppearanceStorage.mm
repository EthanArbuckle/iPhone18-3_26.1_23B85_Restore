@interface _UIBarButtonItemAppearanceStorage
- (double)backgroundVerticalAdjustmentForBarMetrics:(int64_t)metrics;
- (id)anyBackgroundImage;
- (id)backgroundImageForState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini;
- (void)setBackButtonBackgroundImage:(id)image forState:(unint64_t)state isMini:(BOOL)mini;
- (void)setBackButtonBackgroundVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)setBackButtonTitlePositionOffset:(id)offset;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini;
- (void)setBackgroundVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)setMiniBackButtonTitlePositionOffset:(id)offset;
@end

@implementation _UIBarButtonItemAppearanceStorage

- (void)setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini
{
  miniCopy = mini;
  imageCopy = image;
  v10 = 1;
  if (miniCopy)
  {
    v10 = 0;
  }

  v11 = OBJC_IVAR____UIBarButtonItemAppearanceStorage_miniBackgroundImages[v10];
  v12 = *(&self->super.super.isa + v11);
  v13 = imageCopy;
  if (imageCopy | v12)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    if (imageCopy)
    {
      if (!v12)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v16 = *(&self->super.super.isa + v11);
        *(&self->super.super.isa + v11) = v15;

        v12 = *(&self->super.super.isa + v11);
      }

      v17 = [v12 objectForKey:v14];
      if (!v17)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v12 setObject:v17 forKey:v14];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithInteger:style];
      [v17 setObject:imageCopy forKey:v18];
    }

    else
    {
      v17 = [v12 objectForKey:v14];
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:style];
      [v17 removeObjectForKey:v19];

      if ([v17 count])
      {
        goto LABEL_13;
      }

      [v12 removeObjectForKey:v14];
      if ([v12 count])
      {
        goto LABEL_13;
      }

      v18 = *(&self->super.super.isa + v11);
      *(&self->super.super.isa + v11) = 0;
    }

LABEL_13:
    v13 = imageCopy;
  }
}

- (id)backgroundImageForState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini
{
  v7 = 1;
  if (mini)
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E696AD98];
  v9 = *(&self->super.super.isa + OBJC_IVAR____UIBarButtonItemAppearanceStorage_miniBackgroundImages[v7]);
  v10 = [v8 numberWithInteger:state];
  v11 = [v9 objectForKey:v10];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v13 = [v11 objectForKey:v12];

  if (!v13)
  {
    v14 = dyld_program_sdk_at_least();
    if (!style && v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      v13 = [v11 objectForKey:v15];
    }

    if (style != 8 && !v13)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:8];
      v13 = [v11 objectForKey:v16];
    }
  }

  return v13;
}

- (id)anyBackgroundImage
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:8];
  v5 = [(NSMutableDictionary *)self->backgroundImages objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    lastObject = v5;
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->backgroundImages allValues];
    lastObject = [allValues lastObject];
  }

  v9 = [lastObject objectForKey:v4];
  if (v9)
  {
    lastObject2 = v9;
  }

  else
  {
    allValues2 = [lastObject allValues];
    lastObject2 = [allValues2 lastObject];

    if (!lastObject2)
    {
      v12 = [(NSMutableDictionary *)self->miniBackgroundImages objectForKey:v3];
      v13 = v12;
      if (v12)
      {
        allValues3 = lastObject;
        lastObject = v12;
      }

      else
      {
        allValues3 = [(NSMutableDictionary *)self->miniBackgroundImages allValues];
        lastObject3 = [allValues3 lastObject];

        lastObject = lastObject3;
      }

      v16 = [lastObject objectForKey:v4];
      v17 = v16;
      if (v16)
      {
        lastObject2 = v16;
      }

      else
      {
        allValues4 = [lastObject allValues];
        lastObject2 = [allValues4 lastObject];
      }
    }
  }

  return lastObject2;
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

- (void)setBackButtonBackgroundVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  backButtonAppearance = self->backButtonAppearance;
  if (!backButtonAppearance)
  {
    v8 = objc_alloc_init(_UIBarBackButtonItemAppearanceStorage);
    v9 = self->backButtonAppearance;
    self->backButtonAppearance = v8;

    backButtonAppearance = self->backButtonAppearance;
  }

  [(_UIBarBackButtonItemAppearanceStorage *)backButtonAppearance setBackgroundVerticalAdjustment:metrics forBarMetrics:adjustment];
}

- (void)setBackButtonBackgroundImage:(id)image forState:(unint64_t)state isMini:(BOOL)mini
{
  miniCopy = mini;
  imageCopy = image;
  backButtonAppearance = self->backButtonAppearance;
  v12 = imageCopy;
  if (imageCopy)
  {
    if (!backButtonAppearance)
    {
      v10 = objc_alloc_init(_UIBarBackButtonItemAppearanceStorage);
      v11 = self->backButtonAppearance;
      self->backButtonAppearance = v10;

      backButtonAppearance = self->backButtonAppearance;
    }
  }

  else if (!backButtonAppearance)
  {
    goto LABEL_6;
  }

  [(_UIBarBackButtonItemAppearanceStorage *)backButtonAppearance setBackgroundImage:v12 forState:state isMini:miniCopy];
  imageCopy = v12;
LABEL_6:
}

- (void)setBackButtonTitlePositionOffset:(id)offset
{
  offsetCopy = offset;
  backButtonAppearance = self->backButtonAppearance;
  v8 = offsetCopy;
  if (offsetCopy)
  {
    if (!backButtonAppearance)
    {
      v6 = objc_alloc_init(_UIBarBackButtonItemAppearanceStorage);
      v7 = self->backButtonAppearance;
      self->backButtonAppearance = v6;

      backButtonAppearance = self->backButtonAppearance;
    }
  }

  else if (!backButtonAppearance)
  {
    goto LABEL_6;
  }

  [(_UIBarBackButtonItemAppearanceStorage *)backButtonAppearance setTitlePositionOffset:v8];
  offsetCopy = v8;
LABEL_6:
}

- (void)setMiniBackButtonTitlePositionOffset:(id)offset
{
  offsetCopy = offset;
  backButtonAppearance = self->backButtonAppearance;
  v8 = offsetCopy;
  if (offsetCopy)
  {
    if (!backButtonAppearance)
    {
      v6 = objc_alloc_init(_UIBarBackButtonItemAppearanceStorage);
      v7 = self->backButtonAppearance;
      self->backButtonAppearance = v6;

      backButtonAppearance = self->backButtonAppearance;
    }
  }

  else if (!backButtonAppearance)
  {
    goto LABEL_6;
  }

  [(_UIBarBackButtonItemAppearanceStorage *)backButtonAppearance setMiniTitlePositionOffset:v8];
  offsetCopy = v8;
LABEL_6:
}

@end