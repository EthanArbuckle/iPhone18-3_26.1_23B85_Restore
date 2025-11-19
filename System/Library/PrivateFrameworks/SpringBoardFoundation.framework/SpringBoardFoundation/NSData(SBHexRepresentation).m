@interface NSData(SBHexRepresentation)
- (char)sbf_hexadecimalEncodedString;
@end

@implementation NSData(SBHexRepresentation)

- (char)sbf_hexadecimalEncodedString
{
  v2 = [a1 length];
  if (v2 < 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = 2 * v2;
    v5 = malloc_type_malloc(2 * v2, 0x2C10F638uLL);
    if (v5)
    {
      v6 = v5;
      v7 = [a1 bytes];
      if (v3)
      {
        v8 = v6 + 1;
        do
        {
          v9 = *v7++;
          *(v8 - 1) = a0123456789abcd[v9 >> 4];
          *v8 = a0123456789abcd[v9 & 0xF];
          v8 += 2;
          --v3;
        }

        while (v3);
      }

      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v6 length:v4 encoding:1 freeWhenDone:1];
    }
  }

  return v5;
}

@end