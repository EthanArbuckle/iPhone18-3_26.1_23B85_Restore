@interface NSString(VariableSupport)
- (__CFString)_pb_fixCase:()VariableSupport;
@end

@implementation NSString(VariableSupport)

- (__CFString)_pb_fixCase:()VariableSupport
{
  if ([self length])
  {
    v5 = [self lengthOfBytesUsingEncoding:4];
    v6 = malloc_type_malloc(v5 + 1, 0x29EBA39CuLL);
    [self getBytes:v6 maxLength:v5 usedLength:0 encoding:4 options:1 range:0 remainingRange:{objc_msgSend(self, "length"), 0}];
    v6[v5] = 0;
    v7 = 0;
    if (v5)
    {
      v8 = !a3;
      v9 = v6;
      do
      {
        v11 = *v9++;
        v10 = v11;
        if (a3)
        {
          LOBYTE(v10) = __toupper(v10);
        }

        else if (v8)
        {
          LOBYTE(v10) = __tolower(v10);
        }

        a3 = v10 == 95;
        if (v10 != 95)
        {
          v6[v7++] = v10;
        }

        v8 = 0;
        --v5;
      }

      while (v5);
    }

    v6[v7] = 0;
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v12 = &stru_1F48EFF70;
  }

  return v12;
}

@end