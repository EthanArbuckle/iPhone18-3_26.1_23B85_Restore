@interface _UINavigationBarAppearanceStorage
- (_UIBarButtonItemAppearanceStorage)barButtonAppearanceStorage;
- (double)titleVerticalAdjustmentForBarMetrics:(int64_t)metrics;
- (id)representativeImageForIdiom:(int64_t)idiom;
- (void)setTitleVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
@end

@implementation _UINavigationBarAppearanceStorage

- (void)setTitleVerticalAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:metrics];
  v6 = [(NSMutableDictionary *)self->titleVerticalAdjustmentsForBarMetrics objectForKey:?];
  [v6 floatValue];
  v8 = v7;

  if (v8 != adjustment)
  {
    titleVerticalAdjustmentsForBarMetrics = self->titleVerticalAdjustmentsForBarMetrics;
    if (!titleVerticalAdjustmentsForBarMetrics)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->titleVerticalAdjustmentsForBarMetrics;
      self->titleVerticalAdjustmentsForBarMetrics = v11;

      titleVerticalAdjustmentsForBarMetrics = self->titleVerticalAdjustmentsForBarMetrics;
    }

    *&v9 = adjustment;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [(NSMutableDictionary *)titleVerticalAdjustmentsForBarMetrics setObject:v13 forKey:v14];
  }
}

- (double)titleVerticalAdjustmentForBarMetrics:(int64_t)metrics
{
  titleVerticalAdjustmentsForBarMetrics = self->titleVerticalAdjustmentsForBarMetrics;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)titleVerticalAdjustmentsForBarMetrics objectForKey:v6];

  if (!v7)
  {
    if (metrics == 101)
    {
      v8 = &unk_1EFE2FBC0;
    }

    else
    {
      if (metrics != 102)
      {
        v7 = 0;
        goto LABEL_8;
      }

      v8 = &unk_1EFE2FBD8;
    }

    v7 = [(NSMutableDictionary *)self->titleVerticalAdjustmentsForBarMetrics objectForKeyedSubscript:v8];
  }

LABEL_8:
  [v7 floatValue];
  v10 = v9;

  return v10;
}

- (_UIBarButtonItemAppearanceStorage)barButtonAppearanceStorage
{
  buttonAppearanceStorage = self->buttonAppearanceStorage;
  if (!buttonAppearanceStorage)
  {
    v4 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    v5 = self->buttonAppearanceStorage;
    self->buttonAppearanceStorage = v4;

    buttonAppearanceStorage = self->buttonAppearanceStorage;
  }

  return buttonAppearanceStorage;
}

- (id)representativeImageForIdiom:(int64_t)idiom
{
  v4 = [(_UIBarAppearanceStorage *)self backgroundImageForBarPosition:0 barMetrics:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(_UIBarAppearanceStorage *)self backgroundImageForBarPosition:3 barMetrics:0];
  }

  v7 = v6;

  return v7;
}

@end