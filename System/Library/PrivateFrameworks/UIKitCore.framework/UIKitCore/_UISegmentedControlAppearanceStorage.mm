@interface _UISegmentedControlAppearanceStorage
- (BOOL)wantsTrackingSuppressed;
- (_UISegmentedControlAppearanceStorage)init;
- (double)backgroundPositionAdjustmentForBarMetrics:(int64_t)metrics;
- (id)anyDividerImage;
- (id)anyDividerImageForMini:(BOOL)mini;
- (id)backgroundImageForState:(unint64_t)state isMini:(BOOL)mini withFallback:(BOOL)fallback;
- (id)contentPositionOffsetForSegment:(int64_t)segment inMiniBar:(BOOL)bar noFallback:(BOOL)fallback;
- (id)dividerImageForLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState isMini:(BOOL)mini withFallback:(BOOL)fallback;
- (id)textAttributesForState:(unint64_t)state;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state isMini:(BOOL)mini;
- (void)setBackgroundPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)setContentPositionOffset:(id)offset forSegment:(int64_t)segment inMiniBar:(BOOL)bar;
- (void)setDetail:(id *)detail;
- (void)setDividerImage:(id)image forLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState isMini:(BOOL)mini;
- (void)setIsTiled:(BOOL)tiled leftCapWidth:(unint64_t)width rightCapWidth:(unint64_t)capWidth;
- (void)setTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)takeTextAttributesFrom:(id *)from forState:(unint64_t)state;
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

- (void)setBackgroundPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:metrics];
  v6 = [(NSMutableDictionary *)self->_backgroundPositionAdjustmentsForBarMetrics objectForKey:?];
  [v6 floatValue];
  v8 = v7;

  if (v8 != adjustment)
  {
    backgroundPositionAdjustmentsForBarMetrics = self->_backgroundPositionAdjustmentsForBarMetrics;
    if (!backgroundPositionAdjustmentsForBarMetrics)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_backgroundPositionAdjustmentsForBarMetrics;
      self->_backgroundPositionAdjustmentsForBarMetrics = v11;

      backgroundPositionAdjustmentsForBarMetrics = self->_backgroundPositionAdjustmentsForBarMetrics;
    }

    *&v9 = adjustment;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [(NSMutableDictionary *)backgroundPositionAdjustmentsForBarMetrics setObject:v13 forKey:v14];
  }
}

- (double)backgroundPositionAdjustmentForBarMetrics:(int64_t)metrics
{
  backgroundPositionAdjustmentsForBarMetrics = self->_backgroundPositionAdjustmentsForBarMetrics;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:metrics];
  v5 = [(NSMutableDictionary *)backgroundPositionAdjustmentsForBarMetrics objectForKey:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setContentPositionOffset:(id)offset forSegment:(int64_t)segment inMiniBar:(BOOL)bar
{
  barCopy = bar;
  offsetCopy = offset;
  if (barCopy)
  {
    v8 = 64;
  }

  else
  {
    v8 = 56;
  }

  v9 = *(&self->super.isa + v8);
  v10 = offsetCopy;
  if (offsetCopy | v9)
  {
    v11 = v9;
    if (!v9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(&self->super.isa + v8);
      *(&self->super.isa + v8) = v12;

      v11 = *(&self->super.isa + v8);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:segment];
    if (offsetCopy)
    {
      [v11 setObject:offsetCopy forKey:v14];
    }

    else
    {
      [v11 removeObjectForKey:v14];
    }

    v10 = offsetCopy;
  }
}

- (id)contentPositionOffsetForSegment:(int64_t)segment inMiniBar:(BOOL)bar noFallback:(BOOL)fallback
{
  v7 = 56;
  if (bar)
  {
    v7 = 64;
  }

  v8 = *(&self->super.isa + v7);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:segment];
  v10 = [v8 objectForKey:v9];

  if (!fallback && !v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v10 = [v8 objectForKey:v11];
  }

  return v10;
}

- (void)setBackgroundImage:(id)image forState:(unint64_t)state isMini:(BOOL)mini
{
  miniCopy = mini;
  imageCopy = image;
  if (miniCopy)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(&self->super.isa + v8);
  v10 = imageCopy;
  if (imageCopy | v9)
  {
    v11 = v9;
    if (!v9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(&self->super.isa + v8);
      *(&self->super.isa + v8) = v12;

      v11 = *(&self->super.isa + v8);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    if (imageCopy)
    {
      [v11 setObject:imageCopy forKey:v14];
    }

    else
    {
      [v11 removeObjectForKey:v14];
    }

    v10 = imageCopy;
  }
}

- (id)backgroundImageForState:(unint64_t)state isMini:(BOOL)mini withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  miniCopy = mini;
  v9 = 8;
  if (mini)
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
    v11 = !miniCopy;
  }

  if (!v11 && fallbackCopy)
  {
    v10 = self->_backgroundImages;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v14 = [(NSMutableDictionary *)v10 objectForKey:v13];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = !fallbackCopy;
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

- (void)setDividerImage:(id)image forLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState isMini:(BOOL)mini
{
  miniCopy = mini;
  imageCopy = image;
  if (miniCopy)
  {
    v10 = 32;
  }

  else
  {
    v10 = 24;
  }

  v11 = *(&self->super.isa + v10);
  v12 = imageCopy;
  if (imageCopy | v11)
  {
    v13 = v11;
    if (!v11)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = *(&self->super.isa + v10);
      *(&self->super.isa + v10) = v14;

      v13 = *(&self->super.isa + v10);
    }

    state = [MEMORY[0x1E696AD98] numberWithInteger:segmentState + 100 * state];
    if (imageCopy)
    {
      [v13 setObject:imageCopy forKey:state];
    }

    else
    {
      [v13 removeObjectForKey:state];
    }

    v12 = imageCopy;
  }
}

- (id)dividerImageForLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState isMini:(BOOL)mini withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  miniCopy = mini;
  v11 = 24;
  if (mini)
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
    v13 = !miniCopy;
  }

  if (!v13 && fallbackCopy)
  {
    v12 = self->_dividerImages;
  }

  state = [MEMORY[0x1E696AD98] numberWithInteger:segmentState + 100 * state];
  v16 = [(NSMutableDictionary *)v12 objectForKey:state];
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = !fallbackCopy;
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
      v16 = [(NSMutableDictionary *)dividerImages objectForKey:state];
    }
  }

  return v16;
}

- (id)anyDividerImageForMini:(BOOL)mini
{
  v4 = 24;
  if (mini)
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
    lastObject = v7;
  }

  else
  {
    allValues = [(NSMutableDictionary *)v5 allValues];
    lastObject = [allValues lastObject];
  }

  return lastObject;
}

- (void)setTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  textAttributesForState = self->_textAttributesForState;
  if (attributesCopy)
  {
    v13 = attributesCopy;
    if (!textAttributesForState)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_textAttributesForState;
      self->_textAttributesForState = v8;

      attributesCopy = v13;
    }

    v10 = [attributesCopy copy];
    v11 = self->_textAttributesForState;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];
  }

  else
  {
    if (!textAttributesForState)
    {
      goto LABEL_8;
    }

    v13 = 0;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)textAttributesForState removeObjectForKey:v10];
  }

  attributesCopy = v13;
LABEL_8:
}

- (id)textAttributesForState:(unint64_t)state
{
  textAttributesForState = self->_textAttributesForState;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v5 = [(NSMutableDictionary *)textAttributesForState objectForKey:v4];

  return v5;
}

- (void)takeTextAttributesFrom:(id *)from forState:(unint64_t)state
{
  v7 = [(_UISegmentedControlAppearanceStorage *)self textAttributesForState:state];
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

  [v12 setValue:from->var3 forKey:*off_1E70EC920];
  if (from->var4)
  {
    v11 = objc_alloc_init(off_1E70ECB90);
    [v11 setShadowColor:from->var4];
    [v11 setShadowOffset:{from->var5.width, from->var5.height}];
  }

  else
  {
    v11 = 0;
  }

  [v12 setValue:v11 forKey:*off_1E70EC9B0];
  [(_UISegmentedControlAppearanceStorage *)self setTextAttributes:v12 forState:state];
}

- (void)setDetail:(id *)detail
{
  if (detail)
  {
    self->_legacySuppressOptionsBackground = 1;
    self->_legacyDontHighlight = detail->var7;
    var1 = detail->var1;
    if (detail->var2 != 0.0 || var1 != 0.0)
    {
      v23[0] = *&detail->var2;
      *&v23[1] = var1;
      v6 = [MEMORY[0x1E696B098] valueWithBytes:v23 objCType:"{UIOffset=dd}"];
      v7 = detail->var1;
      v22[0] = -detail->var2;
      v22[1] = v7;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{UIOffset=dd}"];
      v9 = detail->var1;
      v21[0] = 0;
      *&v21[1] = v9;
      v10 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{UIOffset=dd}"];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v6 forSegment:4 inMiniBar:0];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v6 forSegment:1 inMiniBar:0];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v8 forSegment:3 inMiniBar:0];
      [(_UISegmentedControlAppearanceStorage *)self setContentPositionOffset:v10 forSegment:2 inMiniBar:0];
    }

    [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:detail->var3.var0 forState:0 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:detail->var4.var0 forState:4 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:detail->var6.var0 forState:2 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var3.var1 forLeftSegmentState:0 rightSegmentState:0 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var4.var1 forLeftSegmentState:0 rightSegmentState:4 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var4.var2 forLeftSegmentState:4 rightSegmentState:0 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var6.var1 forLeftSegmentState:0 rightSegmentState:2 isMini:0];
    [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var6.var2 forLeftSegmentState:2 rightSegmentState:0 isMini:0];
    v11 = [(_UISegmentedControlAppearanceStorage *)self textAttributesForState:0];
    v12 = [v11 mutableCopy];

    if (detail->var0 && !v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v12 setValue:? forKey:?];
    [(_UISegmentedControlAppearanceStorage *)self setTextAttributes:v12 forState:0];
    if (detail->var3.var3 || detail->var3.var4)
    {
      v13 = *&detail->var3.var2;
      v17 = *&detail->var3.var0;
      v18 = v13;
      v19 = *&detail->var3.var4;
      height = detail->var3.var5.height;
      [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:0];
    }

    if (detail->var4.var3 || detail->var4.var4)
    {
      v14 = *&detail->var4.var2;
      v17 = *&detail->var4.var0;
      v18 = v14;
      v19 = *&detail->var4.var4;
      height = detail->var4.var5.height;
      [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:4];
    }

    if (detail->var6.var3 || detail->var6.var4)
    {
      v15 = *&detail->var6.var2;
      v17 = *&detail->var6.var0;
      v18 = v15;
      v19 = *&detail->var6.var4;
      height = detail->var6.var5.height;
      [(_UISegmentedControlAppearanceStorage *)self takeTextAttributesFrom:&v17 forState:2];
    }

    if (!detail->var7)
    {
      [(_UISegmentedControlAppearanceStorage *)self setBackgroundImage:detail->var5.var0 forState:1 isMini:0];
      [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var5.var1 forLeftSegmentState:0 rightSegmentState:1 isMini:0];
      [(_UISegmentedControlAppearanceStorage *)self setDividerImage:detail->var5.var2 forLeftSegmentState:1 rightSegmentState:0 isMini:0];
      if (detail->var5.var3 || detail->var5.var4)
      {
        v16 = *&detail->var5.var2;
        v17 = *&detail->var5.var0;
        v18 = v16;
        v19 = *&detail->var5.var4;
        height = detail->var5.var5.height;
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

- (void)setIsTiled:(BOOL)tiled leftCapWidth:(unint64_t)width rightCapWidth:(unint64_t)capWidth
{
  self->_isTiled = tiled;
  self->_leftCapWidth = width;
  self->_rightCapWidth = capWidth;
}

@end