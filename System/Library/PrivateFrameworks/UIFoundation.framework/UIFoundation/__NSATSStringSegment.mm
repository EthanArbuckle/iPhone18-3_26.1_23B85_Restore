@interface __NSATSStringSegment
+ (id)allocWithZone:(_NSZone *)zone;
- (const)_setOriginalString:(uint64_t)string range:(char *)range;
- (const)initWithOriginalString:(uint64_t)string range:(char *)range;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)release;
@end

@implementation __NSATSStringSegment

+ (id)allocWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v5 = __NSATSStringSegmentCacheNextIndex;
  if (!__NSATSStringSegmentCacheNextIndex)
  {
    os_unfair_lock_unlock(&__NSATSStringSegmentLock);
LABEL_5:
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS_____NSATSStringSegment;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, zone);
  }

  --__NSATSStringSegmentCacheNextIndex;
  v6 = __NSATSStringSegmentCache[v5 - 1];
  os_unfair_lock_unlock(&__NSATSStringSegmentLock);
  if (!v6)
  {
    goto LABEL_5;
  }

  return v6;
}

- (void)release
{
  os_unfair_lock_lock_with_options();
  if ([(__NSATSStringSegment *)self retainCount]== 1 && (v3 = __NSATSStringSegmentCacheNextIndex, __NSATSStringSegmentCacheNextIndex <= 3))
  {
    ++__NSATSStringSegmentCacheNextIndex;
    __NSATSStringSegmentCache[v3] = self;
    originalString = self->_originalString;
    self->_originalString = 0;
    os_unfair_lock_unlock(&__NSATSStringSegmentLock);
    if (originalString)
    {

      CFRelease(originalString);
    }
  }

  else
  {
    os_unfair_lock_unlock(&__NSATSStringSegmentLock);
    v5.receiver = self;
    v5.super_class = __NSATSStringSegment;
    [(__NSATSStringSegment *)&v5 release];
  }
}

- (void)dealloc
{
  originalString = self->_originalString;
  if (originalString)
  {
    CFRelease(originalString);
  }

  v4.receiver = self;
  v4.super_class = __NSATSStringSegment;
  [(__NSATSStringSegment *)&v4 dealloc];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  p_range = &self->_range;
  if (self->_range.length <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: Range or index out of bounds", objc_opt_class()}];
  }

  if (self->_originalStringLength >= 1)
  {
    CharactersPtr = CFStringGetCharactersPtr(self->_originalString);
    self->_characters = CharactersPtr;
    if (CharactersPtr)
    {
      self->_characters = &CharactersPtr[p_range->location];
    }

    else
    {
      v7.length = p_range->length;
      if (v7.length <= 128)
      {
        v7.location = p_range->location;
        CFStringGetCharacters(self->_originalString, v7, self->_buffer);
        CFRelease(self->_originalString);
        self->_originalString = 0;
      }
    }

    self->_originalStringLength = 0;
  }

  if (self->_originalString)
  {
    characters = self->_characters;
    if (characters)
    {
      return characters[index];
    }
  }

  else
  {
    characters = self->_buffer;
    if (self != -48)
    {
      return characters[index];
    }
  }

  originalString = self->_originalString;
  v11 = p_range->location + index;

  return CFStringGetCharacterAtIndex(originalString, v11);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  p_range = &self->_range;
  if (range.location + range.length > self->_range.length)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: Range or index out of bounds", objc_opt_class()}];
  }

  if (self->_originalStringLength >= 1)
  {
    CharactersPtr = CFStringGetCharactersPtr(self->_originalString);
    self->_characters = CharactersPtr;
    if (CharactersPtr)
    {
      self->_characters = &CharactersPtr[p_range->location];
    }

    else
    {
      v10.length = p_range->length;
      if (v10.length <= 128)
      {
        v10.location = p_range->location;
        CFStringGetCharacters(self->_originalString, v10, self->_buffer);
        CFRelease(self->_originalString);
        self->_originalString = 0;
      }
    }

    self->_originalStringLength = 0;
  }

  if (self->_originalString)
  {
    characters = self->_characters;
    if (characters)
    {
LABEL_12:

      memcpy(characters, &characters[2 * location], 2 * length);
      return;
    }
  }

  else
  {
    characters = self->_buffer;
    if (self != -48)
    {
      goto LABEL_12;
    }
  }

  originalString = self->_originalString;
  v13.location = p_range->location + location;
  v13.length = length;

  CFStringGetCharacters(originalString, v13, characters);
}

- (const)_setOriginalString:(uint64_t)string range:(char *)range
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  result = result->info;
  if (result == cf)
  {
    goto LABEL_7;
  }

  if (result)
  {
    CFRelease(result);
  }

  v7->info = cf;
  if (cf)
  {
    CFRetain(cf);
    result = v7->info;
LABEL_7:
    if (result)
    {
      result = CFStringGetLength(result);
    }

    goto LABEL_10;
  }

  result = 0;
LABEL_10:
  v7->data = result;
  if (&range[string] > result)
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: Requested range {%ld, %ld} is out of bounds for %@", objc_opt_class(), string, range, cf}];
  }

  v7->length = string;
  v7[1].isa = range;
  return result;
}

- (const)initWithOriginalString:(uint64_t)string range:(char *)range
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = __NSATSStringSegment;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    [(__NSATSStringSegment *)v7 _setOriginalString:a2 range:string, range];
  }

  return v8;
}

@end