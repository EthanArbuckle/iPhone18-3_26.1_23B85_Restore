@interface _NSCoreTypesetterLayoutCache
- (BOOL)getCTLine:(void *)a3 attachmentLayoutContext:(_BYTE *)a4 lineValidForDrawing:;
- (uint64_t)getCount:(void *)a3 glyphs:(void *)a4 advances:(void *)a5 elasticAdvances:(CFTypeRef *)a6 resolvedFont:(void *)a7 textAlignment:;
- (void)dealloc;
- (void)setCTLine:(void *)a3 attachmentLayoutContext:(char)a4 validForDrawing:;
- (void)setCount:(const void *)a3 glyphs:(const void *)a4 advances:(const void *)a5 elasticAdvances:(void *)a6 resolvedFont:(double)a7 textAlignment:;
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

- (void)setCount:(const void *)a3 glyphs:(const void *)a4 advances:(const void *)a5 elasticAdvances:(void *)a6 resolvedFont:(double)a7 textAlignment:
{
  if (result)
  {
    v12 = a2;
    v13 = result;
    result[1] = a2;
    free(result[2]);
    v14 = malloc_type_malloc(2 * v12, 0x1000040BDFB0063uLL);
    v13[2] = v14;
    memcpy(v14, a3, 2 * v12);
    free(v13[3]);
    v12 *= 16;
    v15 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
    v13[3] = v15;
    memcpy(v15, a4, v12);
    *(v13 + 4) = a7;
    v16 = v13[5];
    if (v16)
    {
      CFRelease(v16);
    }

    result = CFRetain(a5);
    v13[5] = result;
    v13[6] = a6;
  }

  return result;
}

- (uint64_t)getCount:(void *)a3 glyphs:(void *)a4 advances:(void *)a5 elasticAdvances:(CFTypeRef *)a6 resolvedFont:(void *)a7 textAlignment:
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      *a2 = *(result + 8);
      *a3 = v8;
      *a4 = *(result + 24);
      *a5 = *(result + 32);
      v11 = CFRetain(*(result + 40));
      *a6 = CFAutorelease(v11);
      *a7 = *(v7 + 48);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)getCTLine:(void *)a3 attachmentLayoutContext:(_BYTE *)a4 lineValidForDrawing:
{
  if (!a1)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = *(a1 + 72);
  }

  if (a3)
  {
    *a3 = *(a1 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 56);
  v6 = v5 != 0;
  if (v5)
  {
    v7 = CFRetain(v5);
    v5 = CFAutorelease(v7);
  }

  *a2 = v5;
  return v6;
}

- (void)setCTLine:(void *)a3 attachmentLayoutContext:(char)a4 validForDrawing:
{
  if (a1)
  {
    v8 = *(a1 + 56);
    if (v8 != cf)
    {
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 56) = 0;
      }

      if (cf)
      {
        *(a1 + 56) = CFRetain(cf);
      }
    }

    v9 = *(a1 + 64);
    if (v9 != a3)
    {

      *(a1 + 64) = a3;
    }

    *(a1 + 72) = a4;
  }
}

@end