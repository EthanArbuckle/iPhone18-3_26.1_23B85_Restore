@interface _UICGColorCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UICGColorCacheKey)initWithColors:(CGColor *)colors;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UICGColorCacheKey

- (unint64_t)hash
{
  colors = self->_colors;
  if (!colors || CFArrayGetCount(colors) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->_colors, v5);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFHash(ValueAtIndex);
    }

    v4 ^= ValueAtIndex;
    ++v5;
  }

  while (v5 < CFArrayGetCount(self->_colors));
  return v4;
}

- (void)dealloc
{
  colors = self->_colors;
  if (colors)
  {
    CFRelease(colors);
  }

  v4.receiver = self;
  v4.super_class = _UICGColorCacheKey;
  [(_UICGColorCacheKey *)&v4 dealloc];
}

- (_UICGColorCacheKey)initWithColors:(CGColor *)colors
{
  v9.receiver = self;
  v9.super_class = _UICGColorCacheKey;
  v4 = [(_UICGColorCacheKey *)&v9 init];
  v5 = v4;
  if (colors && v4)
  {
    v4->_colors = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v8 = &v10;
    do
    {
      CFArrayAppendValue(v5->_colors, colors);
      v6 = v8++;
      colors = *v6;
    }

    while (*v6);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UICGColorCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  colors = self->_colors;
  if (colors)
  {
    Count = CFArrayGetCount(colors);
    v7 = keyCopy[1];
    if (v7 && Count == CFArrayGetCount(v7))
    {
      v8 = Count - 1;
      if (Count < 1)
      {
        v14 = 1;
      }

      else
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(self->_colors, v9);
          v11 = CFArrayGetValueAtIndex(keyCopy[1], v9);
          v12 = CGColorEqualToColor(ValueAtIndex, v11);
        }

        while (v12 && v8 != v9++);
        v14 = v12;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = keyCopy[1] == 0;
  }

  return v14;
}

@end