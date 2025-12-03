@interface asn1Token
+ (id)readTokenFromBuffer:(const char *)buffer opaque:(BOOL)opaque;
- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque;
@end

@implementation asn1Token

- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque
{
  v12.receiver = self;
  v12.super_class = asn1Token;
  result = [(asn1Token *)&v12 init:d];
  if (result)
  {
    *(result + 8) = class;
    *(result + 2) = d;
    *(result + 3) = length;
    *(result + 4) = content;
  }

  return result;
}

+ (id)readTokenFromBuffer:(const char *)buffer opaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v6 = *buffer;
  v7 = v6 & 0x1F;
  if ((v6 & 0x1F) == 0x1F)
  {
    NSLog(&cfstr_MultibyteAsn1I.isa, a2);
    v8 = 0;
    v7 = 0xFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  v9 = &buffer[v8];
  v10 = buffer[v8];
  v11 = v10;
  if (v10 < 0)
  {
    v13 = v10 & 0x7F;
    if ((v11 & 0x7F) != 0)
    {
      v14 = 0;
      v11 = 0;
      do
      {
        v15 = v11 << 8;
        if (!v14)
        {
          v15 = v11;
        }

        v11 = v15 | v9[++v14];
      }

      while (v13 != v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v13 + 1);
  }

  else
  {
    v12 = 1;
  }

  if (v6 > 0x3F)
  {
LABEL_22:
    v16 = &off_1E84AB6F8;
    goto LABEL_23;
  }

  if (v7 > 15)
  {
    if (v7 != 17)
    {
      if (v7 == 16)
      {
        v16 = off_1E84AB6E8;
        v7 = 16;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v16 = off_1E84AB6F0;
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 == 4)
      {
        v16 = off_1E84AB6E0;
        v7 = 4;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v16 = off_1E84AB6D8;
    v7 = 2;
  }

LABEL_23:
  v17 = [objc_alloc(*v16) _initWithID:v7 class:v6 >> 6 length:v11 content:&v9[v12] opaque:opaqueCopy];

  return v17;
}

@end