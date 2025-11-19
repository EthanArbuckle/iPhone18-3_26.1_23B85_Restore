@interface _PASBigEndianUTF16String
- (id)initWithLength:(void *)a3 buffer:(void *)a4 backingObject:;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)_implGetCharacters:(uint64_t)a3 range:(uint64_t)a4;
@end

@implementation _PASBigEndianUTF16String

- (unsigned)characterAtIndex:(unint64_t)a3
{
  __dst = 0;
  [(_PASBigEndianUTF16String *)self _implGetCharacters:a3 range:1];
  return __dst;
}

- (void)_implGetCharacters:(uint64_t)a3 range:(uint64_t)a4
{
  if (result)
  {
    v4 = a4;
    if ((a3 + a4) > result[1])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695DA20];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Range {%tu, %tu} out of bounds; string length %tu", a3, a4, result[1]];
      v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
      v10 = v9;

      objc_exception_throw(v9);
    }

    if (a4)
    {
      v5 = __dst;
      result = memcpy(__dst, (result[2] + 2 * a3), 2 * a4);
      do
      {
        *v5 = bswap32(*v5) >> 16;
        ++v5;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

- (id)initWithLength:(void *)a3 buffer:(void *)a4 backingObject:
{
  v8 = a4;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _PASBigEndianUTF16String;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      v9[1] = a2;
      v9[2] = a3;
      objc_storeStrong(v9 + 3, a4);
    }
  }

  return a1;
}

@end