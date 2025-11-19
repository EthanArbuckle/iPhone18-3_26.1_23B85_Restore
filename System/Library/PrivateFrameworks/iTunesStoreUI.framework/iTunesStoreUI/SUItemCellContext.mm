@interface SUItemCellContext
- ($91CE74A43BC82DB31014AD40E653447B)stringSizeCacheKeyCallBacks;
- (CGSize)sizeForString:(id)a3 font:(id)a4 constrainedToSize:(CGSize)a5;
- (SUItemCellContext)init;
- (id)ratingImageForRating:(float)a3 style:(int64_t)a4;
- (void)dealloc;
- (void)resetLayoutCaches;
- (void)setStringSizeCacheKeyCallBacks:(id *)a3;
@end

@implementation SUItemCellContext

- (SUItemCellContext)init
{
  v3.receiver = self;
  v3.super_class = SUItemCellContext;
  result = [(SUItemCellContext *)&v3 init];
  if (result)
  {
    *&result->_stringSizeCacheKeyCallBacks.version = 0u;
    *&result->_stringSizeCacheKeyCallBacks.release = 0u;
    *&result->_stringSizeCacheKeyCallBacks.equal = 0u;
  }

  return result;
}

- (void)dealloc
{
  cachedRatingImages = self->_cachedRatingImages;
  if (cachedRatingImages)
  {
    CFRelease(cachedRatingImages);
    self->_cachedRatingImages = 0;
  }

  stringSizes = self->_stringSizes;
  if (stringSizes)
  {
    CFRelease(stringSizes);
    self->_stringSizes = 0;
  }

  v5.receiver = self;
  v5.super_class = SUItemCellContext;
  [(SUArtworkCellContext *)&v5 dealloc];
}

- (id)ratingImageForRating:(float)a3 style:(int64_t)a4
{
  cachedRatingImages = self->_cachedRatingImages;
  if (!cachedRatingImages)
  {
    cachedRatingImages = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    self->_cachedRatingImages = cachedRatingImages;
  }

  v8 = rintf(a3 * 10.0);
  Value = CFDictionaryGetValue(cachedRatingImages, v8);
  if (!Value)
  {
    v10 = [MEMORY[0x1E69DC888] clearColor];
    *&v11 = a3;
    Value = [SUUserRatingView copyImageForRating:v10 backgroundColor:a4 style:v11];
    if (Value)
    {
      CFDictionarySetValue(self->_cachedRatingImages, v8, Value);
    }
  }

  return Value;
}

- (CGSize)sizeForString:(id)a3 font:(id)a4 constrainedToSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  stringSizes = self->_stringSizes;
  if (stringSizes)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_12;
  }

  stringSizes = CFDictionaryCreateMutable(0, 0, &self->_stringSizeCacheKeyCallBacks, MEMORY[0x1E695E9E8]);
  self->_stringSizes = stringSizes;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  Value = CFDictionaryGetValue(stringSizes, a3);
  if (Value)
  {
    [Value CGSizeValue];
    if (v13 < height)
    {
      height = v13;
    }

    if (v12 < width)
    {
      width = v12;
    }
  }

  else
  {
    [a3 _legacy_sizeWithFont:a4 constrainedToSize:4 lineBreakMode:{width, height}];
    width = v14;
    height = v15;
    CFDictionarySetValue(self->_stringSizes, a3, [MEMORY[0x1E696B098] valueWithCGSize:?]);
  }

LABEL_12:
  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)resetLayoutCaches
{
  stringSizes = self->_stringSizes;
  if (stringSizes)
  {
    CFRelease(stringSizes);
    self->_stringSizes = 0;
  }

  v4.receiver = self;
  v4.super_class = SUItemCellContext;
  [(SUCellConfigurationContext *)&v4 resetLayoutCaches];
}

- ($91CE74A43BC82DB31014AD40E653447B)stringSizeCacheKeyCallBacks
{
  v3 = *&self[1].var3;
  *&retstr->var0 = *&self[1].var1;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var5;
  return self;
}

- (void)setStringSizeCacheKeyCallBacks:(id *)a3
{
  v4 = *&a3->var2;
  v3 = *&a3->var4;
  *&self->_stringSizeCacheKeyCallBacks.version = *&a3->var0;
  *&self->_stringSizeCacheKeyCallBacks.release = v4;
  *&self->_stringSizeCacheKeyCallBacks.equal = v3;
}

@end