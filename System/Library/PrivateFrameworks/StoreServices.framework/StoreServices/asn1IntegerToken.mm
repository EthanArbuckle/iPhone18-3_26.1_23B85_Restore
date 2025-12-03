@interface asn1IntegerToken
- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque;
@end

@implementation asn1IntegerToken

- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque
{
  classCopy = class;
  v16.receiver = self;
  v16.super_class = asn1IntegerToken;
  result = [(asn1IntegerToken *)&v16 init:d];
  if (d != 2 || classCopy)
  {
    v15 = result;
    return 0;
  }

  else if (result)
  {
    *(result + 8) = 0;
    *(result + 2) = 2;
    *(result + 3) = length;
    *(result + 4) = content;
    lengthCopy = 8;
    if (length < 8)
    {
      lengthCopy = length;
    }

    *(result + 5) = 0;
    if (length)
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

        v13 |= content[v14];
        *(result + 5) = v13;
        ++v14;
      }

      while (lengthCopy != v14);
    }
  }

  return result;
}

@end