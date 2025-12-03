@interface NEBitVector
+ (BOOL)getBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index;
+ (void)setBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index toValue:(BOOL)value;
- (NEBitVector)initWithBitMap:(char *)map bitmapSize:(unsigned int)size bitCount:(unsigned int)count;
- (void)printBits;
@end

@implementation NEBitVector

- (void)printBits
{
  bitmap = self->_bitmap;
  string = [MEMORY[0x1E696AD60] string];
  v4 = 0;
  if (!self)
  {
    goto LABEL_7;
  }

LABEL_2:
  for (i = self->_bitCount; v4 < i; i = 0)
  {
    [string appendFormat:@"%d", (bitmap[v4 >> 3] >> (v4 & 7)) & 1];
    if (((v4 + 1) & 7) == 0)
    {
      [string appendString:@" "];
    }

    ++v4;
    if (self)
    {
      goto LABEL_2;
    }

LABEL_7:
    ;
  }
}

- (NEBitVector)initWithBitMap:(char *)map bitmapSize:(unsigned int)size bitCount:(unsigned int)count
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = NEBitVector;
  v8 = [(NEBitVector *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (map && count && size >= (count + 7) >> 3)
    {
      v8->_bitmap = map;
      v8->_bitmapSize = size;
      v8->_bitCount = count;
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, "%@ - initWithBitMap: Invalid params", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)getBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index
{
  if (count <= index)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    return (bitmap[index >> 3] >> (index & 7)) & 1;
  }

  return v5;
}

+ (void)setBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index toValue:(BOOL)value
{
  if (count > index)
  {
    v6 = index >> 3;
    v7 = 1 << (index & 7);
    if (value)
    {
      v8 = bitmap[v6] | v7;
    }

    else
    {
      v8 = bitmap[v6] & ~v7;
    }

    bitmap[v6] = v8;
  }
}

@end