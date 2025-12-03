@interface SSLookupItemArtwork
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha forColorKind:(id)kind;
- (NSURL)URL;
- (SSLookupItemArtwork)initWithLookupDictionary:(id)dictionary;
- (id)URLWithHeight:(int64_t)height width:(int64_t)width cropStyle:(id)style format:(id)format;
- (int64_t)height;
- (int64_t)width;
- (void)dealloc;
@end

@implementation SSLookupItemArtwork

- (SSLookupItemArtwork)initWithLookupDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SSLookupItemArtwork;
  v4 = [(SSLookupItemArtwork *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLookupItemArtwork;
  [(SSLookupItemArtwork *)&v3 dealloc];
}

- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha forColorKind:(id)kind
{
  v11 = [(NSDictionary *)self->_dictionary objectForKey:kind];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = 0uLL;
    v17 = 0.0;
    if (!red)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = strtoul([v11 UTF8String], 0, 16);
  v14 = vand_s8(vshl_u32(vdup_n_s32(v13), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  v16 = vdivq_f64(vcvtq_f64_u64(v15), vdupq_n_s64(0x406FE00000000000uLL));
  v17 = v13 / 255.0;
  if (red)
  {
LABEL_5:
    *red = v16.f64[1];
  }

LABEL_6:
  if (green)
  {
    *green = v16.f64[0];
  }

  if (blue)
  {
    *blue = v17;
  }

  if (alpha)
  {
    *alpha = 1.0;
  }

  return isKindOfClass & 1;
}

- (int64_t)height
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"height"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 integerValue];
}

- (NSURL)URL
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (id)URLWithHeight:(int64_t)height width:(int64_t)width cropStyle:(id)style format:(id)format
{
  v21[12] = *MEMORY[0x1E69E9840];
  v11 = [(NSDictionary *)self->_dictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v21[0] = @"{h}";
  v21[1] = height;
  v21[2] = 0;
  v21[3] = @"{w}";
  v21[4] = width;
  v21[8] = format;
  v21[9] = @"{c}";
  v21[10] = 0;
  v21[11] = style;
  v21[5] = 0;
  v21[6] = @"{f}";
  v21[7] = 0;
  do
  {
    v14 = [v11 rangeOfString:v21[v12] options:4];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v16 = v14;
    v17 = v15;
    v18 = v21[v12 + 2];
    if (v18)
    {
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", v21[v12 + 1]];
      if (!v13)
      {
LABEL_10:
        v13 = [v11 mutableCopy];
        v11 = v13;
      }
    }

    [v13 replaceCharactersInRange:v16 withString:{v17, v18}];

LABEL_7:
    v12 += 3;
  }

  while (v12 != 12);
  if (!v13 || (v19 = [MEMORY[0x1E695DFF8] URLWithString:v13]) == 0)
  {
    v19 = [(SSLookupItemArtwork *)self URL];
  }

  return v19;
}

- (int64_t)width
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"width"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 integerValue];
}

@end