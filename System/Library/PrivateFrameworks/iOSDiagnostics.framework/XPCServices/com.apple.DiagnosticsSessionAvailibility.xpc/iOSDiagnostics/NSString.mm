@interface NSString
- (id)stringByReplacingReservedURLCharactersUsingEncoding:(unint64_t)encoding;
@end

@implementation NSString

- (id)stringByReplacingReservedURLCharactersUsingEncoding:(unint64_t)encoding
{
  v4 = [(NSString *)self lengthOfBytesUsingEncoding:1];
  v5 = malloc_type_malloc(v4 + 1, 0xFD54B8B3uLL);
  if (v5)
  {
    v6 = v5;
    [(NSString *)self getCString:v5 maxLength:v4 + 1 encoding:1];
    if (v4)
    {
      v7 = v6;
      do
      {
        v8 = *v7;
        if ((v8 - 45) >= 2 && v8 != 95 && v8 != 126)
        {
          v9 = v8 - 48;
          v10 = (v8 & 0xFFFFFFDF) - 65;
          if (v9 >= 0xA && v10 >= 0x1A)
          {
            *v7 = 95;
          }
        }

        ++v7;
        --v4;
      }

      while (v4);
    }

    v12 = [NSString stringWithCString:v6 encoding:1];
    free(v6);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end