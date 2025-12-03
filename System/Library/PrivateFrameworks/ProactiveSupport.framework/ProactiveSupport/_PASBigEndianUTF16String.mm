@interface _PASBigEndianUTF16String
- (id)initWithLength:(void *)length buffer:(void *)buffer backingObject:;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)_implGetCharacters:(uint64_t)characters range:(uint64_t)range;
@end

@implementation _PASBigEndianUTF16String

- (unsigned)characterAtIndex:(unint64_t)index
{
  __dst = 0;
  [(_PASBigEndianUTF16String *)self _implGetCharacters:index range:1];
  return __dst;
}

- (void)_implGetCharacters:(uint64_t)characters range:(uint64_t)range
{
  if (result)
  {
    rangeCopy = range;
    if ((characters + range) > result[1])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695DA20];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Range {%tu, %tu} out of bounds; string length %tu", characters, range, result[1]];
      v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
      v10 = v9;

      objc_exception_throw(v9);
    }

    if (range)
    {
      v5 = __dst;
      result = memcpy(__dst, (result[2] + 2 * characters), 2 * range);
      do
      {
        *v5 = bswap32(*v5) >> 16;
        ++v5;
        --rangeCopy;
      }

      while (rangeCopy);
    }
  }

  return result;
}

- (id)initWithLength:(void *)length buffer:(void *)buffer backingObject:
{
  bufferCopy = buffer;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = _PASBigEndianUTF16String;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    self = v9;
    if (v9)
    {
      v9[1] = a2;
      v9[2] = length;
      objc_storeStrong(v9 + 3, buffer);
    }
  }

  return self;
}

@end