@interface NSString(NSStringDrawing)
+ (BOOL)usesScreenFonts;
+ (NSStringDrawingTextStorageSettings)setTypesetterBehavior:()NSStringDrawing;
+ (NSStringDrawingTextStorageSettings)setUsesScreenFonts:()NSStringDrawing;
+ (NSStringDrawingTextStorageSettings)showsControlCharacters;
+ (NSStringDrawingTextStorageSettings)showsInvisibleCharacters;
+ (NSStringDrawingTextStorageSettings)usesFontLeading;
+ (float)hyphenationFactor;
+ (int64_t)typesetterBehavior;
+ (uint64_t)defaultBaselineOffsetForFont:()NSStringDrawing;
+ (uint64_t)defaultLineHeightForFont:()NSStringDrawing;
+ (void)setHyphenationFactor:()NSStringDrawing;
+ (void)setShowsControlCharacters:()NSStringDrawing;
+ (void)setShowsInvisibleCharacters:()NSStringDrawing;
+ (void)setUsesFontLeading:()NSStringDrawing;
- (double)sizeWithAttributes:()NSStringDrawing;
- (void)drawAtPoint:()NSStringDrawing withAttributes:;
- (void)drawInRect:()NSStringDrawing withAttributes:;
@end

@implementation NSString(NSStringDrawing)

+ (int64_t)typesetterBehavior
{
  if (+[NSStringDrawingTextStorage _hasCustomSettings])
  {
    v0 = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    if (v0)
    {
      return *(&v0->_settings._flags + 1);
    }
  }

  return +[NSTypesetter defaultStringDrawingTypesetterBehavior];
}

- (void)drawAtPoint:()NSStringDrawing withAttributes:
{
  v9 = MEMORY[0x193AD39D0](0.15);
  MEMORY[0x193AD39E0](0.0);
  if (!a5)
  {
    a5 = +[NSAttributeDictionary emptyAttributeDictionary];
  }

  _NSStringDrawingCore(self, a5, 1, 0, a2, a3, 0.0, 0.0, 0.0, v10, 0);
  MEMORY[0x193AD39D0](v9);

  JUMPOUT(0x193AD39E0);
}

- (void)drawInRect:()NSStringDrawing withAttributes:
{
  if (a4 > 0.0 && a5 > 0.0)
  {
    if (!a7)
    {
      a7 = +[NSAttributeDictionary emptyAttributeDictionary];
    }

    _NSStringDrawingCore(self, a7, 1, 0, a2, a3, a4, a5, 0.0, a9, 0);
  }
}

- (double)sizeWithAttributes:()NSStringDrawing
{
  v5 = MEMORY[0x193AD39D0](0.15);
  v6 = MEMORY[0x193AD39E0](0.0);
  v7 = [self boundingRectWithSize:1 options:a3 attributes:0 context:{*MEMORY[0x1E696AA88], *(MEMORY[0x1E696AA88] + 8)}];
  v9 = v8;
  v10 = MEMORY[0x193AD39D0](v7, v5);
  MEMORY[0x193AD39E0](v10, v6);
  return v9;
}

+ (NSStringDrawingTextStorageSettings)usesFontLeading
{
  result = +[NSStringDrawingTextStorage _hasCustomSettings];
  if (result)
  {
    result = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    if (result)
    {
      return (*&result->_settings._flags & 1);
    }
  }

  return result;
}

+ (void)setUsesFontLeading:()NSStringDrawing
{
  if (a3)
  {
    [NSStringDrawingTextStorage _setHasCustomSettings:1];
    +[NSStringDrawingTextStorage _hasCustomSettings];
    v3 = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    *&v3->_settings._flags |= 1uLL;
  }
}

+ (BOOL)usesScreenFonts
{
  if (+[NSStringDrawingTextStorage _hasCustomSettings])
  {
    v0 = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    if (v0)
    {
      return (*&v0->_settings._flags >> 1) & 1;
    }
  }

  return +[NSLayoutManager _usesScreenFonts];
}

+ (NSStringDrawingTextStorageSettings)setUsesScreenFonts:()NSStringDrawing
{
  result = +[NSLayoutManager _usesScreenFonts];
  if (result != a3)
  {
    [NSStringDrawingTextStorage _setHasCustomSettings:1];
    +[NSStringDrawingTextStorage _hasCustomSettings];
    result = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    v5 = 2;
    if (!a3)
    {
      v5 = 0;
    }

    result->_settings._flags = (*&result->_settings._flags & 0xFFFFFFFFFFFFFFFDLL | v5);
  }

  return result;
}

+ (void)setShowsInvisibleCharacters:()NSStringDrawing
{
  if (a3)
  {
    [NSStringDrawingTextStorage _setHasCustomSettings:1];
    +[NSStringDrawingTextStorage _hasCustomSettings];
    v3 = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    *&v3->_settings._flags |= 4uLL;
  }
}

+ (NSStringDrawingTextStorageSettings)showsInvisibleCharacters
{
  result = +[NSStringDrawingTextStorage _hasCustomSettings];
  if (result)
  {
    result = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    if (result)
    {
      return ((*&result->_settings._flags >> 2) & 1);
    }
  }

  return result;
}

+ (void)setShowsControlCharacters:()NSStringDrawing
{
  if (a3)
  {
    [NSStringDrawingTextStorage _setHasCustomSettings:1];
    +[NSStringDrawingTextStorage _hasCustomSettings];
    v3 = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    *&v3->_settings._flags |= 8uLL;
  }
}

+ (NSStringDrawingTextStorageSettings)showsControlCharacters
{
  result = +[NSStringDrawingTextStorage _hasCustomSettings];
  if (result)
  {
    result = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    if (result)
    {
      return ((*&result->_settings._flags >> 3) & 1);
    }
  }

  return result;
}

+ (void)setHyphenationFactor:()NSStringDrawing
{
  if (self != 0.0)
  {
    [NSStringDrawingTextStorage _setHasCustomSettings:1];
    +[NSStringDrawingTextStorage _hasCustomSettings];
    [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?]->_settings._hyphenationFactor = self;
  }
}

+ (float)hyphenationFactor
{
  v0 = 0.0;
  if (+[NSStringDrawingTextStorage _hasCustomSettings])
  {
    v1 = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    if (v1)
    {
      return v1->_settings._hyphenationFactor;
    }
  }

  return v0;
}

+ (NSStringDrawingTextStorageSettings)setTypesetterBehavior:()NSStringDrawing
{
  if (a3 >= 6)
  {
    v3 = 6;
  }

  else
  {
    v3 = a3;
  }

  if (+[NSStringDrawingTextStorage _hasCustomSettings](NSStringDrawingTextStorage, "_hasCustomSettings") && +[NSStringDrawingTextStorage _hasCustomSettings](NSStringDrawingTextStorage, "_hasCustomSettings") && +[NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:](NSStringDrawingTextStorageSettings, 0) || (result = +[NSTypesetter defaultStringDrawingTypesetterBehavior], v3 != result))
  {
    [NSStringDrawingTextStorage _setHasCustomSettings:1];
    +[NSStringDrawingTextStorage _hasCustomSettings];
    result = [NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?];
    result->_settings._flags = (*&result->_settings._flags & 0xFFFFFFFFFFFF00FFLL | (v3 << 8));
  }

  return result;
}

+ (uint64_t)defaultLineHeightForFont:()NSStringDrawing
{
  v4 = [+[NSStringDrawingTextStorage stringDrawingTextStorage](NSStringDrawingTextStorage "stringDrawingTextStorage")];

  return [v4 defaultLineHeightForFont:a3];
}

+ (uint64_t)defaultBaselineOffsetForFont:()NSStringDrawing
{
  v4 = [+[NSStringDrawingTextStorage stringDrawingTextStorage](NSStringDrawingTextStorage "stringDrawingTextStorage")];

  return [v4 defaultBaselineOffsetForFont:a3];
}

@end