@interface asn1OSToken
- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque;
- (id)stringValue;
- (void)dealloc;
@end

@implementation asn1OSToken

- (id)_initWithID:(unint64_t)d class:(unsigned __int8)class length:(unint64_t)length content:(const char *)content opaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  classCopy = class;
  v16.receiver = self;
  v16.super_class = asn1OSToken;
  v12 = [(asn1OSToken *)&v16 init];
  v13 = v12;
  if (d != 4 || classCopy)
  {
    v14 = v12;
    return 0;
  }

  else if (v12)
  {
    v12->super.mClass = 0;
    v12->super.mIdentifier = 4;
    v12->super.mLength = length;
    v12->super.mContent = content;
    if (opaqueCopy)
    {
      v12->mValue = 0;
    }

    else
    {
      v12->mValue = [asn1Token readTokenFromBuffer:content];
    }
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = asn1OSToken;
  [(asn1OSToken *)&v3 dealloc];
}

- (id)stringValue
{
  v3 = 4 * ([(asn1Token *)self->mValue identifier]== 12);
  if ([(asn1Token *)self->mValue identifier]== 22)
  {
    v3 = 1;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:-[asn1Token content](self->mValue length:"content") encoding:{-[asn1Token length](self->mValue, "length"), v3}];

  return v4;
}

@end