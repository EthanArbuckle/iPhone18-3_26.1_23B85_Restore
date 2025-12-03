@interface _NSCoreTypesetterLayoutCache
- (BOOL)getCTLine:(void *)line attachmentLayoutContext:(_BYTE *)context lineValidForDrawing:;
- (uint64_t)getCount:(void *)count glyphs:(void *)glyphs advances:(void *)advances elasticAdvances:(CFTypeRef *)elasticAdvances resolvedFont:(void *)font textAlignment:;
- (void)dealloc;
- (void)setCTLine:(void *)line attachmentLayoutContext:(char)context validForDrawing:;
- (void)setCount:(const void *)count glyphs:(const void *)glyphs advances:(const void *)advances elasticAdvances:(void *)elasticAdvances resolvedFont:(double)font textAlignment:;
@end

@implementation _NSCoreTypesetterLayoutCache

- (void)dealloc
{
  free(self->_glyphs);
  free(self->_advances);
  resolvedFont = self->_resolvedFont;
  if (resolvedFont)
  {
    CFRelease(resolvedFont);
  }

  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  v5.receiver = self;
  v5.super_class = _NSCoreTypesetterLayoutCache;
  [(_NSCoreTypesetterLayoutCache *)&v5 dealloc];
}

- (void)setCount:(const void *)count glyphs:(const void *)glyphs advances:(const void *)advances elasticAdvances:(void *)elasticAdvances resolvedFont:(double)font textAlignment:
{
  if (result)
  {
    v12 = a2;
    v13 = result;
    result[1] = a2;
    free(result[2]);
    v14 = malloc_type_malloc(2 * v12, 0x1000040BDFB0063uLL);
    v13[2] = v14;
    memcpy(v14, count, 2 * v12);
    free(v13[3]);
    v12 *= 16;
    v15 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
    v13[3] = v15;
    memcpy(v15, glyphs, v12);
    *(v13 + 4) = font;
    v16 = v13[5];
    if (v16)
    {
      CFRelease(v16);
    }

    result = CFRetain(advances);
    v13[5] = result;
    v13[6] = elasticAdvances;
  }

  return result;
}

- (uint64_t)getCount:(void *)count glyphs:(void *)glyphs advances:(void *)advances elasticAdvances:(CFTypeRef *)elasticAdvances resolvedFont:(void *)font textAlignment:
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      *a2 = *(result + 8);
      *count = v8;
      *glyphs = *(result + 24);
      *advances = *(result + 32);
      v11 = CFRetain(*(result + 40));
      *elasticAdvances = CFAutorelease(v11);
      *font = *(v7 + 48);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)getCTLine:(void *)line attachmentLayoutContext:(_BYTE *)context lineValidForDrawing:
{
  if (!self)
  {
    return 0;
  }

  if (context)
  {
    *context = *(self + 72);
  }

  if (line)
  {
    *line = *(self + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *(self + 56);
  v6 = v5 != 0;
  if (v5)
  {
    v7 = CFRetain(v5);
    v5 = CFAutorelease(v7);
  }

  *a2 = v5;
  return v6;
}

- (void)setCTLine:(void *)line attachmentLayoutContext:(char)context validForDrawing:
{
  if (self)
  {
    v8 = *(self + 56);
    if (v8 != cf)
    {
      if (v8)
      {
        CFRelease(v8);
        *(self + 56) = 0;
      }

      if (cf)
      {
        *(self + 56) = CFRetain(cf);
      }
    }

    v9 = *(self + 64);
    if (v9 != line)
    {

      *(self + 64) = line;
    }

    *(self + 72) = context;
  }
}

@end