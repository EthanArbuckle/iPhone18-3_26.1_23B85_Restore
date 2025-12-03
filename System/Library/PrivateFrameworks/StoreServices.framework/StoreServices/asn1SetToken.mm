@interface asn1SetToken
- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque;
- (id)nextToken;
@end

@implementation asn1SetToken

- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque
{
  classCopy = class;
  v13.receiver = self;
  v13.super_class = asn1SetToken;
  result = [(asn1SetToken *)&v13 init:d];
  if (d != 17 || classCopy)
  {
    v12 = result;
    return 0;
  }

  else if (result)
  {
    *(result + 8) = 0;
    *(result + 2) = 17;
    *(result + 3) = length;
    *(result + 4) = content;
    *(result + 5) = content;
  }

  return result;
}

- (id)nextToken
{
  mReadPointer = self->mReadPointer;
  content = [(asn1Token *)self content];
  if (mReadPointer >= &content[[(asn1Token *)self length]])
  {
    return 0;
  }

  v5 = [asn1Token readTokenFromBuffer:self->mReadPointer];
  self->mReadPointer = [v5 content];
  self->mReadPointer += [v5 length];
  return v5;
}

@end