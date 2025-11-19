@interface NSString
- (void)copyLastPathComponent;
@end

@implementation NSString

- (void)copyLastPathComponent
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 length];
    v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    [v1 getCharacters:v3 range:{0, v2}];
    if (v2 >= 2)
    {
      v5 = 0;
      v6 = &v3[2 * v2];
      while (v2 - 1 != v5)
      {
        v7 = *(v6 - 2);
        v6 -= 2;
        ++v5;
        if (v7 == 47)
        {
          v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v6 length:v5];
          goto LABEL_8;
        }
      }
    }

    v4 = v1;
LABEL_8:
    v1 = v4;
    free(v3);
  }

  return v1;
}

@end