@interface asn1SequenceToken
- (id)_initWithID:(unint64_t)a3 class:(unsigned __int8)a4 length:(unint64_t)a5 content:(const char *)a6 opaque:(BOOL)a7;
- (id)nextToken;
@end

@implementation asn1SequenceToken

- (id)_initWithID:(unint64_t)a3 class:(unsigned __int8)a4 length:(unint64_t)a5 content:(const char *)a6 opaque:(BOOL)a7
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = asn1SequenceToken;
  result = [(asn1SequenceToken *)&v13 init:a3];
  if (a3 != 16 || v9)
  {
    v12 = result;
    return 0;
  }

  else if (result)
  {
    *(result + 8) = 0;
    *(result + 2) = 16;
    *(result + 3) = a5;
    *(result + 4) = a6;
    *(result + 5) = a6;
  }

  return result;
}

- (id)nextToken
{
  mReadPointer = self->mReadPointer;
  v4 = [(asn1Token *)self content];
  if (mReadPointer >= &v4[[(asn1Token *)self length]])
  {
    return 0;
  }

  v5 = [asn1Token readTokenFromBuffer:self->mReadPointer];
  self->mReadPointer = [v5 content];
  self->mReadPointer += [v5 length];
  return v5;
}

@end