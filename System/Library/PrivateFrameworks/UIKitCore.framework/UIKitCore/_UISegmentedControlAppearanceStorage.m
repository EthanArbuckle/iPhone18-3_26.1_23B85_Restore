@interface _UISegmentedControlAppearanceStorage
- (BOOL)wantsTrackingSuppressed;
- (_UISegmentedControlAppearanceStorage)init;
- (double)backgroundPositionAdjustmentForBarMetrics:(int64_t)a3;
- (id)anyDividerImage;
- (id)anyDividerImageForMini:(BOOL)a3;
- (id)backgroundImageForState:(unint64_t)a3 isMini:(BOOL)a4 withFallback:(BOOL)a5;
- (id)contentPositionOffsetForSegment:(int64_t)a3 inMiniBar:(BOOL)a4 noFallback:(BOOL)a5;
- (id)dividerImageForLeftSegmentState:(unint64_t)a3 rightSegmentState:(unint64_t)a4 isMini:(BOOL)a5 withFallback:(BOOL)a6;
- (id)textAttributesForState:(unint64_t)a3;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 isMini:(BOOL)a5;
- (void)setBackgroundPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)setContentPositionOffset:(id)a3 forSegment:(int64_t)a4 inMiniBar:(BOOL)a5;
- (void)setDetail:(id *)a3;
- (void)setDividerImage:(id)a3 forLeftSegmentState:(unint64_t)a4 rightSegmentState:(unint64_t)a5 isMini:(BOOL)a6;
- (void)setIsTiled:(BOOL)a3 leftCapWidth:(unint64_t)a4 rightCapWidth:(unint64_t)a5;
- (void)setTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)takeTextAttributesFrom:(id *)a3 forState:(unint64_t)a4;
@end

@implementation _UISegmentedControlAppearanceStorage

- (_UISegmentedControlAppearanceStorage)init
{
  v4.receiver = self;
  v4.super_class = _UISegmentedControlAppearanceStorage;
  result = [(_UISegmentedControlAppearanceStorage *)&v4 init];
  if (result)
  {
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    *&result->_leftCapWidth = vnegq_f64(v3);
  }

  return result;
}

- (id)anyDividerImage
{
  v3 = [(_UISegmentedControlAppearanceStorage *)self anyDividerImageForMini:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UISegmentedControlAppearanceStorage *)self anyDividerImageForMini:1];
  }

  v6 = v5;

  return v6;
}

- (BOOL)wantsTrackingSuppressed
{
  if (self->_legacyDontHighlight)
  {
    return 1;
  }

  backgroundImages = self->_backgroundImages;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [(NSMutableDictionary *)backgroundImages objectForKey:v5];
  if (v6)
  {
    v2 = 0;
  }

  else
  {
    miniBackgroundImages = self->_miniBackgroundImages;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v9 = [(NSMutableDictionary *)miniBackgroundImages objectForKey:v8];
    v2 = v9 == 0;
  }

  return v2;
}

- (void)setBackgroundPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4
{
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v6 = [(NSMutableDictionary *)self->_backgroundPositionAdjustmentsForBarMetrics objectForKey:?];
  [v6 floatValue];
  v8 = v7;

  if (v8 != a3)
  {
    backgroundPositionAdjustmentsForBarMetrics = self->_backgroundPositionAdjustmentsForBarMetrics;
    if (!backgroundPositionAdjustmentsForBarMetrics)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_backgroundPositionAdjustmentsForBarMetrics;
      self->_backgroundPositionAdjustmentsForBarMetrics = v11;

      backgroundPositionAdjustmentsForBarMetrics = self->_backgroundPositionAdjustmentsForBarMetrics;
    }

    *&v9 = a3;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [(NSMutableDictionary *)backgroundPositionAdjustmentsForBarMetrics setObject:v13 forKey:v14];
  }
}

- (double)backgroundPositionAdjustmentForBarMetrics:(int64_t)a3
{
  backgroundPositionAdjustmentsForBarMetrics = self->_backgroundPositionAdjustmentsForBarMetrics;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)backgroundPositionAdjustmentsForBarMetrics objectForKey:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setContentPositionOffset:(id)a3 forSegment:(int64_t)a4 inMiniBar:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  if (v5)
  {
    v8 = 64;
  }

  else
  {
    v8 = 56;
  }

  v9 = *(&self->super.isa + v8);
  v10 = v15;
  if (v15 | v9)
  {
    v11 = v9;
    if (!v9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(&self->super.isa + v8);
      *(&self->super.isa + v8) = v12;

      v11 = *(&self->super.isa + v8);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    if (v15)
    {
      [v11 setObject:v15 forKey:v14];
    }

    else
    {
      [v11 removeObjectForKey:v14];
    }

    v10 = v15;
  }
}

- (id)contentPositionOffsetForSegment:(int64_t)a3 inMiniBar:(BOOL)a4 noFallback:(BOOL)a5
{
  v7 = 56;
  if (a4)
  {
    v7 = 64;
  }

  v8 = *(&self->super.isa + v7);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [v8 objectForKey:v9];

  if (!a5 && !v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v10 = [v8 objectForKey:v11];
  }

  return v10;
}

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 isMini:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  if (v5)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(&self->super.isa + v8);
  v10 = v15;
  if (v15 | v9)
  {
    v11 = v9;
    if (!v9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(&self->super.isa + v8);
      *(&self->super.isa + v8) = v12;

      v11 = *(&self->super.isa + v8);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    if (v15)
    {
      [v11 setObject:v15 forKey:v14];
    }

    else
    {
      [v11 removeObjectForKey:v14];
    }

    v10 = v15;
  }
}

- (id)backgroundImageForState:(unint64_t)a3 isMini:(BOOL)a4 withFallback:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = 8;
  if (a4)
  {
    v9 = 16;
  }

  v10 = *(&self->super.isa + v9);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = !v6;
  }

  if (!v11 && v5)
  {
    v10 = self->_backgroundImages;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v14 = [(NSMutableDictionary *)v10 objectForKey:v13];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = !v5;
  }

  if (!v15)
  {
    if (v10 == self->_backgroundImages)
    {
      v14 = 0;
    }

    else
    {
      v14 = [(NSMutableDictionary *)v10 objectForKey:v13];
    }
  }

  return v14;
}

- (void)setDividerImage:(id)a3 forLeftSegmentState:(unint64_t)a4 rightSegmentState:(unint64_t)a5 isMini:(BOOL)a6
{
  v6 = a6;
  v17 = a3;
  if (v6)
  {
    v10 = 32;
  }

  else
  {
    v10 = 24;
  }

  v11 = *(&self->super.isa + v10);
  v12 = v17;
  if (v17 | v11)
  {
    v13 = v11;
    if (!v11)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = *(&self->super.isa + v10);
      *(&self->super.isa + v10) = v14;

      v13 = *(&self->super.isa + v10);
    }

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a5 + 100 * a4];
    if (v17)
    {
      [v13 setObject:v17 forKey:v16];
    }

    else
    {
      [v13 removeObjectForKey:v16];
    }

    v12 = v17;
  }
}

- (id)dividerImageForLeftSegmentState:(unint64_t)a3 rightSegmentState:(unint64_t)a4 isMini:(BOOL)a5 withFallback:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = 24;
  if (a5)
  {
    v11 = 32;
  }

  v12 = *(&self->super.isa + v11);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = !v7;
  }

  if (!v13 && v6)
  {
    v12 = self->_dividerImages;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4 + 100 * a3];
  v16 = [(NSMutableDictionary *)v12 objectForKey:v15];
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = !v6;
  }

  if (!v17)
  {
    dividerImages = self->_dividerImages;
    if (v12 == dividerImages)
    {
      v16 = 0;
    }

    else
    {
      v16 = [(NSMutableDictionary *)dividerImages objectForKey:v15];
    }
  }

  return v16;
}

- (id)anyDividerImageForMini:(BOOL)a3
{
  v4 = 24;
  if (a3)
  {
    v4 = 32;
  }

  v5 = *(&self->super.isa + v4);
  if (!v5)
  {
    v5 = self->_dividerImages;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v7 = [(NSMutableDictionary *)v5 objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(NSMutableDictionary *)v5 allValues];
    v9 = [v10 lastObject];
  }

  return v9;
}

- (void)setTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  textAttributesForState = self->_textAttributesForState;
  if (v6)
  {
    v13 = v6;
    if (!textAttributesForState)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_textAttributesForState;
      self->_textAttributesForState = v8;

      v6 = v13;
    }

    v10 = [v6 copy];
    v11 = self->_textAttributesForState;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];
  }

  else
  {
    if (!textAttributesForState)
    {
      goto LABEL_8;
    }

    v13 = 0;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)textAttributesForState removeObjectForKey:v10];
  }

  v6 = v13;
LABEL_8:
}

- (id)textAttributesForState:(unint64_t)a3
{
  textAttributesForState = self->_textAttributesForState;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)textAttributesForState objectForKey:v4];

  return v5;
}

- (void)takeTextAttributesFrom:(id *)a3 forState:(unint64_t)a4
{
  v7 = [(_UISegmentedControlAppearanceStorage *)self textAttributesForState:a4];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v10;

  [v12 setValue:a3->var3 forKey:*off_1E70EC920];
  if (a3->var4)
  {
    v11 = objc_alloc_init(off_1E70ECB90);
    [v11 setShadowColor:a3->var4];
    [v11 setShadowOffset:{a3->var5.width, a3->var5.height}];
  }

  else
  {
    v11 = 0;
  }

  [v12 setValue:v11 forKey:*off_1E70EC9B0];
  [(_UISegmentedControlAppearanceStorage *)self setTextAttributes:v12 forState:a4];
}

- (void)setDetail:(id *)a3
{
  if (a3)
  {
    self->_legacySuppressOptionsBackground = 1;
    self->_legacyDontHighlight = a3->var7;
    var1 = a3->var1;
    if (a3->var2 != 0.0 || var1 != 0.0)
    {
      v23[0] = *&a3->var2;
      *&v23[1] = var1;
      v6 = [MEMORY[0x1E696B098] valueWithBytes:v23 objCType:"{UIOffset=dd}"];
      v7 = a3->var1;
      v22[0] = -a3->var2;
      v22[1] = v7;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{UIOffset=dd}"];
      v9 = a3->var1;
      v21[0] = 0;
      *&v21[1] = v9;
      v10 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{UIOffset=dd}"];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v6 forSegment:4 inMiniBar:0];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v6 forSegment:1 inMiniBar:0];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v8 forSegment:3 inMiniBar:0];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v10 forSegment:2 inMiniBar:0];
    }

    [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:a3->var3.var0 forState:0 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:a3->var4.var0 forState:4 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:a3->var6.var0 forState:2 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var3.var1 forLeftSegmentState:0 rightSegmentState:0 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var4.var1 forLeftSegmentState:0 rightSegmentState:4 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var4.var2 forLeftSegmentState:4 rightSegmentState:0 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var6.var1 forLeftSegmentState:0 rightSegmentState:2 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var6.var2 forLeftSegmentState:2 rightSegmentState:0 isMini:0];
    v11 = [(_UISegmentedControlAppearanceStorage *)self textAttributesForState:0];
    v12 = [v11 mutableCopy];

    if (a3->var0 && !v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v12 setValue:? forKey:?];
    [(_UISegmentedControlAppearanceStorage *)self setTextAttributes:v12 forState:0];
    if (a3->var3.var3 || a3->var3.var4)
    {
      v13 = *&a3->var3.var2;
      v17 = *&a3->var3.var0;
      v18 = v13;
      v19 = *&a3->var3.var4;
      height = a3->var3.var5.height;
      [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:0];
    }

    if (a3->var4.var3 || a3->var4.var4)
    {
      v14 = *&a3->var4.var2;
      v17 = *&a3->var4.var0;
      v18 = v14;
      v19 = *&a3->var4.var4;
      height = a3->var4.var5.height;
      [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:4];
    }

    if (a3->var6.var3 || a3->var6.var4)
    {
      v15 = *&a3->var6.var2;
      v17 = *&a3->var6.var0;
      v18 = v15;
      v19 = *&a3->var6.var4;
      height = a3->var6.var5.height;
      [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:2];
    }

    if (!a3->var7)
    {
      [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:a3->var5.var0 forState:1 isMini:0];
      [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var5.var1 forLeftSegmentState:0 rightSegmentState:1 isMini:0];
      [(_UISegmentedControlAppearanceStorage *)self setDividerImage:a3->var5.var2 forLeftSegmentState:1 rightSegmentState:0 isMini:0];
      if (a3->var5.var3 || a3->var5.var4)
      {
        v16 = *&a3->var5.var2;
        v17 = *&a3->var5.var0;
        v18 = v16;
        v19 = *&a3->var5.var4;
        height = a3->var5.var5.height;
        [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:1];
      }
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_backgroundImages removeAllObjects];
    [(NSMutableDictionary *)self->_dividerImages removeAllObjects];
    *&self->_legacyDontHighlight = 0;
  }
}

- (void)setIsTiled:(BOOL)a3 leftCapWidth:(unint64_t)a4 rightCapWidth:(unint64_t)a5
{
  self->_isTiled = a3;
  self->_leftCapWidth = a4;
  self->_rightCapWidth = a5;
}

@end