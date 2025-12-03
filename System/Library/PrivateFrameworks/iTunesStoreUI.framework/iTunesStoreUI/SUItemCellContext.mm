@interface SUItemCellContext
- ($91CE74A43BC82DB31014AD40E653447B)stringSizeCacheKeyCallBacks;
- (CGSize)sizeForString:(id)string font:(id)font constrainedToSize:(CGSize)size;
- (SUItemCellContext)init;
- (id)ratingImageForRating:(float)rating style:(int64_t)style;
- (void)dealloc;
- (void)resetLayoutCaches;
- (void)setStringSizeCacheKeyCallBacks:(id *)backs;
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

- (id)ratingImageForRating:(float)rating style:(int64_t)style
{
  cachedRatingImages = self->_cachedRatingImages;
  if (!cachedRatingImages)
  {
    cachedRatingImages = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    self->_cachedRatingImages = cachedRatingImages;
  }

  v8 = rintf(rating * 10.0);
  Value = CFDictionaryGetValue(cachedRatingImages, v8);
  if (!Value)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    *&v11 = rating;
    Value = [SUUserRatingView copyImageForRating:clearColor backgroundColor:style style:v11];
    if (Value)
    {
      CFDictionarySetValue(self->_cachedRatingImages, v8, Value);
    }
  }

  return Value;
}

- (CGSize)sizeForString:(id)string font:(id)font constrainedToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  stringSizes = self->_stringSizes;
  if (stringSizes)
  {
    if (string)
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
  if (!string)
  {
    goto LABEL_10;
  }

LABEL_3:
  Value = CFDictionaryGetValue(stringSizes, string);
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
    [string _legacy_sizeWithFont:font constrainedToSize:4 lineBreakMode:{width, height}];
    width = v14;
    height = v15;
    CFDictionarySetValue(self->_stringSizes, string, [MEMORY[0x1E696B098] valueWithCGSize:?]);
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

- (void)setStringSizeCacheKeyCallBacks:(id *)backs
{
  v4 = *&backs->var2;
  v3 = *&backs->var4;
  *&self->_stringSizeCacheKeyCallBacks.version = *&backs->var0;
  *&self->_stringSizeCacheKeyCallBacks.release = v4;
  *&self->_stringSizeCacheKeyCallBacks.equal = v3;
}

@end