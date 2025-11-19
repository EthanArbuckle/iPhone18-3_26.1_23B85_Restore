@interface asn1IntegerToken
- (id)_initWithID:(unint64_t)a3 class:(unsigned __int8)a4 length:(unint64_t)a5 content:(const char *)a6 opaque:(BOOL)a7;
@end

@implementation asn1IntegerToken

- (id)_initWithID:(unint64_t)a3 class:(unsigned __int8)a4 length:(unint64_t)a5 content:(const char *)a6 opaque:(BOOL)a7
{
  v9 = a4;
  v16.receiver = self;
  v16.super_class = asn1IntegerToken;
  result = [(asn1IntegerToken *)&v16 init:a3];
  if (a3 != 2 || v9)
  {
    v15 = result;
    return 0;
  }

  else if (result)
  {
    *(result + 8) = 0;
    *(result + 2) = 2;
    *(result + 3) = a5;
    *(result + 4) = a6;
    v12 = 8;
    if (a5 < 8)
    {
      v12 = a5;
    }

    *(result + 5) = 0;
    if (a5)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (v14)
        {
          v13 <<= 8;
          *(result + 5) = v13;
        }

        v13 |= a6[v14];
        *(result + 5) = v13;
        ++v14;
      }

      while (v12 != v14);
    }
  }

  return result;
}

@end