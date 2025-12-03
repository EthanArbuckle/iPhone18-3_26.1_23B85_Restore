@interface asn1ReceiptToken
+ (id)readFromBuffer:(const char *)buffer;
- (NSString)stringValue;
- (id)_initWithType:(unint64_t)type typeVersion:(unint64_t)version contentToken:(id)token;
- (unint64_t)integerValue;
- (void)dealloc;
@end

@implementation asn1ReceiptToken

- (id)_initWithType:(unint64_t)type typeVersion:(unint64_t)version contentToken:(id)token
{
  v11.receiver = self;
  v11.super_class = asn1ReceiptToken;
  v8 = [(asn1ReceiptToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mType = type;
    v8->mTypeVersion = version;
    v8->mContentToken = token;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = asn1ReceiptToken;
  [(asn1ReceiptToken *)&v3 dealloc];
}

+ (id)readFromBuffer:(const char *)buffer
{
  v3 = [asn1Token readTokenFromBuffer:buffer];
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

  content = [v4 content];
  v6 = [v4 length];
  value = [v3 value];
  if (value > 0x18)
  {
    return 0;
  }

  if (((1 << value) & 0x1E1FF1F) != 0)
  {
    v8 = [asn1Token readTokenFromBuffer:content + v6];
    if ([v8 identifier] != 4 || objc_msgSend(v8, "tokenClass") || !v8)
    {
      return 0;
    }
  }

  else
  {
    if (((1 << value) & 0xE0) == 0)
    {
      return 0;
    }

    v8 = [asn1Token readOpaqueTokenFromBuffer:content + v6];
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

  value = [(asn1Token *)self->mContentToken value];
  if ([value tokenClass] || objc_msgSend(value, "identifier") != 2)
  {
    return 0xFFFFLL;
  }

  return [value value];
}

@end