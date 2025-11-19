@interface _NSCachedAttributedString
+ (id)allocWithZone:(_NSZone *)a3;
+ (void)initialize;
- (BOOL)hasColorGlyphsInRange:(_NSRange)a3;
- (BOOL)isEqual:(id)a3;
- (_NSCachedAttributedString)init;
- (_NSCachedAttributedString)initWithAttributedString:(id)a3;
- (_NSCachedAttributedString)initWithString:(id)a3 attributes:(id)a4;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5;
- (id)copyCachedInstance;
- (id)string;
- (unint64_t)hash;
- (void)cache;
- (void)dealloc;
- (void)finalize;
- (void)release;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
@end

@implementation _NSCachedAttributedString

- (id)string
{
  baseAttributes = self->_baseAttributes;
  result = self->_contents;
  if (!baseAttributes)
  {
    return [result string];
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 integerForKey:@"NSStringDrawingLongTermCacheSize"];
    if (v3)
    {
      __NSCachedAttrStringLongTermCacheSize = v3 & ~(v3 >> 63);
    }

    v4 = [v2 integerForKey:@"NSStringDrawingLongTermThreshold"];
    if (v4 >= 1)
    {
      __NSCachedAttrStringLongTermPromotionThreshold = v4;
    }

    v5 = [v2 integerForKey:@"NSStringDrawingShortTermCacheSize"];
    if (v5)
    {
      __NSCachedAttrStringShortTermCacheSize = v5 & ~(v5 >> 63);
    }
  }
}

- (void)release
{
  if ([(_NSCachedAttributedString *)self retainCount]!= 1)
  {
    goto LABEL_11;
  }

  os_unfair_lock_lock_with_options();
  v3 = __NSCachedAttrStringCacheNextIndex;
  if (__NSCachedAttrStringCacheNextIndex >= 3)
  {
    os_unfair_lock_unlock(&__NSCachedAttrStringLock);
LABEL_11:
    v14.receiver = self;
    v14.super_class = _NSCachedAttributedString;
    [(_NSCachedAttributedString *)&v14 release];
    return;
  }

  ++__NSCachedAttrStringCacheNextIndex;
  __NSCachedAttrStringCache[v3] = self;
  Class = object_getClass(self);
  contents = self->_contents;
  baseAttributes = self->_baseAttributes;
  runs = self->_runs;
  numRuns = self->_numRuns;
  v9 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v9);
  bzero(self, InstanceSize);
  object_setClass(self, Class);
  os_unfair_lock_unlock(&__NSCachedAttrStringLock);

  if (runs)
  {
    if (numRuns >= 1)
    {
      p_var0 = &runs->var0;
      do
      {
        v12 = *p_var0;
        p_var0 += 2;
      }

      while (p_var0 < &runs[numRuns].var0);
    }

    v13 = MEMORY[0x193AD4070](runs);

    NSZoneFree(v13, runs);
  }
}

- (void)dealloc
{
  runs = self->_runs;
  if (runs)
  {
    numRuns = self->_numRuns;
    if (numRuns >= 1)
    {
      v5 = &runs[numRuns];
      v6 = self->_runs;
      do
      {
        var0 = v6->var0;
        ++v6;
      }

      while (v6 < v5);
    }

    v8 = MEMORY[0x193AD4070](runs);
    NSZoneFree(v8, runs);
  }

  v9.receiver = self;
  v9.super_class = _NSCachedAttributedString;
  [(_NSCachedAttributedString *)&v9 dealloc];
}

- (id)copyCachedInstance
{
  if (__NSCachedAttrStringShortTermCacheSize >= 1)
  {
    os_unfair_lock_lock_with_options();
    if (__NSCachedAttrStringShortTermCache)
    {
      v3 = [__NSCachedAttrStringShortTermCache member:self];
      v4 = v3;
      if (v3)
      {
        v5 = v3;
      }
    }

    else
    {
      v4 = 0;
    }

    if (__NSCachedAttrStringLongTermCacheSize >= 1)
    {
      if (v4)
      {
        v6 = v4[8] + 1;
        v4[8] = v6;
        if (v6 >= __NSCachedAttrStringLongTermPromotionThreshold)
        {
          if (__NSCachedAttrStringLongTermStack)
          {
            v7 = __NSCachedAttrStringLongTermCache;
          }

          else
          {
            __NSCachedAttrStringLongTermStack = NSAllocateScannedUncollectable();
            v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            __NSCachedAttrStringLongTermCache = v7;
          }

          if (![v7 member:v4])
          {
            v10 = *(__NSCachedAttrStringLongTermStack + 8 * __NSCachedAttrStringLongTermStackIndex);
            if (v10)
            {
              v12 = v10;
              [__NSCachedAttrStringLongTermCache removeObject:v10];
            }

            [__NSCachedAttrStringLongTermCache addObject:v4];
            v13 = __NSCachedAttrStringLongTermStackIndex++;
            *(__NSCachedAttrStringLongTermStack + 8 * v13) = v4;
            if (v13 + 1 >= __NSCachedAttrStringLongTermCacheSize)
            {
              __NSCachedAttrStringLongTermStackIndex = 0;
            }

            goto LABEL_19;
          }
        }
      }

      else if (__NSCachedAttrStringLongTermCache)
      {
        v8 = [__NSCachedAttrStringLongTermCache member:self];
        v4 = v8;
        if (v8)
        {
          v9 = v8;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    v10 = 0;
LABEL_19:
    os_unfair_lock_unlock(&__NSCachedAttrStringLock);

    return v4;
  }

  return 0;
}

- (void)cache
{
  if (__NSCachedAttrStringShortTermCacheSize < 1 || !self->_runs)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  if (([__NSCachedAttrStringShortTermCache containsObject:self] & 1) == 0 && (objc_msgSend(__NSCachedAttrStringLongTermCache, "containsObject:", self) & 1) == 0)
  {
    if (__NSCachedAttrStringShortTermCache)
    {
      v3 = [__NSCachedAttrStringShortTermCache count];
      v4 = __NSCachedAttrStringShortTermCache;
      if (v3 >= __NSCachedAttrStringShortTermCacheSize)
      {
        __NSCachedAttrStringShortTermCache = 0;
        v5 = v4;
      }

      else
      {
        v5 = 0;
        if (__NSCachedAttrStringShortTermCache)
        {
LABEL_14:
          [v4 addObject:self];
          goto LABEL_15;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    __NSCachedAttrStringShortTermCache = v4;
    goto LABEL_14;
  }

  v5 = 0;
LABEL_15:
  os_unfair_lock_unlock(&__NSCachedAttrStringLock);
}

+ (id)allocWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v5 = __NSCachedAttrStringCacheNextIndex;
  if (!__NSCachedAttrStringCacheNextIndex)
  {
    os_unfair_lock_unlock(&__NSCachedAttrStringLock);
LABEL_5:
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS____NSCachedAttributedString;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
  }

  --__NSCachedAttrStringCacheNextIndex;
  v6 = __NSCachedAttrStringCache[v5 - 1];
  os_unfair_lock_unlock(&__NSCachedAttrStringLock);
  if (!v6)
  {
    goto LABEL_5;
  }

  return v6;
}

- (_NSCachedAttributedString)initWithAttributedString:(id)a3
{
  v6.receiver = self;
  v6.super_class = _NSCachedAttributedString;
  v4 = [(_NSCachedAttributedString *)&v6 init];
  if (v4)
  {
    v4->_contents = [a3 copyWithZone:0];
    v4->_length = [a3 length];
  }

  return v4;
}

- (_NSCachedAttributedString)initWithString:(id)a3 attributes:(id)a4
{
  v8.receiver = self;
  v8.super_class = _NSCachedAttributedString;
  v6 = [(_NSCachedAttributedString *)&v8 init];
  if (v6)
  {
    v6->_contents = [a3 copyWithZone:0];
    v6->_baseAttributes = [NSAttributeDictionary newWithDictionary:a4];
    v6->_length = [a3 length];
  }

  return v6;
}

- (_NSCachedAttributedString)init
{
  v4.receiver = self;
  v4.super_class = _NSCachedAttributedString;
  v2 = [(_NSCachedAttributedString *)&v4 init];
  v2->_contents = [&stru_1F01AD578 copyWithZone:0];
  v2->_baseAttributes = [NSAttributeDictionary newWithDictionary:0];
  return v2;
}

- (void)finalize
{
  runs = self->_runs;
  if (runs)
  {
    numRuns = self->_numRuns;
    if (numRuns >= 1)
    {
      v5 = &runs[numRuns];
      v6 = self->_runs;
      do
      {
        var0 = v6->var0;
        ++v6;
      }

      while (v6 < v5);
    }

    v8 = MEMORY[0x193AD4070](runs, a2);
    NSZoneFree(v8, runs);
  }

  v9.receiver = self;
  v9.super_class = _NSCachedAttributedString;
  [(_NSCachedAttributedString *)&v9 finalize];
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  length = self->_length;
  runs = self->_runs;
  if (runs)
  {
    v6 = length < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_8:
    v7 = 0;
  }

  else
  {
    v7 = 0;
    p_var1 = &runs->var1;
    while (1)
    {
      v9 = *p_var1;
      v10 = *p_var1 + v7;
      if (v10 > a3)
      {
        break;
      }

      p_var1 += 2;
      v7 = v10;
      if (v10 >= length)
      {
        goto LABEL_8;
      }
    }

    baseAttributes = *(p_var1 - 1);
    if (baseAttributes)
    {
      if (a4)
      {
        a4->location = v7;
        a4->length = v9;
      }

      return baseAttributes;
    }

    length = v9;
  }

  baseAttributes = self->_baseAttributes;
  if (!baseAttributes)
  {
    return [self->_contents attributesAtIndex:a3 longestEffectiveRange:a4 inRange:v7];
  }

  if (a4)
  {
    a4->location = v7;
    a4->length = length;
    return self->_baseAttributes;
  }

  return baseAttributes;
}

- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5
{
  runs = self->_runs;
  if (!runs)
  {
    goto LABEL_10;
  }

  length = self->_length;
  if (length < 1)
  {
    goto LABEL_10;
  }

  v10.location = 0;
  p_var1 = &runs->var1;
  while (1)
  {
    v12 = *p_var1 + v10.location;
    if (v12 > a3)
    {
      break;
    }

    p_var1 += 2;
    v10.location = v12;
    if (v12 >= length)
    {
      goto LABEL_10;
    }
  }

  v10.length = *p_var1;
  v13 = NSIntersectionRange(v10, a5);
  a5 = v13;
  result = *(p_var1 - 1);
  if (result)
  {
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
LABEL_10:
    result = self->_baseAttributes;
    if (result)
    {
      if (a4)
      {
        *a4 = a5;
        return self->_baseAttributes;
      }
    }

    else
    {
      contents = self->_contents;

      return [contents attributesAtIndex:a3 longestEffectiveRange:a4 inRange:{a5.location, a5.length}];
    }
  }

  return result;
}

- (BOOL)hasColorGlyphsInRange:(_NSRange)a3
{
  v3 = a3.location + a3.length;
  if (a3.location < a3.location + a3.length)
  {
    v5 = 0;
    runs = self->_runs;
    while (1)
    {
      if (runs && (length = self->_length, v5 < length))
      {
        while (1)
        {
          var1 = runs->var1;
          v9 = var1 + v5;
          if (var1 + v5 > a3.location)
          {
            break;
          }

          ++runs;
          v5 += var1;
          if (v9 >= length)
          {
            var1 = 0;
            v10 = 0x7FFFFFFFFFFFFFFFLL;
            v5 = v9;
            goto LABEL_9;
          }
        }

        var0 = runs->var0;
        v10 = v5;
        if (runs->var0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        var1 = 0;
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_9:
      var0 = self->_baseAttributes;
      if (!var0)
      {
        var0 = [self->_contents attributesAtIndex:a3.location longestEffectiveRange:0 inRange:{a3.location, v3 - a3.location}];
      }

LABEL_12:
      result = [-[NSAttributeDictionary objectForKeyedSubscript:](var0 objectForKeyedSubscript:{@"NSFont", "_hasColorGlyphs"}];
      if (!result)
      {
        a3.location = v10 + var1;
        if (v10 + var1 < v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  if (!a3)
  {
    return;
  }

  length = a4.length;
  if (!a4.length)
  {
    return;
  }

  location = a4.location;
  v7 = a4.location + a4.length;
  v8 = self->_length;
  if (a4.location + a4.length > v8 || v8 < 1)
  {
    return;
  }

  runs = self->_runs;
  if (!runs)
  {
    runs = NSAllocateScannedUncollectable();
    self->_runs = runs;
    v12 = self->_length;
    runs->var0 = 0;
    runs->var1 = v12;
    self->_numRuns = 1;
    self->_allocedRunsSize = 5;
    v8 = self->_length;
    if (v8 < 1)
    {
      v14 = 0;
      p_var0 = 0;
      v17 = 0;
      v15 = runs;
      goto LABEL_21;
    }
  }

  p_var0 = 0;
  v14 = 0;
  v15 = runs;
  while (2)
  {
    v16 = v14;
    while (1)
    {
      if (p_var0)
      {
        v14 += p_var0[1];
        v17 = v14 - v7;
        if (v14 >= v7)
        {
          goto LABEL_20;
        }

        p_var0 += 2;
        goto LABEL_16;
      }

      v18 = v15->var1 + v14;
      if (location < v18)
      {
        break;
      }

      p_var0 = 0;
      ++v15;
      v14 = v18;
LABEL_16:
      if (v14 >= v8)
      {
        v17 = 0;
LABEL_20:
        v14 = v16;
        goto LABEL_21;
      }
    }

    p_var0 = &v15->var0;
    if (v14 < v8)
    {
      continue;
    }

    break;
  }

  v17 = 0;
  p_var0 = &v15->var0;
LABEL_21:
  if (location > v14)
  {
    v15->var1 = location - v14;
    ++v15;
  }

  if (p_var0 > v15)
  {
    if (v17 >= 1)
    {
      p_var0[1] = v17;
      p_var0 -= 2;
    }

LABEL_28:
    if (v15 <= p_var0)
    {
      v19 = 0;
      v20 = &v15->var0;
      do
      {
        v19 += 16;
        v21 = *v20;
        v20 += 2;
      }

      while (v20 <= p_var0);
    }

    else
    {
      v19 = 0;
      v20 = &v15->var0;
    }

    v15->var0 = [NSAttributeDictionary newWithDictionary:a3];
    v15->var1 = length;
    if (v19 >= 0x11)
    {
      numRuns = self->_numRuns;
      v23 = &self->_runs[numRuns] - v20;
      if (v23 >= 1)
      {
        memmove(&v15[1], v20, v23);
        numRuns = self->_numRuns;
      }

      self->_numRuns = numRuns - ((v19 - 16) >> 4);
    }

    return;
  }

  if (v15 == p_var0 && v17 < 1)
  {
    goto LABEL_28;
  }

  if (p_var0)
  {
    v30 = p_var0 < v15 && v17 > 0;
    if (v30)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v25 = self->_numRuns;
    allocedRunsSize = self->_allocedRunsSize;
    if (v25 + v24 > allocedRunsSize)
    {
      v27 = v15 - runs;
      v28 = p_var0 - runs;
      self->_allocedRunsSize = allocedRunsSize + 5;
      runs = NSReallocateScannedUncollectable();
      self->_runs = runs;
      v15 = (runs + v27);
      p_var0 = (&runs->var0 + v28);
      v25 = self->_numRuns;
    }

    memmove(&p_var0[2 * v24], p_var0, &runs[v25] - p_var0);
    if (v30)
    {
      v29 = *p_var0;
      goto LABEL_46;
    }

    if (v17 >= 1)
    {
LABEL_46:
      p_var0[2 * v24 + 1] = v17;
    }

    v15->var0 = [NSAttributeDictionary newWithDictionary:a3];
    v15->var1 = length;
    self->_numRuns += v24;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!isEqual___NSCachedAttributedStringClass)
  {
    isEqual___NSCachedAttributedStringClass = objc_opt_class();
  }

  if (objc_opt_class() != isEqual___NSCachedAttributedStringClass)
  {
    return 0;
  }

  if (self->_hashValue)
  {
    [(_NSCachedAttributedString *)self hash];
  }

  v6 = *(a3 + 4);
  if (v6)
  {
    [a3 hash];
    v6 = *(a3 + 4);
  }

  hashValue = self->_hashValue;
  v5 = hashValue == v6;
  if (hashValue == v6)
  {
    baseAttributes = self->_baseAttributes;
    if (baseAttributes != *(a3 + 2) && ![(NSAttributeDictionary *)baseAttributes isEqual:?])
    {
      return 0;
    }

    if (![self->_contents isEqual:*(a3 + 1)])
    {
      return 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  result = self->_hashValue;
  if (!result)
  {
    v4 = [self->_contents hash];
    result = [(NSAttributeDictionary *)self->_baseAttributes hash]+ v4;
    self->_hashValue = result;
  }

  return result;
}

@end