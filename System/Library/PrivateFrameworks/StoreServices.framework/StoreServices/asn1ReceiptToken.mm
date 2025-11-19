@interface asn1ReceiptToken
+ (id)readFromBuffer:(const char *)a3;
- (NSString)stringValue;
- (id)_initWithType:(unint64_t)a3 typeVersion:(unint64_t)a4 contentToken:(id)a5;
- (unint64_t)integerValue;
- (void)dealloc;
@end

@implementation asn1ReceiptToken

- (id)_initWithType:(unint64_t)a3 typeVersion:(unint64_t)a4 contentToken:(id)a5
{
  v11.receiver = self;
  v11.super_class = asn1ReceiptToken;
  v8 = [(asn1ReceiptToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mType = a3;
    v8->mTypeVersion = a4;
    v8->mContentToken = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = asn1ReceiptToken;
  [(asn1ReceiptToken *)&v3 dealloc];
}

+ (id)readFromBuffer:(const char *)a3
{
  v3 = [asn1Token readTokenFromBuffer:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = +[asn1Token readTokenFromBuffer:](asn1Token, "readTokenFromBuffer:", [v3 content] + objc_msgSend(v3, "length"));
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [v4 content];
  v6 = [v4 length];
  v7 = [v3 value];
  if (v7 > 0x18)
  {
    return 0;
  }

  if (((1 << v7) & 0x1E1FF1F) != 0)
  {
    v8 = [asn1Token readTokenFromBuffer:v5 + v6];
    if ([v8 identifier] != 4 || objc_msgSend(v8, "tokenClass") || !v8)
    {
      return 0;
    }
  }

  else
  {
    if (((1 << v7) & 0xE0) == 0)
    {
      return 0;
    }

    v8 = [asn1Token readOpaqueTokenFromBuffer:v5 + v6];
    if (!v8)
    {
      return 0;
    }
  }

  v9 = -[asn1ReceiptToken _initWithType:typeVersion:contentToken:]([asn1ReceiptToken alloc], "_initWithType:typeVersion:contentToken:", [v3 value], objc_msgSend(v4, "value"), v8);

  return v9;
}

- (NSString)stringValue
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mContentToken = self->mContentToken;

  return [(asn1Token *)mContentToken stringValue];
}

- (unint64_t)integerValue
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0xFFFFLL;
  }

  v3 = [(asn1Token *)self->mContentToken value];
  if ([v3 tokenClass] || objc_msgSend(v3, "identifier") != 2)
  {
    return 0xFFFFLL;
  }

  return [v3 value];
}

@end