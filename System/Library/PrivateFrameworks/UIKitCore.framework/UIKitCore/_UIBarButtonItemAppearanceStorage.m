@interface _UIBarButtonItemAppearanceStorage
- (double)backgroundVerticalAdjustmentForBarMetrics:(int64_t)a3;
- (id)anyBackgroundImage;
- (id)backgroundImageForState:(unint64_t)a3 style:(int64_t)a4 isMini:(BOOL)a5;
- (void)setBackButtonBackgroundImage:(id)a3 forState:(unint64_t)a4 isMini:(BOOL)a5;
- (void)setBackButtonBackgroundVerticalAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)setBackButtonTitlePositionOffset:(id)a3;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 style:(int64_t)a5 isMini:(BOOL)a6;
- (void)setBackgroundVerticalAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)setMiniBackButtonTitlePositionOffset:(id)a3;
@end

@implementation _UIBarButtonItemAppearanceStorage

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 style:(int64_t)a5 isMini:(BOOL)a6
{
  v6 = a6;
  v20 = a3;
  v10 = 1;
  if (v6)
  {
    v10 = 0;
  }

  v11 = OBJC_IVAR____UIBarButtonItemAppearanceStorage_miniBackgroundImages[v10];
  v12 = *(&self->super.super.isa + v11);
  v13 = v20;
  if (v20 | v12)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    if (v20)
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

      v18 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      [v17 setObject:v20 forKey:v18];
    }

    else
    {
      v17 = [v12 objectForKey:v14];
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
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
    v13 = v20;
  }
}

- (id)backgroundImageForState:(unint64_t)a3 style:(int64_t)a4 isMini:(BOOL)a5
{
  v7 = 1;
  if (a5)
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E696AD98];
  v9 = *(&self->super.super.isa + OBJC_IVAR____UIBarButtonItemAppearanceStorage_miniBackgroundImages[v7]);
  v10 = [v8 numberWithInteger:a3];
  v11 = [v9 objectForKey:v10];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = [v11 objectForKey:v12];

  if (!v13)
  {
    v14 = dyld_program_sdk_at_least();
    if (!a4 && v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      v13 = [v11 objectForKey:v15];
    }

    if (a4 != 8 && !v13)
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
    v7 = v5;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->backgroundImages allValues];
    v7 = [v8 lastObject];
  }

  v9 = [v7 objectForKey:v4];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [v7 allValues];
    v10 = [v11 lastObject];

    if (!v10)
    {
      v12 = [(NSMutableDictionary *)self->miniBackgroundImages objectForKey:v3];
      v13 = v12;
      if (v12)
      {
        v14 = v7;
        v7 = v12;
      }

      else
      {
        v14 = [(NSMutableDictionary *)self->miniBackgroundImages allValues];
        v15 = [v14 lastObject];

        v7 = v15;
      }

      v16 = [v7 objectForKey:v4];
      v17 = v16;
      if (v16)
      {
        v10 = v16;
      }

      else
      {
        v18 = [v7 allValues];
        v10 = [v18 lastObject];
      }
    }
  }

  return v10;
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

- (void)setBackButtonBackgroundVerticalAdjustment:(double)a3 forBarMetrics:(int64_t)a4
{
  backButtonAppearance = self->backButtonAppearance;
  if (!backButtonAppearance)
  {
    v8 = objc_alloc_init(_UIBarBackButtonItemAppearanceStorage);
    v9 = self->backButtonAppearance;
    self->backButtonAppearance = v8;

    backButtonAppearance = self->backButtonAppearance;
  }

  [(_UIBarBackButtonItemAppearanceStorage *)backButtonAppearance setBackgroundVerticalAdjustment:a4 forBarMetrics:a3];
}

- (void)setBackButtonBackgroundImage:(id)a3 forState:(unint64_t)a4 isMini:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  backButtonAppearance = self->backButtonAppearance;
  v12 = v8;
  if (v8)
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

  [(_UIBarBackButtonItemAppearanceStorage *)backButtonAppearance setBackgroundImage:v12 forState:a4 isMini:v5];
  v8 = v12;
LABEL_6:
}

- (void)setBackButtonTitlePositionOffset:(id)a3
{
  v4 = a3;
  backButtonAppearance = self->backButtonAppearance;
  v8 = v4;
  if (v4)
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
  v4 = v8;
LABEL_6:
}

- (void)setMiniBackButtonTitlePositionOffset:(id)a3
{
  v4 = a3;
  backButtonAppearance = self->backButtonAppearance;
  v8 = v4;
  if (v4)
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
  v4 = v8;
LABEL_6:
}

@end